!!! pg0117p213/reduce_580_01.prg: MIDAS Reduction Script by UVES_headsort
!!! Not including STANDARDS on request
!!! Block 00
create/icat bias_580_01_l.cat bias_cal_580_01_*_l.bdf
create/icat flat_580_01_l.cat flat_cal_580_01_*_l.bdf
create/icat thar_580_01_l.cat thar_wav_580_01_01_l.bdf
create/icat sci_580_01_l.cat pg0117p213_sci_580_01_l.bdf
create/icat bias_580_01_u.cat bias_cal_580_01_*_u.bdf
create/icat flat_580_01_u.cat flat_cal_580_01_*_u.bdf
create/icat thar_580_01_u.cat thar_wav_580_01_01_u.bdf
create/icat sci_580_01_u.cat pg0117p213_sci_580_01_u.bdf
!!! Block 01
set/echelle NBORDI=0
orderp/uves thar_ord_580_01_01_l.bdf ord_580_01_l.cat
pred/uves thar_fmt_580_01_01_l.bdf thar.tbl pred_580_01_l.cat 40,40 0,0 ?
master/uves bias_580_01_l.cat mbias_580_01_l.cat
set/echelle NBORDI=0
orderp/uves thar_ord_580_01_01_u.bdf ord_580_01_u.cat
pred/uves thar_fmt_580_01_01_u.bdf thar.tbl pred_580_01_u.cat 40,40 0,0 ?
master/uves bias_580_01_u.cat mbias_580_01_u.cat
set/echelle NBORDI=0
!!! Block 02
create/icat ref_580_01_l.cat d580L1x1.tbl ESO.PRO.CATG
add/icat ref_580_01_l.cat o580L1x1.tbl
add/icat ref_580_01_l.cat b580L1x1.tbl
add/icat ref_580_01_l.cat l580REDL.tbl
add/icat ref_580_01_l.cat thar.tbl
add/icat ref_580_01_l.cat mbias_580_01_l.cat
create/icat ref_580_01_u.cat d580U1x1.tbl ESO.PRO.CATG
add/icat ref_580_01_u.cat o580U1x1.tbl
add/icat ref_580_01_u.cat b580U1x1.tbl
add/icat ref_580_01_u.cat l580REDU.tbl
add/icat ref_580_01_u.cat thar.tbl
add/icat ref_580_01_u.cat mbias_580_01_u.cat
!!! Block 03
write/descr d580L1x1.tbl TOL 0.065
wavec/uves thar_580_01_l.cat wav_580_01_l.cat ref_580_01_l.cat auto
add/icat ref_580_01_l.cat l580L1x1_*.tbl
write/descr d580U1x1.tbl TOL 0.065
wavec/uves thar_580_01_u.cat wav_580_01_u.cat ref_580_01_u.cat auto
add/icat ref_580_01_u.cat l580U1x1_*.tbl
!!! Block 04
master/uves flat_580_01_l.cat + ref_580_01_l.cat bmeasure=median
add/icat ref_580_01_l.cat mf580_1x1_s08_l.bdf
master/uves flat_580_01_u.cat + ref_580_01_u.cat bmeasure=median
add/icat ref_580_01_u.cat mf580_1x1_s08_u.bdf
!!! Block 05
reduce/uves sci_580_01_l.cat redu_580_01_l.cat ref_580_01_l.cat e o median
reduce/uves sci_580_01_u.cat redu_580_01_u.cat ref_580_01_u.cat e o median
!!! Block 06
outdisk/fits wfxb_pg0117p213_sci_580_01_l.bdf wfxb_pg0117p213_sci_580_01_l.fits
outdisk/fits errwpg0117p213_sci_580_01_l.bdf errwpg0117p213_sci_580_01_l.fits
outdisk/fits fxb_pg0117p213_sci_580_01_l.bdf fxb_pg0117p213_sci_580_01_l.fits
outdisk/fits err_pg0117p213_sci_580_01_l.bdf err_pg0117p213_sci_580_01_l.fits
outdisk/fits x2_thar_wav_580_01_01_l.bdf thar_pg0117p213_sci_580_01_l.fits
outdisk/fits l580L1x1_2.tbl wpol_pg0117p213_sci_580_01_l.fits
outdisk/fits wfxb_pg0117p213_sci_580_01_u.bdf wfxb_pg0117p213_sci_580_01_u.fits
outdisk/fits errwpg0117p213_sci_580_01_u.bdf errwpg0117p213_sci_580_01_u.fits
outdisk/fits fxb_pg0117p213_sci_580_01_u.bdf fxb_pg0117p213_sci_580_01_u.fits
outdisk/fits err_pg0117p213_sci_580_01_u.bdf err_pg0117p213_sci_580_01_u.fits
outdisk/fits x2_thar_wav_580_01_01_u.bdf thar_pg0117p213_sci_580_01_u.fits
outdisk/fits l580U1x1_2.tbl wpol_pg0117p213_sci_580_01_u.fits
$mv -f pm_580_EEV.ps phmod_580_01_l.ps
$mv -f pm_580_MIT.ps phmod_580_01_u.ps
$mv -f resol_l580L1x1_2.tbl.ps resol_580_01_l.ps
$mv -f resol_l580U1x1_2.tbl.ps resol_580_01_u.ps
$mv -f disp_res_l580L1x1_2.tbl.dat wavres_580_01_l.dat
$mv -f disp_res_l580U1x1_2.tbl.dat wavres_580_01_u.dat
