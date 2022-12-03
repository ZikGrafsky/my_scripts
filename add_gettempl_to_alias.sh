#!/bin/bash

cp getTemplate.sh ~/.gettemplate
printf "└─ \033[32;1mgetTemplate copied to ~/\033[0m\n"
chmod 777 ~/.gettemplate
printf "alias mkt=\"sh ~/.gettemplate\"" >> ~/.bashrc
printf "└─ \033[32;1malias mkt has been added. Available options: mainc/maincc/make/script.\033[0m"