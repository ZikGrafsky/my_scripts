#!/bin/bash

if [ "$1" = "c" ]
then
  TEMPLATE="#include <stdio.h>\n\nint\tmain(int argc, char **argv){\n\treturn 0;\n}"
  if [ -z "$2" ]
  then
    printf "$TEMPLATE" > main.c
  else
    printf "$TEMPLATE" > $2.c
  fi
elif [ "$1" = "cc" ]
then
  TEMPLATE="#include <iostream>//std in/out\n#include <memory>//for smart pointers\n\nusing namespace std;\n\nint\tmain(int argc, char **argv){\n\treturn 0;\n}"
  if [ -z "$2" ]
  then
    printf "$TEMPLATE" > main.cpp
  else
    printf "$TEMPLATE" > $2.cpp
  fi
elif [ "$1" = "make" ]
then
  printf "NAME=\n\nCC=clang\nFLG=-Wall -Wextra -Werror\nSRC=\n\nOBJ=\$(SRC:.c=.o)\n\nall: \$(SRC) \$(NAME)\n\t@echo \"\\\\033[32;1m───[.o]-files => o_files-dir\\\\033[0m\"\n\t@mkdir o_files\n\t@mv fncs/*.o o_files\n\t@mv gets/*.o o_files\n\t@mv *.o o_files\n\n\$(NAME): \$(OBJ)\n\t@echo \"\\\\033[32;1m└──Get object files\\\\033[0m\"\n\t@echo \"\\\\033[32;1m┌──Compile\\\\033[0m\"\n\t\$(CC) \$(FLG) \$(OBJ) -o \$@\n\n.cpp.o:\n\t\$(CC) \$(FLG) $< -o \$@\n\nclean:\n\t@echo \"\\\\033[32;1m───Object files have been removed\\\\033[0m\"\n\t@rm -rf o_files\n\nfclean: clean\n\t@rm \${NAME}\n\t@echo \"\\\\033[32;1m───The project has been cleared\\\\033[0m\"\n\nre: fclean all\n\n.PHONY:     all clean fclean re" > Makefile
elif [ "$1" = "script" ]
then
  printf "#!/bin/bash\n\n#insert your code here" > "$2".sh
else
  printf "Nothing to make"
fi