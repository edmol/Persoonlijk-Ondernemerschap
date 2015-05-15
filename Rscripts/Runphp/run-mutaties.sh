#!/bin/bash
cd '/var/www//Rscripts/';
# Roep vanuit deze directory het script aan welke uitgevoerd moet worden.
#
#  --- Test je communicatie profiel ----
#
/usr/bin/R CMD BATCH ios-mutaties.R;
