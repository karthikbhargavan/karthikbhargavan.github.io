#!/bin/bash
for i in `ls ../images/about`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/about/"$i" -quality 85 -resize 780x650\> about/"$i"; done
for i in `ls ../images/artist-bio`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/artist-bio/"$i" -quality 85 -resize 780x650\> artist-bio/"$i"; done
for i in `ls ../images/les-lumieres`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/les-lumieres/"$i" -quality 85 -resize 780x650\> les-lumieres/"$i"; done
for i in `ls ../images/the-plate-throwers`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/the-plate-throwers/"$i" -quality 85 -resize 780x650\> the-plate-throwers/"$i"; done
for i in `ls ../images/oceans-of-notions`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/oceans-of-notions/"$i" -quality 85 -resize 780x650\> oceans-of-notions/"$i"; done
for i in `ls ../images/parchemins`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/parchemins/"$i" -quality 85 -resize 780x650\> parchemins/"$i"; done
for i in `ls ../images/return-to-form`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/return-to-form/"$i" -quality 85 -resize 780x650\> return-to-form/"$i"; done
for i in `ls ../images/surface-details`; do /usr/local/Cellar/imagemagick/7.0.7-1/bin/convert ../images/surface-details/"$i" -quality 85 -resize 780x650\> surface-details/"$i"; done
