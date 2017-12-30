#!/bin/bash
for i in `ls ../images/about`; do convert ../images/about/"$i" -quality 85 -resize 780x650\> about/"$i"; done
for i in `ls ../images/artist-bio`; do convert ../images/artist-bio/"$i" -quality 85 -resize 780x650\> artist-bio/"$i"; done
for i in `ls ../images/les-lumieres`; do convert ../images/les-lumieres/"$i" -quality 85 -resize 780x650\> les-lumieres/"$i"; done
for i in `ls ../images/the-plate-throwers`; do convert ../images/the-plate-throwers/"$i" -quality 85 -resize 780x650\> the-plate-throwers/"$i"; done
for i in `ls ../images/oceans-of-notions`; do convert ../images/oceans-of-notions/"$i" -quality 85 -resize 780x650\> oceans-of-notions/"$i"; done
for i in `ls ../images/parchemins`; do convert ../images/parchemins/"$i" -quality 85 -resize 780x650\> parchemins/"$i"; done
for i in `ls ../images/return-to-form`; do convert ../images/return-to-form/"$i" -quality 85 -resize 780x650\> return-to-form/"$i"; done
for i in `ls ../images/surface-details`; do convert ../images/surface-details/"$i" -quality 85 -resize 780x650\> surface-details/"$i"; done
