!!! he2217m2818/reduce_580_06.prg: MIDAS Reduction Script by UVES_headsort
!!! Not including STANDARDS on request
!!! Block 00
create/icat bias_580_06_l.cat bias_cal_580_06_*_l.bdf
create/icat flat_580_06_l.cat flat_cal_580_06_*_l.bdf
create/icat thar_580_06_l.cat thar_wav_580_06_01_l.bdf
create/icat sci_580_06_l.cat he2217m2818_sci_580_06_l.bdf
create/icat bias_580_06_u.cat bias_cal_580_06_*_u.bdf
create/icat flat_580_06_u.cat flat_cal_580_06_*_u.bdf
create/icat thar_580_06_u.cat thar_wav_580_06_01_u.bdf
create/icat sci_580_06_u.cat he2217m2818_sci_580_06_u.bdf
!!! Block 01
set/echelle NBORDI=0
orderp/uves thar_ord_580_06_01_l.bdf ord_580_06_l.cat
pred/uves thar_fmt_580_06_01_l.bdf thar.tbl pred_580_06_l.cat 40,40 0,0 ?
master/uves bias_580_06_l.cat mbias_580_06_l.cat
set/echelle NBORDI=0
orderp/uves thar_ord_580_06_01_u.bdf ord_580_06_u.cat
pred/uves thar_fmt_580_06_01_u.bdf thar.tbl pred_580_06_u.cat 40,40 0,0 ?
master/uves bias_580_06_u.cat mbias_580_06_u.cat
set/echelle NBORDI=0
!!! Block 02
create/icat ref_580_06_l.cat d580L1x1.tbl ESO.PRO.CATG
add/icat ref_580_06_l.cat o580L1x1.tbl
add/icat ref_580_06_l.cat b580L1x1.tbl
add/icat ref_580_06_l.cat l580REDL.tbl
add/icat ref_580_06_l.cat thar.tbl
add/icat ref_580_06_l.cat mbias_580_06_l.cat
create/icat ref_580_06_u.cat d580U1x1.tbl ESO.PRO.CATG
add/icat ref_580_06_u.cat o580U1x1.tbl
add/icat ref_580_06_u.cat b580U1x1.tbl
add/icat ref_580_06_u.cat l580REDU.tbl
add/icat ref_580_06_u.cat thar.tbl
add/icat ref_580_06_u.cat mbias_580_06_u.cat
!!! Block 03
write/descr d580L1x1.tbl TOL 0.065
wavec/uves thar_580_06_l.cat wav_580_06_l.cat ref_580_06_l.cat auto
add/icat ref_580_06_l.cat l580L1x1_*.tbl
write/descr d580U1x1.tbl TOL 0.065
wavec/uves thar_580_06_u.cat wav_580_06_u.cat ref_580_06_u.cat auto
add/icat ref_580_06_u.cat l580U1x1_*.tbl
!!! Block 04
master/uves flat_580_06_l.cat + ref_580_06_l.cat bmeasure=median
add/icat ref_580_06_l.cat mf580_1x1_s08_l.bdf
master/uves flat_580_06_u.cat + ref_580_06_u.cat bmeasure=median
add/icat ref_580_06_u.cat mf580_1x1_s08_u.bdf
!!! Block 05
reduce/uves sci_580_06_l.cat redu_580_06_l.cat ref_580_06_l.cat e o median
reduce/uves sci_580_06_u.cat redu_580_06_u.cat ref_580_06_u.cat e o median
!!! Block 06
outdisk/fits wfxb_he2217m2818_sci_580_06_l.bdf wfxb_he2217m2818_sci_580_06_l.fits
outdisk/fits errwhe2217m2818_sci_580_06_l.bdf errwhe2217m2818_sci_580_06_l.fits
outdisk/fits fxb_he2217m2818_sci_580_06_l.bdf fxb_he2217m2818_sci_580_06_l.fits
outdisk/fits err_he2217m2818_sci_580_06_l.bdf err_he2217m2818_sci_580_06_l.fits
outdisk/fits x2_thar_wav_580_06_01_l.bdf thar_he2217m2818_sci_580_06_l.fits
outdisk/fits l580L1x1_2.tbl wpol_he2217m2818_sci_580_06_l.fits
outdisk/fits wfxb_he2217m2818_sci_580_06_u.bdf wfxb_he2217m2818_sci_580_06_u.fits
outdisk/fits errwhe2217m2818_sci_580_06_u.bdf errwhe2217m2818_sci_580_06_u.fits
outdisk/fits fxb_he2217m2818_sci_580_06_u.bdf fxb_he2217m2818_sci_580_06_u.fits
outdisk/fits err_he2217m2818_sci_580_06_u.bdf err_he2217m2818_sci_580_06_u.fits
outdisk/fits x2_thar_wav_580_06_01_u.bdf thar_he2217m2818_sci_580_06_u.fits
outdisk/fits l580U1x1_2.tbl wpol_he2217m2818_sci_580_06_u.fits
$mv -f pm_580_EEV.ps phmod_580_06_l.ps
$mv -f pm_580_MIT.ps phmod_580_06_u.ps
$mv -f resol_l580L1x1_2.tbl.ps resol_580_06_l.ps
$mv -f resol_l580U1x1_2.tbl.ps resol_580_06_u.ps
$mv -f disp_res_l580L1x1_2.tbl.dat wavres_580_06_l.dat
$mv -f disp_res_l580U1x1_2.tbl.dat wavres_580_06_u.dat
