redun:
	/bin/rm -f gnuplot* reduce_*_*_*.sof *_blue* *_red[lu]*
	/bin/rm -f *~ *.bdf *.tbl *.tfits *.cat *.ascii *.fmt *.KEY *.plt *.lst disp_res*.dat *free*.dat resolution*.dat middummclear.prg dat.dat

clean:
	/bin/rm -f gnuplot* reduce_*_*_*.sof *_blue* *_red[lu]*
	/bin/rm -f *~ *.bdf *.tbl *.tfits *.cat *.ascii *.fmt *.KEY *.plt *.lst disp_res*.dat *free*.dat resolution*.dat middummclear.prg dat.dat
	/bin/rm -f atmoexan.fits thargood.fits flxstd.fits
	/bin/rm -f *.ps *fxb*.fits err*.fits thar*sci*.fits thar*sky*.fits wpol*.fits `ls *.dat | grep -v "info_"`

tardir:
	gtar -zcf ../hem1341m1020.tar.gz ../hem1341m1020/*.fits ../hem1341m1020/wavres_*.dat ../hem1341m1020/info_*.dat ../hem1341m1020/phmod_*.ps ../hem1341m1020/resol_*.ps ../hem1341m1020/reduce_*.prg ../hem1341m1020/reduce_*.cpl ../hem1341m1020/reduce_*.sof ../hem1341m1020/esorex_*.log ../hem1341m1020/Makefile
