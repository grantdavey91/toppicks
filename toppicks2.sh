#!/bin/bash
#Delete existing file if it exists
rm coming-soon-to-sky-cinema-premiere

#Grab the page we want
wget http://www.sky.com/tv/channel/skycinema/gallery/coming-soon-to-sky-cinema-premiere

#Find all the links to the images we want and dump them in to links.txt
cat coming-soon-to-sky-cinema-premiere | grep -Eo "(http|https)://www.asset1.net/tv/pictures/movie/[a-zA-Z0-9./?=_-]*.jpg" | sort | uniq > links.txt
sed -i 's/.net/.net.rsz.io/g' links.txt

#Pick random line in links.txt and download it
linenum=$(( ( RANDOM % 40 )  + 1 ))
link=$(sed -n ${linenum}p "links.txt")
name=toppicks1
extension=.png
resize="?w=383&h=244&mode=stretch&format=png"
wget $link$resize -O /usr/share/enigma2/slyk-1-hd/skyicons/$name$a$extension

#Pick random line in links.txt and download it
linenum=$(( ( RANDOM % 40 )  + 1 ))
link=$(sed -n ${linenum}p "links.txt")
name=toppicks3
extension=.png
resize="?w=183&h=116&mode=stretch&format=png"
wget $link$resize -O /usr/share/enigma2/slyk-1-hd/skyicons/$name$a$extension

#Pick random line in links.txt and download it
linenum=$(( ( RANDOM % 40 )  + 1 ))
link=$(sed -n ${linenum}p "links.txt")
name=toppicks4
extension=.png
resize="?w=183&h=116&mode=stretch&format=png"
wget $link$resize -O /usr/share/enigma2/slyk-1-hd/skyicons/$name$a$extension

#Pick random line in links.txt and download it
linenum=$(( ( RANDOM % 40 )  + 1 ))
link=$(sed -n ${linenum}p "links.txt")
name=toppicks6
extension=.png
resize="?w=183&h=116&mode=stretch&format=png"
wget $link$resize -O /usr/share/enigma2/slyk-1-hd/skyicons/$name$a$extension