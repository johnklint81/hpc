#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <omp.h>
#include <string.h>

#define CHUNK_SIZE 10000
#define N_BINS 3465 // Max distance is sqrt( 3 * [10-(-10)]^2) = 34.641
#define SCALE_FACTOR 1000
#define PRECISION 100 // For fixed-point representation (2 decimal places) 

// 3 * 2 byte = 6 bytes = 48 bit
typedef struct {
  short int x;
  short int y;
  short int z;
} Point;


int get_distance(Point p1, Point p2) {
  int distance = round(sqrt(pow(p1.x - p2.x, 2) + 
                            pow(p1.y - p2.y, 2) + 
                            pow(p1.z - p2.z, 2)) / SCALE_FACTOR * PRECISION);
  return distance;
}

int read_data(const char *filename, Point *points) {
  FILE *file = fopen(filename, "r");
  int count = 0;
  float x, y, z;
  while (fscanf(file, "%f %f %f", &x, &y, &z) == 3) {
     // Convert to integer by multiplying by 1000, short int size: 2 bytes
      points[count].x = (short int)(x * SCALE_FACTOR);
      points[count].y = (short int)(y * SCALE_FACTOR);
      points[count].z = (short int)(z * SCALE_FACTOR);
      count++;
    }
  fclose(file);
  return count;
}

void print_result(int *distance_count) {
  // Output results
  for (int i = 0; i < N_BINS; i++) {
    if (distance_count[i] > 0) {
        printf("%05.2f %d\n", i / (float)PRECISION, distance_count[i]);
    }
  }
}

int main(int argc, char *argv[]) {
  int num_threads = 1;

  // Check if the correct number of arguments is provided
  if (argc != 2 || strncmp(argv[1], "-t", 2) != 0) {
    fprintf(stderr, "Usage: %s -t<num_threads>\n", argv[0]);
    return EXIT_FAILURE;
  }

  // Get the number of threads from argv[1]
  num_threads = atoi(argv[1] + 2); // pointer to *argv + 2, skip -t
  // Ensure num_threads is greater than 0
  if (num_threads <= 0) {
    fprintf(stderr, "Number of threads must be greater than 0.\n");
    return EXIT_FAILURE;
  }

  omp_set_num_threads(num_threads);
  // set stack size if necessary, default is 5 MiB
  // omp_set_stacksize(size_t size)
  int actual_threads = omp_get_max_threads();
  printf("Using %d thread(s).\n", actual_threads);

  Point points[CHUNK_SIZE];
  int distance_count[N_BINS] = {0};
  int num_points = read_data("sample.txt", points);
  printf("Number of points read: %d\n", num_points);

  // Parallel construct that applies parallelism across nested loops.
  // Time if this is beneficial
  #pragma omp parallel for collapse(2)
  for (int i = 0; i < num_points; i++) {
    for (int j = i + 1; j < num_points; j++) {  
      int dist = get_distance(points[i], points[j]);
      if (dist < N_BINS) {
        // This is a thread safe update of the distance_count
        #pragma omp atomic
        distance_count[dist]++;
      }
    }
  }
print_result(distance_count);
}



