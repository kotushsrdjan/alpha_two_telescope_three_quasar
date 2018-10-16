!!! pg0117p213/reduce_346_02.prg: MIDAS Reduction Script by UVES_headsort
!!! Not including STANDARDS on request
!!! Block 00
create/icat bias_346_02_b.cat bias_cal_346_02_*_b.bdf
create/icat flat_346_02_b.cat flat_cal_346_02_*_b.bdf
create/icat thar_346_02_b.cat thar_wav_346_02_01_b.bdf
create/icat sci_346_02_b.cat pg0117p213_sci_346_02_b.bdf
!!! Block 01
set/echelle NBORDI=39
orderp/uves thar_ord_346_02_01_b.bdf ord_346_02_b.cat
pred/uves thar_fmt_346_02_01_b.bdf thar.tbl pred_346_02_b.cat 40,40 0,0 ?
master/uves bias_346_02_b.cat mbias_346_02_b.cat
set/echelle NBORDI=0
!!! Block 02
create/icat ref_346_02_b.cat d346_1x1.tbl ESO.PRO.CATG
add/icat ref_346_02_b.cat o346_1x1.tbl
add/icat ref_346_02_b.cat b346_1x1.tbl
add/icat ref_346_02_b.cat l346BLUE.tbl
add/icat ref_346_02_b.cat thar.tbl
add/icat ref_346_02_b.cat mbias_346_02_b.cat
!!! Block 03
write/descr d346_1x1.tbl TOL 0.075
wavec/uves thar_346_02_b.cat wav_346_02_b.cat ref_346_02_b.cat auto
add/icat ref_346_02_b.cat l346_1x1_*.tbl
!!! Block 04
master/uves flat_346_02_b.cat + ref_346_02_b.cat bmeasure=median
add/icat ref_346_02_b.cat mf346_1x1_s08_b.bdf
!!! Block 05
reduce/uves sci_346_02_b.cat redu_sci_346_02_b.cat ref_346_02_b.cat e o median
!!! Block 06
outdisk/fits wfxb_pg0117p213_sci_346_02_b.bdf wfxb_pg0117p213_sci_346_02_b.fits
outdisk/fits errwpg0117p213_sci_346_02_b.bdf errwpg0117p213_sci_346_02_b.fits
outdisk/fits fxb_pg0117p213_sci_346_02_b.bdf fxb_pg0117p213_sci_346_02_b.fits
outdisk/fits err_pg0117p213_sci_346_02_b.bdf err_pg0117p213_sci_346_02_b.fits
outdisk/fits x2_thar_wav_346_02_01_b.bdf thar_pg0117p213_sci_346_02_b.fits
outdisk/fits l346_1x1_2.tbl wpol_pg0117p213_sci_346_02_b.fits
$mv -f pm_346_EEV.ps phmod_346_02_b.ps
$mv -f resol_l346_1x1_2.tbl.ps resol_346_02_b.ps
$mv -f disp_res_l346_1x1_2.tbl.dat wavres_346_02_b.dat
