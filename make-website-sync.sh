#!/bin/bash
rsync -avz --exclude='.git/' -e ssh . rosyl001@shell.guardedhost.com:~/../more-material.com/www
