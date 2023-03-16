#################################################################
# Project:	IBM hands-on lab (Techzone)                         #
# Skript:	setup.sh                                              #
# Author:       Stefan Hummel                                   #
# Company:	IBM Germany                                         #
# Creation:     14.03.2023                                      #
#                                                               #
# Description :                                                 #
# Setup the Linux environment for a given hands-on lab.         #
#                                                               #
# History:                                                      #
# --------                                                      #
# 14.03.2023  S.Hummel  first version                           #
#                                                               #
#################################################################

usage()  
 {  
 echo "Usage: $0 <lab name>"  
 echo " "
 exit 1  
 }

if [ -z "$1" ]
  then
    echo "No argument supplied"
    usage
    exit
fi

P1=$1
SETUPFILE=01_setup.sh

# remove lab directory
if [ -d "$P1" ]
  then
    echo "Remove directory $P1..."
    rm -rf $P1
fi

# create lab directory
echo "Create directory $P1..."
mkdir $P1

# load repository from github.com
echo "Load github repository $P1..."
git clone https://github.com/stefanhummel/$P1

# make all .sh files executable
echo "Make scripts executable..."
find $P1 -type f -iname "*.sh" -exec chmod +x {} \;

if [ -d "$P1" ]
  then
    if [ -f "$P1/$SETUPFILE" ]
      then
        cd $P1
        ./$SETUPFILE
      fi
fi
