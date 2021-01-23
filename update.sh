#!/bin/bash

# echo $PATH

# script to update ubuntu -yy flag says yes to all
sudo apt update -yy
sudo apt dist-upgrade -yy

# remove unnecessary packages
sudo apt autoremove -yy

# unnecessary exit statement 
exit