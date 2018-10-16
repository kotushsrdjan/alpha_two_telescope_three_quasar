# alpha_two_telescope_three_quasar
Quasar spectra and absorption profile fits of HE 1341−1020, PG 0117+213 and HE 2217−2818 for Two–telescope, supercalibrated sample of ∆α/α measurements and Srđan Kotuš PhD thesis.

This repository contains folder for each quasar with folders for each spectrograph, named using acronym name used in the thesis (UVES and HIRES).

Each of the spectrograph folders contains folder with the raw exposure files, UVES_popler log file (.upl) used with UVES_popler to produce final spectrum used in thesis and folder named as redshift of each absorption system analyzed in the thesis. The .upl file also contains information about final shifts and long-range distortion slopes for each exposure.

Folders named as redshift contain final.13 and final.18 files that show final fit in that absorption system and final set of iterations that led towards this fit. The absorption profile fit was run in VPFIT using the commented-out command in the first line of the final.13 file. 

These folders also contains vp_setup.dat and vp_splot.dat files which contain various parameters associated with VPFIT, as well as input atomic data file for VPFIT atom.dat file from the <a href="https://github.com/MTMurphy77/MMatomdat">repository</a> associated with <a href="http://adsabs.harvard.edu/abs/2014MNRAS.438..388M">Murphy & Berengut (2014, MNRAS, 438, 388, arXiv:1311.2949)</a>.
