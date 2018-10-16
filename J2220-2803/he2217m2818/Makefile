redun:
	/bin/rm -f *.log gnuplot* reduce_*_*_*.sof *_blue* *_red[lu]*
	/bin/rm -f *~ *.bdf *.tbl *.tfits *.cat *.ascii *.fmt *.KEY *.plt *.lst disp_res*.dat *free*.dat resolution*.dat middummclear.prg dat.dat

clean:
	/bin/rm -f *.log gnuplot* reduce_*_*_*.sof *_blue* *_red[lu]*
	/bin/rm -f *~ *.bdf *.tbl *.tfits *.cat *.ascii *.fmt *.KEY *.plt *.lst disp_res*.dat *free*.dat resolution*.dat middummclear.prg dat.dat
	/bin/rm -f atmoexan.fits thargood.fits flxstd.fits
	/bin/rm -f *.ps *fxb*.fits err*.fits thar*sci*.fits thar*sky*.fits wpol*.fits `ls *.dat | grep -v "info_"`

tardir:
	gtar -zcf ../he2217m2818.tar.gz ../he2217m2818/*.fits ../he2217m2818/wavres_*.dat ../he2217m2818/info_*.dat ../he2217m2818/phmod_*.ps ../he2217m2818/resol_*.ps ../he2217m2818/reduce_*.prg ../he2217m2818/reduce_*.cpl ../he2217m2818/reduce_*.sof ../he2217m2818/Makefile
