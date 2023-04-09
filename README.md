# CUDA-Programs

This repository contains simple CUDA programs. I have been using Google Colab to write my CUDA programs. 
Use the following commands to run a program in Google Colab:-

1. !nvcc -arch=sm_37 -gencode=arch=compute_37,code=sm_37 <file_name>.cu -o <exe-name>
2. !./<exe-name>
