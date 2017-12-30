#!/bin/bash
for i in `ls ../images/about`; do convert ../images/about/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 about/"thumb-$i"; done
for i in `ls ../images/artist-bio`; do convert ../images/artist-bio/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 artist-bio/"thumb-$i"; done
for i in `ls ../images/les-lumieres`; do convert ../images/les-lumieres/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 les-lumieres/"thumb-$i"; done
for i in `ls ../images/the-plate-throwers`; do convert ../images/the-plate-throwers/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 the-plate-throwers/"thumb-$i"; done
for i in `ls ../images/oceans-of-notions`; do convert ../images/oceans-of-notions/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 oceans-of-notions/"thumb-$i"; done
for i in `ls ../images/parchemins`; do convert ../images/parchemins/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 parchemins/"thumb-$i"; done
for i in `ls ../images/return-to-form`; do convert ../images/return-to-form/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 return-to-form/"thumb-$i"; done
for i in `(cd ../images/surface-details && ls thumb-*)`; do convert ../images/surface-details/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 surface-details/"$i"; done
for i in `(cd ../images/les-lumieres && ls thumb-*)`; do convert ../images/les-lumieres/"$i" -thumbnail 100x80^ -gravity center -extent 100x80 les-lumieres/"$i"; done
