#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <omp.h>
#include <string.h>

<<<<<<< HEAD
#define CHUNK_SIZE 1000000 // Not implemented.
#define N_BINS 3465 // Max distance is sqrt( 3 * [10-(-10)]^2) = 34.641.
=======
#define CHUNK_SIZE 120000 // Not implemented
#define N_BINS 3465 // Max distance is sqrt( 3 * [10-(-10)]^2) = 34.641
>>>>>>> unroll2
#define SCALE_FACTOR 1000
#define PRECISION 100 // For fixed-point representation (2 decimal places).

<<<<<<< HEAD
// Struct to store 3D points.
=======
// Struct to store 3D points
// Buffering for cache lines did not work, without 2.2 s, with 2.5 s
// Read in chunks so that each chunk fits into L
// Read two chunks, compare distances of all points in one chunk to other chunk, 
// move to next chunk, repeat like for a single point. If all chunks and resulting 
// values fit into cache, --> speedup!
>>>>>>> unroll2
typedef struct {
  short int x;
  //char buf1[62];
  short int y;
  //char buf2[62];
  short int z;
  //char buf3[62];
} Point;

int read_data(const char *filename, Point *points) {
  FILE *file = fopen(filename, "r");
  float x, y, z;
  int count = 0;
  while (fscanf(file, "%f %f %f", &x, &y, &z) == 3) {
    // Convert to integer by multiplying by 1000.
    points[count].x = (short int)(x * SCALE_FACTOR);
    points[count].y = (short int)(y * SCALE_FACTOR);
    points[count].z = (short int)(z * SCALE_FACTOR);
    count++;
  }
  fclose(file);
  return count;
}

void print_result(int *distance_count) {
  for (short int i = 0; i < N_BINS; i++) {
    if (distance_count[i] > 0) {
        printf("%05.2f %d\n", i / (float)PRECISION, distance_count[i]);
    }
  }
}

int main(int argc, char *argv[]) {
  int num_threads = 1;
  num_threads = atoi(argv[1] + 2); // pointer to *argv + 2, skip -t
  omp_set_num_threads(num_threads);
//  Point points[CHUNK_SIZE];
  Point *points = malloc(CHUNK_SIZE * sizeof(Point));
  int global_distance_count[N_BINS] = {0};
  int num_points = read_data("cells", points);

    // Apply parallelism across nested loops.
    #pragma omp parallel
    {
      // Local distance count for each thread.
      int local_distance_count[N_BINS] = {0};
      // Removing collapse(2) made it fast enough to pass.
<<<<<<< HEAD
      // Unroll and use vectorisation here
      // One for loop for even divisible chunks and one for the remainder
      // Beware when using collapse, int may not be large enough to contain
      // the counter of the resulting loop
      #pragma omp for
      for (int i = 0; i < num_points; i++) {
        for (int j = i + 1; j < num_points; j++) {
=======
      // adding simd made it faster!  
      #pragma omp for simd collapse(2)
      for (long int i = 0; i < num_points; i++) {
        // No change here
        for (long int j = i + 1; j < num_points; j++) {
>>>>>>> unroll2

          int tmp_point_x = points[i].x;
          int tmp_point_y = points[i].y;
          int tmp_point_z = points[i].z;
          int dx = tmp_point_x - points[j].x;
          int dy = tmp_point_y - points[j].y;
          int dz = tmp_point_z - points[j].z;

          int dist_sq = dx * dx + dy * dy + dz * dz;
          int dist_index = (int)(sqrtf(dist_sq) / SCALE_FACTOR * PRECISION);
          
          if (dist_index < N_BINS) {
              local_distance_count[dist_index]++;
          }
        }
      }
      // Very little difference between these three alternatives...
      /*
      #pragma omp parallel for shared(local_distance_count) reduction(+:global_distance_count[:N_Bins])
      for (int i = 0; i < N_BINS; i++) {
        global_distance_count[i] += local_distance_count[i];
      }
      */
      for (int i = 0; i < N_BINS; i++) {
        #pragma omp atomic 
        global_distance_count[i] += local_distance_count[i];
      }
      // Combine local counts into the global distance count.
      /*#pragma omp critical
      {
      for (int i = 0; i < N_BINS; i++) {
        distance_count[i] += local_distance_count[i];
      }
    }*/
  }
  print_result(global_distance_count);
  free(points);
  return 0;
}

