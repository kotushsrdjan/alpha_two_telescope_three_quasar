!!! he2217m2818/reduce_437_05.prg: MIDAS Reduction Script by UVES_headsort
!!! Not including STANDARDS on request
!!! Block 00
create/icat bias_437_05_b.cat bias_cal_437_05_*_b.bdf
create/icat flat_437_05_b.cat flat_cal_437_05_*_b.bdf
create/icat thar_437_05_b.cat thar_wav_437_05_01_b.bdf
create/icat sci_437_05_b.cat he2217m2818_sci_437_05_b.bdf
!!! Block 01
set/echelle NBORDI=36
orderp/uves thar_ord_437_05_01_b.bdf ord_437_05_b.cat
pred/uves thar_fmt_437_05_01_b.bdf thar.tbl pred_437_05_b.cat 40,40 0,0 ?
master/uves bias_437_05_b.cat mbias_437_05_b.cat
set/echelle NBORDI=0
!!! Block 02
create/icat ref_437_05_b.cat d437_1x1.tbl ESO.PRO.CATG
add/icat ref_437_05_b.cat o437_1x1.tbl
add/icat ref_437_05_b.cat b437_1x1.tbl
add/icat ref_437_05_b.cat l437BLUE.tbl
add/icat ref_437_05_b.cat thar.tbl
add/icat ref_437_05_b.cat mbias_437_05_b.cat
!!! Block 03
write/descr d437_1x1.tbl TOL 0.065
wavec/uves thar_437_05_b.cat wav_437_05_b.cat ref_437_05_b.cat auto
add/icat ref_437_05_b.cat l437_1x1_*.tbl
!!! Block 04
master/uves flat_437_05_b.cat + ref_437_05_b.cat bmeasure=median
add/icat ref_437_05_b.cat mf437_1x1_s08_b.bdf
!!! Block 05
reduce/uves sci_437_05_b.cat redu_sci_437_05_b.cat ref_437_05_b.cat e o median
!!! Block 06
outdisk/fits wfxb_he2217m2818_sci_437_05_b.bdf wfxb_he2217m2818_sci_437_05_b.fits
outdisk/fits errwhe2217m2818_sci_437_05_b.bdf errwhe2217m2818_sci_437_05_b.fits
outdisk/fits fxb_he2217m2818_sci_437_05_b.bdf fxb_he2217m2818_sci_437_05_b.fits
outdisk/fits err_he2217m2818_sci_437_05_b.bdf err_he2217m2818_sci_437_05_b.fits
outdisk/fits x2_thar_wav_437_05_01_b.bdf thar_he2217m2818_sci_437_05_b.fits
outdisk/fits l437_1x1_2.tbl wpol_he2217m2818_sci_437_05_b.fits
$mv -f pm_437_EEV.ps phmod_437_05_b.ps
$mv -f resol_l437_1x1_2.tbl.ps resol_437_05_b.ps
$mv -f disp_res_l437_1x1_2.tbl.dat wavres_437_05_b.dat
