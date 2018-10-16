!!! he2217m2818/reduce_760_07.prg: MIDAS Reduction Script by UVES_headsort
!!! Not including STANDARDS on request
!!! Block 00
create/icat bias_760_07_l.cat bias_cal_760_07_*_l.bdf
create/icat flat_760_07_l.cat flat_cal_760_07_*_l.bdf
create/icat thar_760_07_l.cat thar_wav_760_07_01_l.bdf
create/icat sci_760_07_l.cat he2217m2818_sci_760_07_l.bdf
create/icat bias_760_07_u.cat bias_cal_760_07_*_u.bdf
create/icat flat_760_07_u.cat flat_cal_760_07_*_u.bdf
create/icat thar_760_07_u.cat thar_wav_760_07_01_u.bdf
create/icat sci_760_07_u.cat he2217m2818_sci_760_07_u.bdf
!!! Block 01
set/echelle NBORDI=0
orderp/uves thar_ord_760_07_01_l.bdf ord_760_07_l.cat
pred/uves thar_fmt_760_07_01_l.bdf thar.tbl pred_760_07_l.cat 40,40 0,0 ?
master/uves bias_760_07_l.cat mbias_760_07_l.cat
set/echelle NBORDI=0
orderp/uves thar_ord_760_07_01_u.bdf ord_760_07_u.cat
pred/uves thar_fmt_760_07_01_u.bdf thar.tbl pred_760_07_u.cat 40,40 0,0 ?
master/uves bias_760_07_u.cat mbias_760_07_u.cat
set/echelle NBORDI=0
!!! Block 02
create/icat ref_760_07_l.cat d760L1x1.tbl ESO.PRO.CATG
add/icat ref_760_07_l.cat o760L1x1.tbl
add/icat ref_760_07_l.cat b760L1x1.tbl
add/icat ref_760_07_l.cat l760REDL.tbl
add/icat ref_760_07_l.cat thar.tbl
add/icat ref_760_07_l.cat mbias_760_07_l.cat
create/icat ref_760_07_u.cat d760U1x1.tbl ESO.PRO.CATG
add/icat ref_760_07_u.cat o760U1x1.tbl
add/icat ref_760_07_u.cat b760U1x1.tbl
add/icat ref_760_07_u.cat l760REDU.tbl
add/icat ref_760_07_u.cat thar.tbl
add/icat ref_760_07_u.cat mbias_760_07_u.cat
!!! Block 03
write/descr d760L1x1.tbl TOL 0.065
wavec/uves thar_760_07_l.cat wav_760_07_l.cat ref_760_07_l.cat auto
add/icat ref_760_07_l.cat l760L1x1_*.tbl
write/descr d760U1x1.tbl TOL 0.065
wavec/uves thar_760_07_u.cat wav_760_07_u.cat ref_760_07_u.cat auto
add/icat ref_760_07_u.cat l760U1x1_*.tbl
!!! Block 04
master/uves flat_760_07_l.cat + ref_760_07_l.cat bmeasure=median
add/icat ref_760_07_l.cat mf760_1x1_s08_l.bdf
master/uves flat_760_07_u.cat + ref_760_07_u.cat bmeasure=median
add/icat ref_760_07_u.cat mf760_1x1_s08_u.bdf
!!! Block 05
reduce/uves sci_760_07_l.cat redu_760_07_l.cat ref_760_07_l.cat e o median
reduce/uves sci_760_07_u.cat redu_760_07_u.cat ref_760_07_u.cat e o median
!!! Block 06
outdisk/fits wfxb_he2217m2818_sci_760_07_l.bdf wfxb_he2217m2818_sci_760_07_l.fits
outdisk/fits errwhe2217m2818_sci_760_07_l.bdf errwhe2217m2818_sci_760_07_l.fits
outdisk/fits fxb_he2217m2818_sci_760_07_l.bdf fxb_he2217m2818_sci_760_07_l.fits
outdisk/fits err_he2217m2818_sci_760_07_l.bdf err_he2217m2818_sci_760_07_l.fits
outdisk/fits x2_thar_wav_760_07_01_l.bdf thar_he2217m2818_sci_760_07_l.fits
outdisk/fits l760L1x1_2.tbl wpol_he2217m2818_sci_760_07_l.fits
outdisk/fits wfxb_he2217m2818_sci_760_07_u.bdf wfxb_he2217m2818_sci_760_07_u.fits
outdisk/fits errwhe2217m2818_sci_760_07_u.bdf errwhe2217m2818_sci_760_07_u.fits
outdisk/fits fxb_he2217m2818_sci_760_07_u.bdf fxb_he2217m2818_sci_760_07_u.fits
outdisk/fits err_he2217m2818_sci_760_07_u.bdf err_he2217m2818_sci_760_07_u.fits
outdisk/fits x2_thar_wav_760_07_01_u.bdf thar_he2217m2818_sci_760_07_u.fits
outdisk/fits l760U1x1_2.tbl wpol_he2217m2818_sci_760_07_u.fits
$mv -f pm_760_EEV.ps phmod_760_07_l.ps
$mv -f pm_760_MIT.ps phmod_760_07_u.ps
$mv -f resol_l760L1x1_2.tbl.ps resol_760_07_l.ps
$mv -f resol_l760U1x1_2.tbl.ps resol_760_07_u.ps
$mv -f disp_res_l760L1x1_2.tbl.dat wavres_760_07_l.dat
$mv -f disp_res_l760U1x1_2.tbl.dat wavres_760_07_u.dat
