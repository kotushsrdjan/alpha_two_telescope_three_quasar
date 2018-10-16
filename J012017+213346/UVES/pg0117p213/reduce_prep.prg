!!! pg0117p213/reduce_prep.prg: MIDAS Reduction Preparation by UVES_headsort
!!! Block 00
$ln -s /home/jwhitmor/progs/uves/calib/uves/ech/cal/thargood_4.fits thargood.fits
$ln -s /home/jwhitmor/progs/uves/calib/uves/ech/cal/atmoexan.fits atmoexan.fits
$ln -s /home/jwhitmor/progs/uves/calib/uves/ech/cal/flxstd.fits flxstd.fits
indisk/fits thargood.fits thar.tbl
!!! Block 01
create/icat images.cat *.fits
split/uves images.cat
