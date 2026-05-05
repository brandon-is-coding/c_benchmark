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
	for(int i=0;i<n;i++){
		C[i] = A[i] + B[i];
	}
	return C;
}

int* vec_add3(int* A,int* B,int* C,int n){
	for(int i=0;i<n;i+=2){
		C[i] = A[i] + B[i];
		C[i+1] = A[i+1] + B[i+1];
	}
	return C;
}

void benchmark1(){
	struct timespec start, end;
	double elapsed;

	int n=10000;
	int trials = 1000;
	int* A = malloc(sizeof(int)*n);
	int* B = malloc(sizeof(int)*n);
	for(int i=0;i<n;i++){
		A[i] = rand() % 1000;
		B[i] = rand() % 1000;
	} 

	printf("Benchmark1: %d additions\n",n*trials);
	printf("A,B are 32bit integer arrays of length %d, taking %lu bytes each\n",n,sizeof(int)*n);



	//BENCHMARK CODE FOR vec_add1
	clock_gettime(CLOCK_MONOTONIC, &start);
	for(int i=0;i<trials;i++){
		int* C=vec_add1(A,B,n);
		free(C);
	}
	clock_gettime(CLOCK_MONOTONIC, &end);
	elapsed = ((end.tv_sec - start.tv_sec) + (end.tv_nsec - start.tv_nsec) / (1e9));
	printf("vec_add1 took %f seconds\n",elapsed);


	//BENCHMARK CODE FOR vec_add2
	clock_gettime(CLOCK_MONOTONIC, &start);
	int *C = malloc(sizeof(int) * n);
	for(int i=0;i<trials;i++){
		C=vec_add2(A,B,C,n);
	}
	free(C);
	clock_gettime(CLOCK_MONOTONIC, &end);
	elapsed = ((end.tv_sec - start.tv_sec) + (end.tv_nsec - start.tv_nsec) / (1e9));
	printf("vec_add2 took %f seconds\n",elapsed);

	
	//BENCHMARK code for vec_add3
	clock_gettime(CLOCK_MONOTONIC, &start);
	C = malloc(sizeof(int) * n);
	for(int i=0;i<trials;i++){
		C=vec_add3(A,B,C,n);
	}
	free(C);
	clock_gettime(CLOCK_MONOTONIC, &end);
	elapsed = ((end.tv_sec - start.tv_sec) + (end.tv_nsec - start.tv_nsec) / (1e9));
	printf("vec_add3 took %f seconds\n",elapsed);
	

	return;
}


int main(){
	// printf("%lu",sizeof)
	benchmark1();
	return 0;
}
