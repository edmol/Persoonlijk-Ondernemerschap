#!/bin/bash
cd '/var/www//Rscripts/';
echo 'starten R script' ;
#
# Roep vanuit deze directory het script aan welke uitgevoerd moet worden.
#
#  --- Test je communicatie profiel ----
#
/usr/bin/R CMD BATCH run-survey-82967.R;
/usr/bin/R CMD BATCH run-average-82967.R;
#
# --- Test je kennis van communicatieve omgangsvormen ---
#
/usr/bin/R CMD BATCH run-survey-24386.R 
/usr/bin/R CMD BATCH run-average-24386.R
#
# --- Test je wijze van omgaan met conflicten ---
#
/usr/bin/R CMD BATCH run-survey-17746.R
#
# --- Test je geloofwaardigheid ---
#
/usr/bin/R CMD BATCH run-survey-29985.R
#
# --- Test je persoonlijke en zakelijke stress ---
#
/usr/bin/R CMD BATCH run-survey-43999.R
#
# --- Test je vertrouwen in onderlinge relaties ---
#
/usr/bin/R CMD BATCH run-survey-27137.R
#
# --- Test je taak en relatiegerichtheid als leidinggevende ---
#
/usr/bin/R CMD BATCH run-survey-89391.R
#
# --- Test je efficiënte tijdsbesteding als verkoper
#
/usr/bin/R CMD BATCH run-survey-28553.R
#
/usr/bin/R CMD BATCH ios-mutaties.R
#
/usr/bin/R CMD BATCH pre-processing.R
#
/usr/bin/R CMD BATCH team-processing.R
#
/usr/bin/R CMD BATCH mwb-processing.R
#
chmod -R 777 /var/www/4u-change.com/web/wp-content/gallery/porapporten
#
#
#
# Maak status rapportage aan
#
#
#
cd '/var/www/4u-change.com/web/4u-changeeddaggie2011';
/usr/bin/R CMD Sweave Reflectie-status.Rnw >/dev/null
pdflatex Reflectie-status.tex >/dev/null
pdflatex Reflectie-status.tex >/dev/null
