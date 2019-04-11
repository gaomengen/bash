#!/bin/bash

# example usage: . del_dir_under_dir.sh "node_modules"


# read the dir name needs to be deleted
$1

# show inode usage
df -hi | grep /home

# find dir and delete them
find "$PWD" -type d | grep $1 | xargs rm -rf 

# show inode usage agin
df -hi | grep /home
                    
