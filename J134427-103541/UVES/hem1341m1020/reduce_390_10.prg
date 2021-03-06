!!! hem1341m1020/reduce_390_10.prg: MIDAS Reduction Script by UVES_headsort
!!! Not including STANDARDS on request
!!! Block 00
create/icat bias_390_10_b.cat bias_cal_390_10_*_b.bdf
create/icat flat_390_10_b.cat flat_cal_390_10_*_b.bdf
create/icat thar_390_10_b.cat thar_wav_390_10_01_b.bdf
create/icat sci_390_10_b.cat hem1341m1020_sci_390_10_b.bdf
!!! Block 01
set/echelle NBORDI=39
orderp/uves thar_ord_390_10_01_b.bdf ord_390_10_b.cat
pred/uves thar_fmt_390_10_01_b.bdf thar.tbl pred_390_10_b.cat 40,40 0,0 ?
master/uves bias_390_10_b.cat mbias_390_10_b.cat
set/echelle NBORDI=0
!!! Block 02
create/icat ref_390_10_b.cat d390_1x1.tbl ESO.PRO.CATG
add/icat ref_390_10_b.cat o390_1x1.tbl
add/icat ref_390_10_b.cat b390_1x1.tbl
add/icat ref_390_10_b.cat l390BLUE.tbl
add/icat ref_390_10_b.cat thar.tbl
add/icat ref_390_10_b.cat mbias_390_10_b.cat
!!! Block 03
write/descr d390_1x1.tbl TOL 0.075
wavec/uves thar_390_10_b.cat wav_390_10_b.cat ref_390_10_b.cat auto
add/icat ref_390_10_b.cat l390_1x1_*.tbl
!!! Block 04
master/uves flat_390_10_b.cat + ref_390_10_b.cat bmeasure=median
add/icat ref_390_10_b.cat mf390_1x1_s08_b.bdf
!!! Block 05
reduce/uves sci_390_10_b.cat redu_sci_390_10_b.cat ref_390_10_b.cat e o median
!!! Block 06
outdisk/fits wfxb_hem1341m1020_sci_390_10_b.bdf wfxb_hem1341m1020_sci_390_10_b.fits
outdisk/fits errwhem1341m1020_sci_390_10_b.bdf errwhem1341m1020_sci_390_10_b.fits
outdisk/fits fxb_hem1341m1020_sci_390_10_b.bdf fxb_hem1341m1020_sci_390_10_b.fits
outdisk/fits err_hem1341m1020_sci_390_10_b.bdf err_hem1341m1020_sci_390_10_b.fits
outdisk/fits x2_thar_wav_390_10_01_b.bdf thar_hem1341m1020_sci_390_10_b.fits
outdisk/fits l390_1x1_2.tbl wpol_hem1341m1020_sci_390_10_b.fits
$mv -f pm_390_EEV.ps phmod_390_10_b.ps
$mv -f resol_l390_1x1_2.tbl.ps resol_390_10_b.ps
$mv -f disp_res_l390_1x1_2.tbl.dat wavres_390_10_b.dat
