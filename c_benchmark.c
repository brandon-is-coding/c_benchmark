#include<time.h>
#include<stdio.h>
#include<stdlib.h>

int* vec_add1(int* A,int* B,int n){
	int *C = malloc(sizeof(int) * n);
	for(int i=0;i<n;i++){
		C[i] = A[i] + B[i];
	}
	return C;
}

int* vec_add2(int* A,int* B,int* C,int n){
	// int *C = malloc(sizeof(int) * n);
	for(int i=0;i<n;i++){
		C[i] = A[i] + B[i];
	}
	return C;
}


int main(){
	struct timespec start, end;
	double elapsed;

	int n=10000000;
	int trials = 100;
	// printf("Running at %d CLOCKS PER SEC",CLOCKS_PER_SEC);

	int* A = malloc(sizeof(int)*n*trials);
	// int* B = malloc(sizeof(int)*n);
	for(int i=0;i<n*10;i++){
		A[i] = rand();
	} 

	clock_gettime(CLOCK_MONOTONIC, &start);
	// clock_t begin = clock();
	for(int i=0;i<trials;i++){
		int* C=vec_add1(A,A+(i*n),n);
		free((void*)C);
	}
	// clock_t end = clock();
	clock_gettime(CLOCK_MONOTONIC, &end);

	// double time_spent = (double)(end - begin) / (CLOCKS_PER_SEC*trials);
	// printf("vec_add1 took %f seconds\n",time_spent);
	elapsed = ((end.tv_sec - start.tv_sec) + (end.tv_nsec - start.tv_nsec) / (1e9))/trials;
	printf("vec_add1 took %f seconds\n",elapsed);


	// begin = clock();
	int* C = malloc(sizeof(int) * n);

	clock_gettime(CLOCK_MONOTONIC, &start);
	for(int i=0;i<trials;i++){
		C = vec_add1(A,A,n);
	}
	// end = clock();
	clock_gettime(CLOCK_MONOTONIC, &end);
	free((void*)C);

	elapsed = ((end.tv_sec - start.tv_sec) + (end.tv_nsec - start.tv_nsec) / (1e9))/trials;
	// printf("vec_add1 took %f seconds\n",elapse
	// time_spent = (double)(end - begin) / (CLOCKS_PER_SEC*trials);
	printf("vec_add2 took %f seconds\n",elapsed);
	return 0;
}
