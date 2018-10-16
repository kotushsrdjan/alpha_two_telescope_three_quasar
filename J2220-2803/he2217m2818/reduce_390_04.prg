!!! he2217m2818/reduce_390_04.prg: MIDAS Reduction Script by UVES_headsort
!!! Not including STANDARDS on request
!!! Block 00
create/icat bias_390_04_b.cat bias_cal_390_04_*_b.bdf
create/icat flat_390_04_b.cat flat_cal_390_04_*_b.bdf
create/icat thar_390_04_b.cat thar_wav_390_04_01_b.bdf
create/icat sci_390_04_b.cat he2217m2818_sci_390_04_b.bdf
!!! Block 01
set/echelle NBORDI=39
orderp/uves thar_ord_390_04_01_b.bdf ord_390_04_b.cat
pred/uves thar_fmt_390_04_01_b.bdf thar.tbl pred_390_04_b.cat 40,40 0,0 ?
master/uves bias_390_04_b.cat mbias_390_04_b.cat
set/echelle NBORDI=0
!!! Block 02
create/icat ref_390_04_b.cat d390_1x1.tbl ESO.PRO.CATG
add/icat ref_390_04_b.cat o390_1x1.tbl
add/icat ref_390_04_b.cat b390_1x1.tbl
add/icat ref_390_04_b.cat l390BLUE.tbl
add/icat ref_390_04_b.cat thar.tbl
add/icat ref_390_04_b.cat mbias_390_04_b.cat
!!! Block 03
write/descr d390_1x1.tbl TOL 0.075
wavec/uves thar_390_04_b.cat wav_390_04_b.cat ref_390_04_b.cat auto
add/icat ref_390_04_b.cat l390_1x1_*.tbl
!!! Block 04
master/uves flat_390_04_b.cat + ref_390_04_b.cat bmeasure=median
add/icat ref_390_04_b.cat mf390_1x1_s08_b.bdf
!!! Block 05
reduce/uves sci_390_04_b.cat redu_sci_390_04_b.cat ref_390_04_b.cat e o median
!!! Block 06
outdisk/fits wfxb_he2217m2818_sci_390_04_b.bdf wfxb_he2217m2818_sci_390_04_b.fits
outdisk/fits errwhe2217m2818_sci_390_04_b.bdf errwhe2217m2818_sci_390_04_b.fits
outdisk/fits fxb_he2217m2818_sci_390_04_b.bdf fxb_he2217m2818_sci_390_04_b.fits
outdisk/fits err_he2217m2818_sci_390_04_b.bdf err_he2217m2818_sci_390_04_b.fits
outdisk/fits x2_thar_wav_390_04_01_b.bdf thar_he2217m2818_sci_390_04_b.fits
outdisk/fits l390_1x1_2.tbl wpol_he2217m2818_sci_390_04_b.fits
$mv -f pm_390_EEV.ps phmod_390_04_b.ps
$mv -f resol_l390_1x1_2.tbl.ps resol_390_04_b.ps
$mv -f disp_res_l390_1x1_2.tbl.dat wavres_390_04_b.dat
