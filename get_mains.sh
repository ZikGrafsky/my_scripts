#!/bin/bash

printf "alias vlc=\'valgrind --leak-check=yes\'\n" >> ~/.bashrc
printf "alias imvc=\'printf \"#include <stdio.h>\\\n\\\nint\\\tmain(int argc, char **argv){\\\n\\\treturn 0;\\\n}\" > main.c\'\n" >> ~/.bashrc
printf "alias imvcc=\'printf \"#include <iostream>\\\n\\\nusing namespace std;\\\n\\\nint\\\tmain(int argc, char **argv){\\\n\\\treturn 0;\\\n}\" > main.cpp\'\n" >> ~/.bashrc
printf "This script will add an alias (in ~/.bashrc) to quickly create the main template files for c and cpp.\nJust type \033[32;1mimvc\033[0m or \033[32;1mimvcc\033[0m and you will get the \033[33;1mmain.c\033[0m and \033[33;1mmain.cpp\033[0m files completed"