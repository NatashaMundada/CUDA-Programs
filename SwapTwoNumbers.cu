%%writefile swap.cu
#include <iostream>
__global__ void add( int a, int b, int *c, int *d) {
  *c = b;
  *d = a;
}

int main( void ) {
  int c = 10, d = 11;
  int *dev_c, *dev_d;
  cudaMalloc((void**)&dev_c, sizeof(int));
  cudaMalloc((void**)&dev_d, sizeof(int));
  add<<<1,1>>>( c, d, dev_c, dev_d );

  cudaMemcpy( &c, dev_c, sizeof(int),cudaMemcpyDeviceToHost );
  cudaMemcpy( &d, dev_d, sizeof(int),cudaMemcpyDeviceToHost );

  printf( "%d %d", c, d);
  cudaFree( dev_c );
  cudaFree(dev_d);
  return 0;
}
