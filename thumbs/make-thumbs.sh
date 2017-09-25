#!/bin/bash
for i in `ls ../images/about`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/about/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 about/"$i"; done
for i in `ls ../images/artist-bio`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/artist-bio/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 artist-bio/"$i"; done
for i in `ls ../images/les-lumieres`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/les-lumieres/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 les-lumieres/"$i"; done
for i in `ls ../images/the-plate-throwers`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/the-plate-throwers/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 the-plate-throwers/"$i"; done
for i in `ls ../images/oceans-of-notions`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/oceans-of-notions/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 oceans-of-notions/"$i"; done
for i in `ls ../images/parchemins`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/parchemins/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 parchemins/"$i"; done
for i in `ls ../images/return-to-form`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/return-to-form/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 return-to-form/"$i"; done
for i in `ls ../images/surface-details`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/surface-details/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 surface-details/"$i"; done
