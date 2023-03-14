#!/bin/sh
#################################################################
# Project:	Lab_Db2_Ansible                                     #
# Skript:	01_setup.sh                       #
# Author:   Stefan Hummel                                       #
# Company:	IBM Germany                                         #
# Creation: 14.03.2023                                          #
#                                                               #
# Description :                                                 #
# Update the environment for user root. Run this script         #
# before you start the exercises.                               #
#                                                               #
# History:                                                      #
# --------                                                      #
# 14.03.2023  S.Hummel  first version                           #
#                                                               #
#################################################################

echo "execute some commands"
ssh root@localhost ' touch /tmp/01_root.txt '
ssh db2inst1@localhost ' touch /tmp/01_db2inst1.txt '
