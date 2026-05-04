#include<stdlib.h>
int* vec_add1(int* A,int* B,int n){
	int *C = malloc(sizeof(int) * n);
	for(int i=0;i<n;i++){
		C[i] = A[i] + B[i];
	}
	return C;
}
int main(){
	return 0;
}