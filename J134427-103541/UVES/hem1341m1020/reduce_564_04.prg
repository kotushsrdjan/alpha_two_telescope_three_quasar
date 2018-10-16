!!! hem1341m1020/reduce_564_04.prg: MIDAS Reduction Script by UVES_headsort
!!! Not including STANDARDS on request
!!! Block 00
create/icat bias_564_04_l.cat bias_cal_564_04_*_l.bdf
create/icat flat_564_04_l.cat flat_cal_564_04_*_l.bdf
create/icat thar_564_04_l.cat thar_wav_564_04_01_l.bdf
create/icat sci_564_04_l.cat hem1341m1020_sci_564_04_l.bdf
create/icat bias_564_04_u.cat bias_cal_564_04_*_u.bdf
create/icat flat_564_04_u.cat flat_cal_564_04_*_u.bdf
create/icat thar_564_04_u.cat thar_wav_564_04_01_u.bdf
create/icat sci_564_04_u.cat hem1341m1020_sci_564_04_u.bdf
!!! Block 01
set/echelle NBORDI=27
orderp/uves thar_ord_564_04_01_l.bdf ord_564_04_l.cat
pred/uves thar_fmt_564_04_01_l.bdf thar.tbl pred_564_04_l.cat 40,40 0,0 ?
master/uves bias_564_04_l.cat mbias_564_04_l.cat
set/echelle NBORDI=19
orderp/uves thar_ord_564_04_01_u.bdf ord_564_04_u.cat
pred/uves thar_fmt_564_04_01_u.bdf thar.tbl pred_564_04_u.cat 40,40 0,0 ?
master/uves bias_564_04_u.cat mbias_564_04_u.cat
set/echelle NBORDI=0
!!! Block 02
create/icat ref_564_04_l.cat d564L1x1.tbl ESO.PRO.CATG
add/icat ref_564_04_l.cat o564L1x1.tbl
add/icat ref_564_04_l.cat b564L1x1.tbl
add/icat ref_564_04_l.cat l564REDL.tbl
add/icat ref_564_04_l.cat thar.tbl
add/icat ref_564_04_l.cat mbias_564_04_l.cat
create/icat ref_564_04_u.cat d564U1x1.tbl ESO.PRO.CATG
add/icat ref_564_04_u.cat o564U1x1.tbl
add/icat ref_564_04_u.cat b564U1x1.tbl
add/icat ref_564_04_u.cat l564REDU.tbl
add/icat ref_564_04_u.cat thar.tbl
add/icat ref_564_04_u.cat mbias_564_04_u.cat
!!! Block 03
write/descr d564L1x1.tbl TOL 0.065
wavec/uves thar_564_04_l.cat wav_564_04_l.cat ref_564_04_l.cat auto
add/icat ref_564_04_l.cat l564L1x1_*.tbl
write/descr d564U1x1.tbl TOL 0.065
wavec/uves thar_564_04_u.cat wav_564_04_u.cat ref_564_04_u.cat auto
add/icat ref_564_04_u.cat l564U1x1_*.tbl
!!! Block 04
master/uves flat_564_04_l.cat + ref_564_04_l.cat bmeasure=median
add/icat ref_564_04_l.cat mf564_1x1_s08_l.bdf
master/uves flat_564_04_u.cat + ref_564_04_u.cat bmeasure=median
add/icat ref_564_04_u.cat mf564_1x1_s08_u.bdf
!!! Block 05
reduce/uves sci_564_04_l.cat redu_564_04_l.cat ref_564_04_l.cat e o median
reduce/uves sci_564_04_u.cat redu_564_04_u.cat ref_564_04_u.cat e o median
!!! Block 06
outdisk/fits wfxb_hem1341m1020_sci_564_04_l.bdf wfxb_hem1341m1020_sci_564_04_l.fits
outdisk/fits errwhem1341m1020_sci_564_04_l.bdf errwhem1341m1020_sci_564_04_l.fits
outdisk/fits fxb_hem1341m1020_sci_564_04_l.bdf fxb_hem1341m1020_sci_564_04_l.fits
outdisk/fits err_hem1341m1020_sci_564_04_l.bdf err_hem1341m1020_sci_564_04_l.fits
outdisk/fits x2_thar_wav_564_04_01_l.bdf thar_hem1341m1020_sci_564_04_l.fits
outdisk/fits l564L1x1_2.tbl wpol_hem1341m1020_sci_564_04_l.fits
outdisk/fits wfxb_hem1341m1020_sci_564_04_u.bdf wfxb_hem1341m1020_sci_564_04_u.fits
outdisk/fits errwhem1341m1020_sci_564_04_u.bdf errwhem1341m1020_sci_564_04_u.fits
outdisk/fits fxb_hem1341m1020_sci_564_04_u.bdf fxb_hem1341m1020_sci_564_04_u.fits
outdisk/fits err_hem1341m1020_sci_564_04_u.bdf err_hem1341m1020_sci_564_04_u.fits
outdisk/fits x2_thar_wav_564_04_01_u.bdf thar_hem1341m1020_sci_564_04_u.fits
outdisk/fits l564U1x1_2.tbl wpol_hem1341m1020_sci_564_04_u.fits
$mv -f pm_564_EEV.ps phmod_564_04_l.ps
$mv -f pm_564_MIT.ps phmod_564_04_u.ps
$mv -f resol_l564L1x1_2.tbl.ps resol_564_04_l.ps
$mv -f resol_l564U1x1_2.tbl.ps resol_564_04_u.ps
$mv -f disp_res_l564L1x1_2.tbl.dat wavres_564_04_l.dat
$mv -f disp_res_l564U1x1_2.tbl.dat wavres_564_04_u.dat
