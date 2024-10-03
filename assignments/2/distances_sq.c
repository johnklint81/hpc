#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <omp.h>
#include <string.h>

#define CHUNK_SIZE 100000
#define N_BINS 3465 // Max distance is sqrt( 3 * [10-(-10)]^2) = 34.641
#define SCALE_FACTOR 1000
#define MAX_DIST_SQ 1200
#define MAX_DIST_SQ_SCALED (MAX_DIST_SQ * SCALE_FACTOR * SCALE_FACTOR)
#define BIN_WIDTH MAX_DIST_SQ_SCALED / N_BINS
#define PRECISION 100 // For fixed-point representation (2 decimal places) 

// Structure to store 3D points
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

void print_result(int *distance_count, int *sq_bins) {
    for (int i = 0; i < N_BINS; i++) {
        if (distance_count[i] > 0) {
            double distance = (double)(sq_bins[i]) / (SCALE_FACTOR * SCALE_FACTOR); // Convert back to distance
            printf("%05.2f %d\n", sqrt(distance), distance_count[i]);
        }
    }
}

void compute_sq_bins(int *sq_bins) {
  float step_size = (float) (MAX_DIST_SQ * SCALE_FACTOR * SCALE_FACTOR) / (float)(N_BINS - 1);
  for (int i = 0; i < N_BINS; i++) {
    sq_bins[i] = (int) (i * step_size);

  }
}

float compute_step_size() {
    return (float)(MAX_DIST_SQ * SCALE_FACTOR * SCALE_FACTOR) / (N_BINS - 1);
}

int main(int argc, char *argv[]) {
    int num_threads = 1;
    num_threads = atoi(argv[1] + 2); // pointer to *argv + 2, skip -t
    omp_set_num_threads(num_threads);
    Point points[CHUNK_SIZE];
    int distance_count[N_BINS] = {0};
    int bins[N_BINS] = {0};
    int sq_bins[N_BINS] = {0};
    compute_sq_bins(sq_bins);
    int sq_bin_width = (int)MAX_DIST_SQ_SCALED / N_BINS;
    int num_points = read_data("cells", points);
    // Parallel construct that applies parallelism across nested loops.
    #pragma omp parallel
    {
        // Local distance count for each thread
        int local_distance_count[N_BINS] = {0};
        #pragma omp for collapse(2)
        for (int i = 0; i < num_points; i++) {
            for (int j = i + 1; j < num_points; j++) {
                // Calculate squared distance
                int dx = points[i].x - points[j].x;
                int dy = points[i].y - points[j].y;
                int dz = points[i].z - points[j].z;
                int dist_sq = dx * dx + dy * dy + dz * dz;
                // Compute the distance index (not taking square root;
                float step_size = compute_step_size();
                int dist_index = (int)(dist_sq / step_size);
                //int dist_index = (int) round(sqrtf(dist_sq) / SCALE_FACTOR * PRECISION);

                local_distance_count[dist_index]++;
            }
        }

        // Combine local counts into the global distance count
        #pragma omp critical
        {
            for (int i = 0; i < N_BINS; i++) {
                distance_count[i] += local_distance_count[i];
            }
        }
    }
    print_result(distance_count, sq_bins);
    return 0;
}
