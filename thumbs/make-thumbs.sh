#!/bin/bash
for i in `ls ../images/about`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/about/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 about/"thumb-$i"; done
for i in `ls ../images/artist-bio`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/artist-bio/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 artist-bio/"thumb-$i"; done
for i in `ls ../images/les-lumieres`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/les-lumieres/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 les-lumieres/"thumb-$i"; done
for i in `ls ../images/the-plate-throwers`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/the-plate-throwers/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 the-plate-throwers/"thumb-$i"; done
for i in `ls ../images/oceans-of-notions`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/oceans-of-notions/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 oceans-of-notions/"thumb-$i"; done
for i in `ls ../images/parchemins`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/parchemins/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 parchemins/"thumb-$i"; done
for i in `ls ../images/return-to-form`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/return-to-form/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 return-to-form/"thumb-$i"; done
for i in `(cd ../images/surface-details && ls thumb-*)`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/surface-details/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 surface-details/"$i"; done
