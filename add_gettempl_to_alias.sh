#!/bin/bash

cp getTemplate.sh ~/.gettemplate
echo "getTemplate copied to ~/"
chmod 777 ~/.gettemplate
printf "alias mkt=\"sh ~/.gettemplate\"" >> ~/.bashrc
echo "alias mkt has been added. Available options: mainc/maincc/make/script"