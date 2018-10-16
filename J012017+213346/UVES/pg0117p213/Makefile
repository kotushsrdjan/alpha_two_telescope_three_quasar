redun:
	/bin/rm -f gnuplot* reduce_*_*_*.sof *_blue* *_red[lu]*
	/bin/rm -f *~ *.bdf *.tbl *.tfits *.cat *.ascii *.fmt *.KEY *.plt *.lst disp_res*.dat *free*.dat resolution*.dat middummclear.prg dat.dat

clean:
	/bin/rm -f gnuplot* reduce_*_*_*.sof *_blue* *_red[lu]*
	/bin/rm -f *~ *.bdf *.tbl *.tfits *.cat *.ascii *.fmt *.KEY *.plt *.lst disp_res*.dat *free*.dat resolution*.dat middummclear.prg dat.dat
	/bin/rm -f atmoexan.fits thargood.fits flxstd.fits
	/bin/rm -f *.ps *fxb*.fits err*.fits thar*sci*.fits thar*sky*.fits wpol*.fits `ls *.dat | grep -v "info_"`

tardir:
	gtar -zcf ../pg0117p213.tar.gz ../pg0117p213/*.fits ../pg0117p213/wavres_*.dat ../pg0117p213/info_*.dat ../pg0117p213/phmod_*.ps ../pg0117p213/resol_*.ps ../pg0117p213/reduce_*.prg ../pg0117p213/reduce_*.cpl ../pg0117p213/reduce_*.sof ../pg0117p213/esorex_*.log ../pg0117p213/Makefile
