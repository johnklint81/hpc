#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <omp.h>
#include <string.h>

#define MAX_CELLS 10000
#define DISTANCE_BINS 200 // Assuming distances will not exceed 200.00
#define PRECISION 100 // For fixed-point representation (2 decimal places)

// Struct to hold 3D coordinates
typedef struct {
    int x;
    int y;
    int z;
} Point;

// Function to calculate distance (returns as fixed-point)
int calculate_distance(Point p1, Point p2) {
    return (int)round(sqrt(pow(p1.x - p2.x, 2) + pow(p1.y - p2.y, 2) + pow(p1.z - p2.z, 2)) * PRECISION);
}

// Function to read cells from a file
int read_cells(const char *filename, Point *points) {
    FILE *file = fopen(filename, "r");
    if (!file) {
        perror("Error opening file");
        return 0;
    }
    int count = 0;
    while (fscanf(file, "%d %d %d", &points[count].x, &points[count].y, &points[count].z) == 3) {
        count++;
    }
    fclose(file);
    return count;
}


int main(int argc, char *argv[]) {
    int num_threads = 1; // Default number of threads

    // Check if the correct number of arguments is provided
    if (argc != 2 || strncmp(argv[1], "-t", 2) != 0) {
        fprintf(stderr, "Usage: %s -t<num_threads>\n", argv[0]);
        return EXIT_FAILURE;
    }

    // Get the number of threads from argv[1]
    num_threads = atoi(argv[1] + 2); // Skip the "-t" part

    // Ensure num_threads is greater than 0
    if (num_threads <= 0) {
        fprintf(stderr, "Number of threads must be greater than 0.\n");
        return EXIT_FAILURE;
    }

    // Set the number of threads for OpenMP
    omp_set_num_threads(num_threads);
    
    // Print the number of threads to verify
    printf("Using %d thread(s).\n", num_threads);

    Point points[MAX_CELLS];
    int distance_count[DISTANCE_BINS] = {0};
    int num_points = read_cells("sample.txt", points);

    #pragma omp parallel for collapse(2)
    for (int i = 0; i < num_points; i++) {
        for (int j = i + 1; j < num_points; j++) {
            int dist = calculate_distance(points[i], points[j]);
            if (dist < DISTANCE_BINS) {
                #pragma omp atomic
                distance_count[dist]++;
            }
        }
    }

    // Output results
    for (int i = 0; i < DISTANCE_BINS; i++) {
        if (distance_count[i] > 0) {
            printf("%.2f %d\n", i / (float)PRECISION, distance_count[i]);
        }
    }

    return EXIT_SUCCESS;
}

