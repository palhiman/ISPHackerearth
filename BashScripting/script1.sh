#!/bin/bash

echo "Enter the starting IP address:"
read FirstIp
echo "Enter the last IP address:"
read LastIp
echo "Enter the port number you want ot scan for:"
read Port

nmpa -sT -v $FirstIp-$LastIp -p $Port -oG huha

cat huha | grep open > Aloha2
cat Aloha2 | cut -f -d ":" | cut -f1 -d "(" > hahaha
cat hahaha
