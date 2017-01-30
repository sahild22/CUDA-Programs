/*
 * Created by Sahil Diwan on 01/30/2017
 */

#include <stdio.h>

#define NUM_BLOCKS 16
#define BLOCK_WIDTH 1

__global__ void hello(){
	printf("Hello world! I'm a thread in block %d\n", blockIdx.x);
}

int main(int args, char **argv){
	// Launch the kernel
	hello<<<NUM_BLOCKS, BLOCK_WIDTH>>>();

	// 	Force printf()s to flush
	cudaDeviceSynchronize();

	printf("That's all!!\n");

	return 0;
}
