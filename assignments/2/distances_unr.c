#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <omp.h>
#include <string.h>

#define CHUNK_SIZE 1000000 // Not implemented
#define N_BINS 3465 // Max distance is sqrt( 3 * [10-(-10)]^2) = 34.641
#define SCALE_FACTOR 1000
#define PRECISION 100 // For fixed-point representation (2 decimal places) 
#define UNROLL_FACTOR 4

// Struct to store 3D points
typedef struct {
  short int x;
  short int y;
  short int z;
} Point;

int read_data(const char *filename, Point *points) {
  FILE *file = fopen(filename, "r");
  float x, y, z;
  int count = 0;
  while (fscanf(file, "%f %f %f", &x, &y, &z) == 3) {
    // Convert to integer by multiplying by 1000
    points[count].x = (short int)(x * SCALE_FACTOR);
    points[count].y = (short int)(y * SCALE_FACTOR);
    points[count].z = (short int)(z * SCALE_FACTOR);
    count++;
  }
  fclose(file);
  return count;
}

int get_lines(FILE *file) {
  int chars_per_line = 23;
  fseek(file, 0, SEEK_END);
  int size = ftell(file);
  int n_lines = size / chars_per_line;
  return n_lines;
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
  num_threads = atoi(argv[1] + 2);
  omp_set_num_threads(num_threads);
  Point points[CHUNK_SIZE];
  int global_distance_count[N_BINS] = {0};
  int num_points = read_data("cells", points);
  int remainder = num_points % UNROLL_FACTOR;

  #pragma omp parallel
  {
    int local_distance_count[N_BINS] = {0};
    #pragma omp for
    for (int i = 0; i < num_points; i++) {
      for (int j = i + 1; j + UNROLL_FACTOR - 1 < num_points - remainder; j += UNROLL_FACTOR) {
        
        int dx1 = points[i].x - points[j].x;
        int dy1 = points[i].y - points[j].y;
        int dz1 = points[i].z - points[j].z;

        int dx2 = points[i].x - points[j + 1].x;
        int dy2 = points[i].y - points[j + 1].y;
        int dz2 = points[i].z - points[j + 1].z;

        int dx3 = points[i].x - points[j + 2].x;
        int dy3 = points[i].y - points[j + 2].y;
        int dz3 = points[i].z - points[j + 2].z;

        int dx4 = points[i].x - points[j + 3].x;
        int dy4 = points[i].y - points[j + 3].y;
        int dz4 = points[i].z - points[j + 3].z;

        int dist_sq1 = dx1 * dx1 + dy1 * dy1 + dz1 * dz1;
        int dist_sq2 = dx2 * dx2 + dy2 * dy2 + dz2 * dz2;
        int dist_sq3 = dx3 * dx3 + dy3 * dy3 + dz3 * dz3;
        int dist_sq4 = dx4 * dx4 + dy4 * dy4 + dz4 * dz4;

        int dist_index1 = (int)(sqrtf(dist_sq1) / SCALE_FACTOR * PRECISION);
        int dist_index2 = (int)(sqrtf(dist_sq2) / SCALE_FACTOR * PRECISION);  
        int dist_index3 = (int)(sqrtf(dist_sq3) / SCALE_FACTOR * PRECISION);  
        int dist_index4 = (int)(sqrtf(dist_sq4) / SCALE_FACTOR * PRECISION);  

        if (dist_index1 < N_BINS) local_distance_count[dist_index1]++;
        if (dist_index2 < N_BINS) local_distance_count[dist_index2]++;
        if (dist_index3 < N_BINS) local_distance_count[dist_index3]++;
        if (dist_index4 < N_BINS) local_distance_count[dist_index4]++;
      }
      
      // Handle remainder points
      for (int j = num_points - remainder; j < num_points; j++) {
        int dx = points[i].x - points[j].x;
        int dy = points[i].y - points[j].y;
        int dz = points[i].z - points[j].z;
        int dist_sq = dx * dx + dy * dy + dz * dz;
        int dist_index = (int)(sqrtf(dist_sq) / SCALE_FACTOR * PRECISION);
        if (dist_index < N_BINS) {
          local_distance_count[dist_index]++;
        }
      }
    }

    #pragma omp critical
    {
      for (int i = 0; i < N_BINS; i++) {
        global_distance_count[i] += local_distance_count[i];
      }
    }
  }

  print_result(global_distance_count);
  return 0;
}

