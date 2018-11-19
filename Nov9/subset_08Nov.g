//genesis
// kkit Version 11 flat dumpfile

// Saved on 100
include kkit {argv 1}
FASTDT = 0.001
SIMDT = 0.001
CONTROLDT = 0.1
PLOTDT = 0.1
MAXTIME = 100
TRANSIENT_TIME = 2
VARIABLE_DT_FLAG = 0
DEFAULT_VOL = 9.000000000000007e-20
VERSION = 11.0 
setfield /file/modpath value ~/scripts/modules
kparms

//genesis
initdump -version 3 -ignoreorphans 1
simobjdump table input output alloced step_mode stepsize x y z
simobjdump xtree path script namemode sizescale
simobjdump xcoredraw xmin xmax ymin ymax
simobjdump xtext editable
simobjdump xgraph xmin xmax ymin ymax overlay
simobjdump xplot pixflags script fg ysquish do_slope wy
simobjdump group xtree_fg_req xtree_textfg_req plotfield expanded movealone \
  link savename file version md5sum mod_save_flag x y z
simobjdump geometry size dim shape outside xtree_fg_req xtree_textfg_req x y z
simobjdump kpool DiffConst CoInit Co n nInit mwt nMin vol slave_enable \
  geomname xtree_fg_req xtree_textfg_req x y z
simobjdump kreac kf kb notes xtree_fg_req xtree_textfg_req x y z
simobjdump kenz CoComplexInit CoComplex nComplexInit nComplex vol k1 k2 k3 \
  keepconc usecomplex notes xtree_fg_req xtree_textfg_req link x y z
simobjdump stim level1 width1 delay1 level2 width2 delay2 baselevel trig_time \
  trig_mode notes xtree_fg_req xtree_textfg_req is_running x y z
simobjdump xtab input output alloced step_mode stepsize notes editfunc \
  xtree_fg_req xtree_textfg_req baselevel last_x last_y is_running x y z
simobjdump kchan perm gmax Vm is_active use_nernst notes xtree_fg_req \
  xtree_textfg_req x y z
simobjdump transport input output alloced step_mode stepsize dt delay clock \
  kf xtree_fg_req xtree_textfg_req x y z
simobjdump proto x y z
simundump group /kinetics/compartment_1 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 5 11 0
simundump geometry /kinetics/geometry 0 9.000000000000007e-20 3 sphere  "" white black 3 11 0
simundump kpool /kinetics/CaM 0 5e-13 0 0 0 1083.98547 0 0 54.19927350000005 0 /kinetics/geometry pink blue 37 4 0
simundump kpool /kinetics/CaM_Ca3 0 1e-12 0 0 0 0.0 0 0 54.19927350000005 0 /kinetics/geometry hotpink blue 49 4 0
simundump kpool /kinetics/CaM_Ca2 0 1e-12 0 0 0 0.0 0 0 54.19927350000005 0 /kinetics/geometry pink blue 45 4 0
simundump kpool /kinetics/CaM_Ca 0 1e-12 0 0 0 0.0 0 0 54.19927350000005 0 /kinetics/geometry pink blue 41 4 0
simundump kpool /kinetics/CaM_Ca4 0 1e-12 0 0 0 0.0 0 0 54.19927350000005 0 /kinetics/geometry blue blue 54 4 0
simundump kpool /kinetics/CaM_xchange 0 2e-11 0 0 0 0.0 0 0 54.19927350000005 0 /kinetics/geometry blue black 29 7 0
simundump kpool /kinetics/tot_auto 0 0.0 0 0 0 0.0 0 0 54.19927350000005 0 /kinetics/geometry 29 33 76 1 0
simundump kpool /kinetics/tot_CaMKII 0 0.0 0 0 0 0.0 0 0 54.19927350000005 0 /kinetics/geometry 23 33 86 1 0
simundump kpool /kinetics/_286P 0 0.0 0 0 0 0.0 0 0 54.19927350000005 0 /kinetics/geometry 59 33 54 -2 0
simundump kpool /kinetics/tot_CaM_CaMKII 0 0.0 0 0 0 0.0 0 0 54.19927350000005 0 /kinetics/geometry 47 33 63 -2 0
simundump kpool /kinetics/basal_CaMKII 0 0.0 0 0 0 27.099636750000002 0 0 54.19927350000005 0 /kinetics/geometry blue 33 83 -2 0
simundump kpool /kinetics/CaMKII_thr286_CaM 0 1e-12 0 0 0 0.0 0 0 54.19927350000005 0 /kinetics/geometry 47 33 58 -13 0
simundump kpool /kinetics/CaMKII_CaM 0 1e-12 0 0 0 0.0 0 0 54.19927350000005 0 /kinetics/geometry 50 33 65 -13 0
simundump kpool /kinetics/CaMKII_thr286 0 1e-12 0 0 0 0.0 0 0 54.19927350000005 0 /kinetics/geometry 57 33 71 -13 0
simundump kpool /kinetics/CaMKII 0 5e-13 0 0 0 1083.98547 0 0 54.19927350000005 0 /kinetics/geometry 62 33 77 -13 0
simundump kpool /kinetics/CaMKII_thr305 0 1e-12 0 0 0 0.0 0 0 54.19927350000005 0 /kinetics/geometry 30 33 90 -13 0
simundump kpool /kinetics/CaMKII_p_p_p 0 1e-12 0 0 0 0.0 0 0 54.19927350000005 0 /kinetics/geometry 0 33 83 -13 0
simundump kpool /kinetics/CaMKII_xchange 0 2e-11 0 0 0 0.0 0 0 54.19927350000005 0 /kinetics/geometry blue black 98 -13 0
simundump kpool /kinetics/CaM_CaN 0 0.0 0 0 0 0.0 0 0 54.19927350000005 0 /kinetics/geometry 1 5 32 -2 0
simundump kpool /kinetics/actCaMKII 0 0.0 0 0 0 0.0 0 0 54.19927350000005 0 /kinetics/geometry 12 5 72 -2 0
simundump kpool /kinetics/PP2A 0 0.0 0 0 0 325.195641 0 0 54.19927350000005 0 /kinetics/geometry 62 5 46 -10 0
simundump kpool /kinetics/CaN 0 0.0 0 0 0 54.199273500000004 0 0 54.19927350000005 0 /kinetics/geometry 1 yellow 4 -2 0
simundump kpool /kinetics/Ca2_CaN 0 0.0 0 0 0 0.0 0 0 54.19927350000005 0 /kinetics/geometry blue yellow 15 -2 0
simundump kpool /kinetics/PKC_active 0 1e-12 0 0 0 0.0 0 0 54.19927350000005 0 /kinetics/geometry 50 black -1 -15 0
simundump kpool /kinetics/Ca 0 1e-10 0 0 0 4.33594188 0 0 54.19927350000005 0 /kinetics/geometry red 5 45 -2 0
simundump kreac /kinetics/CaM_Ca3_bind_Ca 0 0.03321044515476762 10.0 "" white blue 51 1 0
simundump kreac /kinetics/CaM_bind_Ca 0 0.1565423197047097 8.4853 "" white blue 39 1 0
simundump kreac /kinetics/CaM_Ca2_bind_Ca 0 0.06642288295617099 10.0 "" white blue 47 1 0
simundump kreac /kinetics/CaM_Ca_bind_Ca 0 0.1565423197047097 8.4853 "" white blue 43 1 0
simundump kreac /kinetics/CaM_x2 0 1.0 100.0 "" white black 34 10 0
simundump kreac /kinetics/CaMKII_thr286_bind_CaM 0 1.2116287868692557 0.0022 "" white 33 56 -7 0
simundump kreac /kinetics/CaMKII_bind_CaM 0 1.2116287868692557 2.2 "" white 33 67 -7 0
simundump kreac /kinetics/CaMKII_x2 0 1.0 100.0 "" white black 92 -15 0
simundump kreac /kinetics/CaM_Bind_CaN 0 0.8487180183328472 1.0 "" white yellow 23 5 0
simundump kreac /kinetics/Ca_bind_CaN 0 0.008510472562107558 1.0 "" white yellow 8 5 0
simundump kenz /kinetics/tot_auto/auton_autoph 0 0 0 0.0 0 54.19927350000005 0.007353030822842218 8.0 2.0 0 0 "" 29 red "" 74 -12 0
simundump kenz /kinetics/tot_auto/auton_286 0 0 0 0.0 0 54.19927350000005 0.001838307338718242 2.0 0.5 0 0 "" 29 red "" 61 -12 0
simundump kenz /kinetics/tot_auto/auton_305 0 0 0 0.0 0 54.19927350000005 0.022058893936495908 24.0 6.0 0 0 "" 29 red "" 80 -12 0
simundump kenz /kinetics/tot_CaM_CaMKII/CaM_act_autoph 0 0 0 0.0 0 54.19927350000005 0.011489048619431357 8.0 2.0 0 0 "" 47 red "" 74 -15 0
simundump kenz /kinetics/tot_CaM_CaMKII/CaM_act_305 0 0 0 0.0 0 54.19927350000005 0.034467145858294065 24.0 6.0 0 0 "" 47 red "" 80 -15 0
simundump kenz /kinetics/tot_CaM_CaMKII/CaM_act_286 0 0 0 0.0 0 54.19927350000005 0.0028722621548578392 2.0 0.5 0 0 "" 47 red "" 62 -15 0
simundump kenz /kinetics/PP2A/Deph_thr286 0 0 0 0.0 0 54.19927350000005 0.03676614677436484 8.0 2.0 0 0 "" 62 red "" 63 -10 0
simundump kenz /kinetics/PP2A/Deph_thr286b 0 0 0 0.0 0 54.19927350000005 0.03676614677436484 8.0 2.0 0 0 "" 62 red "" 73 -10 0
simundump kenz /kinetics/PP2A/Deph_thr305 0 0 0 0.0 0 54.19927350000005 0.03676614677436484 8.0 2.0 0 0 "" 62 red "" 80 -10 0
simundump kenz /kinetics/PP2A/Deph_thr286c 0 0 0 0.0 0 54.19927350000005 0.009191338161560461 2.0 0.5 0 0 "" 62 red "" 90 -10 0
simundump kenz /kinetics/PP2A/Deph_thr305a 0 0 0 0.0 0 54.19927350000005 0.03676614677436484 8.0 2.0 0 0 "" 62 red "" 85 -10 0
addmsg /kinetics/CaMKII_thr286 /kinetics/tot_auto SUMTOTAL n nInit
addmsg /kinetics/CaMKII_p_p_p /kinetics/tot_auto SUMTOTAL n nInit
addmsg /kinetics/basal_CaMKII /kinetics/tot_auto SUMTOTAL n nInit
addmsg /kinetics/actCaMKII /kinetics/tot_CaMKII SUMTOTAL n nInit
addmsg /kinetics/CaMKII /kinetics/tot_CaMKII SUMTOTAL n nInit
addmsg /kinetics/CaMKII_thr305 /kinetics/tot_CaMKII SUMTOTAL n nInit
addmsg /kinetics/CaMKII_thr286_CaM /kinetics/_286P SUMTOTAL n nInit
addmsg /kinetics/CaMKII_thr286 /kinetics/_286P SUMTOTAL n nInit
addmsg /kinetics/CaMKII_thr286_CaM /kinetics/tot_CaM_CaMKII SUMTOTAL n nInit
addmsg /kinetics/CaMKII_CaM /kinetics/tot_CaM_CaMKII SUMTOTAL n nInit
addmsg /kinetics/CaMKII_thr286_CaM /kinetics/actCaMKII SUMTOTAL n nInit
addmsg /kinetics/CaMKII_CaM /kinetics/actCaMKII SUMTOTAL n nInit
addmsg /kinetics/tot_auto /kinetics/actCaMKII SUMTOTAL n nInit
simundump xgraph /graphs/conc1 0 0 99 0.001 0.999 0
simundump xgraph /graphs/conc2 0 0 100 0 1 0
 simundump xgraph /moregraphs/conc3 0 0 100 0 1 0
simundump xgraph /moregraphs/conc4 0 0 100 0 1 0
 simundump xcoredraw /edit/draw 0 -6 4 -2 6
simundump xtree /edit/draw/tree 0 \
  /kinetics/#[],/kinetics/#[]/#[],/kinetics/#[]/#[]/#[][TYPE!=proto],/kinetics/#[]/#[]/#[][TYPE!=linkinfo]/##[] "edit_elm.D <v>; drag_from_edit.w <d> <S> <x> <y> <z>" auto 0.6
simundump xtext /file/notes 0 1
addmsg /kinetics/CaM_Ca3 /kinetics/CaM_Ca3_bind_Ca SUBSTRATE n 
addmsg /kinetics/CaM_Ca3_bind_Ca /kinetics/CaM_Ca3 REAC A B 
addmsg /kinetics/Ca /kinetics/CaM_Ca3_bind_Ca SUBSTRATE n 
addmsg /kinetics/CaM_Ca3_bind_Ca /kinetics/Ca REAC A B 
addmsg /kinetics/CaM_Ca4 /kinetics/CaM_Ca3_bind_Ca PRODUCT n 
addmsg /kinetics/CaM_Ca3_bind_Ca /kinetics/CaM_Ca4 REAC B A
addmsg /kinetics/CaM /kinetics/CaM_bind_Ca SUBSTRATE n 
addmsg /kinetics/CaM_bind_Ca /kinetics/CaM REAC A B 
addmsg /kinetics/Ca /kinetics/CaM_bind_Ca SUBSTRATE n 
addmsg /kinetics/CaM_bind_Ca /kinetics/Ca REAC A B 
addmsg /kinetics/CaM_Ca /kinetics/CaM_bind_Ca PRODUCT n 
addmsg /kinetics/CaM_bind_Ca /kinetics/CaM_Ca REAC B A
addmsg /kinetics/CaM_Ca2 /kinetics/CaM_Ca2_bind_Ca SUBSTRATE n 
addmsg /kinetics/CaM_Ca2_bind_Ca /kinetics/CaM_Ca2 REAC A B 
addmsg /kinetics/Ca /kinetics/CaM_Ca2_bind_Ca SUBSTRATE n 
addmsg /kinetics/CaM_Ca2_bind_Ca /kinetics/Ca REAC A B 
addmsg /kinetics/CaM_Ca3 /kinetics/CaM_Ca2_bind_Ca PRODUCT n 
addmsg /kinetics/CaM_Ca2_bind_Ca /kinetics/CaM_Ca3 REAC B A
addmsg /kinetics/CaM_Ca /kinetics/CaM_Ca_bind_Ca SUBSTRATE n 
addmsg /kinetics/CaM_Ca_bind_Ca /kinetics/CaM_Ca REAC A B 
addmsg /kinetics/Ca /kinetics/CaM_Ca_bind_Ca SUBSTRATE n 
addmsg /kinetics/CaM_Ca_bind_Ca /kinetics/Ca REAC A B 
addmsg /kinetics/CaM_Ca2 /kinetics/CaM_Ca_bind_Ca PRODUCT n 
addmsg /kinetics/CaM_Ca_bind_Ca /kinetics/CaM_Ca2 REAC B A
addmsg /kinetics/CaM /kinetics/CaM_x2 SUBSTRATE n 
addmsg /kinetics/CaM_x2 /kinetics/CaM REAC A B 
addmsg /kinetics/CaM_xchange /kinetics/CaM_x2 PRODUCT n 
addmsg /kinetics/CaM_x2 /kinetics/CaM_xchange REAC B A
addmsg /kinetics/CaM_Ca4 /kinetics/CaMKII_thr286_bind_CaM SUBSTRATE n 
addmsg /kinetics/CaMKII_thr286_bind_CaM /kinetics/CaM_Ca4 REAC A B 
addmsg /kinetics/CaMKII_thr286 /kinetics/CaMKII_thr286_bind_CaM SUBSTRATE n 
addmsg /kinetics/CaMKII_thr286_bind_CaM /kinetics/CaMKII_thr286 REAC A B 
addmsg /kinetics/CaMKII_thr286_CaM /kinetics/CaMKII_thr286_bind_CaM PRODUCT n 
addmsg /kinetics/CaMKII_thr286_bind_CaM /kinetics/CaMKII_thr286_CaM REAC B A
addmsg /kinetics/CaM_Ca4 /kinetics/CaMKII_bind_CaM SUBSTRATE n 
addmsg /kinetics/CaMKII_bind_CaM /kinetics/CaM_Ca4 REAC A B 
addmsg /kinetics/CaMKII /kinetics/CaMKII_bind_CaM SUBSTRATE n 
addmsg /kinetics/CaMKII_bind_CaM /kinetics/CaMKII REAC A B 
addmsg /kinetics/CaMKII_CaM /kinetics/CaMKII_bind_CaM PRODUCT n 
addmsg /kinetics/CaMKII_bind_CaM /kinetics/CaMKII_CaM REAC B A
addmsg /kinetics/CaMKII /kinetics/CaMKII_x2 SUBSTRATE n 
addmsg /kinetics/CaMKII_x2 /kinetics/CaMKII REAC A B 
addmsg /kinetics/CaMKII_xchange /kinetics/CaMKII_x2 PRODUCT n 
addmsg /kinetics/CaMKII_x2 /kinetics/CaMKII_xchange REAC B A
addmsg /kinetics/CaM_Ca2 /kinetics/CaM_Bind_CaN SUBSTRATE n 
addmsg /kinetics/CaM_Bind_CaN /kinetics/CaM_Ca2 REAC A B 
addmsg /kinetics/Ca2_CaN /kinetics/CaM_Bind_CaN SUBSTRATE n 
addmsg /kinetics/CaM_Bind_CaN /kinetics/Ca2_CaN REAC A B 
addmsg /kinetics/CaM_CaN /kinetics/CaM_Bind_CaN PRODUCT n 
addmsg /kinetics/CaM_Bind_CaN /kinetics/CaM_CaN REAC B A
addmsg /kinetics/CaN /kinetics/Ca_bind_CaN SUBSTRATE n 
addmsg /kinetics/Ca_bind_CaN /kinetics/CaN REAC A B 
addmsg /kinetics/Ca /kinetics/Ca_bind_CaN SUBSTRATE n 
addmsg /kinetics/Ca_bind_CaN /kinetics/Ca REAC A B 
addmsg /kinetics/Ca /kinetics/Ca_bind_CaN SUBSTRATE n 
addmsg /kinetics/Ca_bind_CaN /kinetics/Ca REAC A B 
addmsg /kinetics/Ca2_CaN /kinetics/Ca_bind_CaN PRODUCT n 
addmsg /kinetics/Ca_bind_CaN /kinetics/Ca2_CaN REAC B A
addmsg /kinetics/CaMKII /kinetics/tot_auto/auton_autoph SUBSTRATE n 
addmsg /kinetics/tot_auto/auton_autoph /kinetics/CaMKII REAC sA B 
addmsg /kinetics/tot_auto/auton_autoph /kinetics/CaMKII_thr286 MM_PRD pA
addmsg /kinetics/tot_auto /kinetics/tot_auto/auton_autoph ENZYME n
addmsg /kinetics/tot_auto/auton_autoph /kinetics/tot_auto REAC eA B
addmsg /kinetics/CaMKII_CaM /kinetics/tot_auto/auton_286 SUBSTRATE n 
addmsg /kinetics/tot_auto/auton_286 /kinetics/CaMKII_CaM REAC sA B 
addmsg /kinetics/tot_auto/auton_286 /kinetics/CaMKII_thr286_CaM MM_PRD pA
addmsg /kinetics/tot_auto /kinetics/tot_auto/auton_286 ENZYME n
addmsg /kinetics/tot_auto/auton_286 /kinetics/tot_auto REAC eA B
addmsg /kinetics/CaMKII_thr286 /kinetics/tot_auto/auton_305 SUBSTRATE n 
addmsg /kinetics/tot_auto/auton_305 /kinetics/CaMKII_thr286 REAC sA B 
addmsg /kinetics/tot_auto/auton_305 /kinetics/CaMKII_p_p_p MM_PRD pA
addmsg /kinetics/tot_auto /kinetics/tot_auto/auton_305 ENZYME n
addmsg /kinetics/tot_auto/auton_305 /kinetics/tot_auto REAC eA B
addmsg /kinetics/CaMKII /kinetics/tot_CaM_CaMKII/CaM_act_autoph SUBSTRATE n 
addmsg /kinetics/tot_CaM_CaMKII/CaM_act_autoph /kinetics/CaMKII REAC sA B 
addmsg /kinetics/tot_CaM_CaMKII/CaM_act_autoph /kinetics/CaMKII_thr286 MM_PRD pA
addmsg /kinetics/tot_CaM_CaMKII /kinetics/tot_CaM_CaMKII/CaM_act_autoph ENZYME n
addmsg /kinetics/tot_CaM_CaMKII/CaM_act_autoph /kinetics/tot_CaM_CaMKII REAC eA B
addmsg /kinetics/CaMKII_thr286 /kinetics/tot_CaM_CaMKII/CaM_act_305 SUBSTRATE n 
addmsg /kinetics/tot_CaM_CaMKII/CaM_act_305 /kinetics/CaMKII_thr286 REAC sA B 
addmsg /kinetics/tot_CaM_CaMKII/CaM_act_305 /kinetics/CaMKII_p_p_p MM_PRD pA
addmsg /kinetics/tot_CaM_CaMKII /kinetics/tot_CaM_CaMKII/CaM_act_305 ENZYME n
addmsg /kinetics/tot_CaM_CaMKII/CaM_act_305 /kinetics/tot_CaM_CaMKII REAC eA B
addmsg /kinetics/CaMKII_CaM /kinetics/tot_CaM_CaMKII/CaM_act_286 SUBSTRATE n 
addmsg /kinetics/tot_CaM_CaMKII/CaM_act_286 /kinetics/CaMKII_CaM REAC sA B 
addmsg /kinetics/tot_CaM_CaMKII/CaM_act_286 /kinetics/CaMKII_thr286_CaM MM_PRD pA
addmsg /kinetics/tot_CaM_CaMKII /kinetics/tot_CaM_CaMKII/CaM_act_286 ENZYME n
addmsg /kinetics/tot_CaM_CaMKII/CaM_act_286 /kinetics/tot_CaM_CaMKII REAC eA B
addmsg /kinetics/CaMKII_thr286_CaM /kinetics/PP2A/Deph_thr286 SUBSTRATE n 
addmsg /kinetics/PP2A/Deph_thr286 /kinetics/CaMKII_thr286_CaM REAC sA B 
addmsg /kinetics/PP2A/Deph_thr286 /kinetics/CaMKII_CaM MM_PRD pA
addmsg /kinetics/PP2A /kinetics/PP2A/Deph_thr286 ENZYME n
addmsg /kinetics/PP2A/Deph_thr286 /kinetics/PP2A REAC eA B
addmsg /kinetics/CaMKII_thr286 /kinetics/PP2A/Deph_thr286b SUBSTRATE n 
addmsg /kinetics/PP2A/Deph_thr286b /kinetics/CaMKII_thr286 REAC sA B 
addmsg /kinetics/PP2A/Deph_thr286b /kinetics/CaMKII MM_PRD pA
addmsg /kinetics/PP2A /kinetics/PP2A/Deph_thr286b ENZYME n
addmsg /kinetics/PP2A/Deph_thr286b /kinetics/PP2A REAC eA B
addmsg /kinetics/CaMKII_p_p_p /kinetics/PP2A/Deph_thr305 SUBSTRATE n 
addmsg /kinetics/PP2A/Deph_thr305 /kinetics/CaMKII_p_p_p REAC sA B 
addmsg /kinetics/PP2A/Deph_thr305 /kinetics/CaMKII_thr286 MM_PRD pA
addmsg /kinetics/PP2A /kinetics/PP2A/Deph_thr305 ENZYME n
addmsg /kinetics/PP2A/Deph_thr305 /kinetics/PP2A REAC eA B
addmsg /kinetics/CaMKII_p_p_p /kinetics/PP2A/Deph_thr286c SUBSTRATE n 
addmsg /kinetics/PP2A/Deph_thr286c /kinetics/CaMKII_p_p_p REAC sA B 
addmsg /kinetics/PP2A/Deph_thr286c /kinetics/CaMKII_thr305 MM_PRD pA
addmsg /kinetics/PP2A /kinetics/PP2A/Deph_thr286c ENZYME n
addmsg /kinetics/PP2A/Deph_thr286c /kinetics/PP2A REAC eA B
addmsg /kinetics/CaMKII_thr305 /kinetics/PP2A/Deph_thr305a SUBSTRATE n 
addmsg /kinetics/PP2A/Deph_thr305a /kinetics/CaMKII_thr305 REAC sA B 
addmsg /kinetics/PP2A/Deph_thr305a /kinetics/CaMKII MM_PRD pA
addmsg /kinetics/PP2A /kinetics/PP2A/Deph_thr305a ENZYME n
addmsg /kinetics/PP2A/Deph_thr305a /kinetics/PP2A REAC eA B

enddump
 // End of dump
call /kinetics/CaM/notes LOAD \ 
"There is a LOT of this in the cell: upto 1% of total protein mass. (Alberts et al) Say 25 uM. Meyer et al Science 256 1199-1202 1992 refer to studies saying it is comparable to CaMK levels."
call /kinetics/CaM_Ca2/notes LOAD \ 
"This is the intermediate where the TR2 end (the high-affinity end) has bound the Ca but the TR1 end has not."
call /kinetics/CaM_Ca/notes LOAD \ 
"This is the intermediate where the TR2 end (the high-affinity end) has bound the Ca but the TR1 end has not."
call /kinetics/PP2A/notes LOAD \ 
"Strack et al JBC 1997 show that PP2A is the primary phosphatase acting on CaMKII in the bulk."
call /kinetics/CaM_Ca3_bind_Ca/notes LOAD \ 
"Use K3 = 21.5 uM here from Stemmer and Klee table 3. kb/kf =21.5 * 6e5 so kf = 7.75e-7, kb = 10"
call /kinetics/CaM_bind_Ca/notes LOAD \ 
"Lets use the fast rate consts here. Since the rates are so different, I am not sure whether the order is relevant. These correspond to the TR2C fragment. We use the Martin et al rates here, plus the Drabicowski binding consts. All are scaled by 3X to cell temp. kf = 2e-10 kb = 72 Stemmer & Klee: K1=.9, K2=1.1. Assume 1.0uM for both. kb/kf=3.6e11. If kb=72, kf = 2e-10 (Exactly the same !) 19 May 2006. Splitting the old CaM-TR2-bind-Ca reaction into two steps, each binding 1 Ca. This improves numerical stability and is conceptually better too. Overall rates are the same, so each kf and kb is the square root of the earlier ones. So kf = 1.125e-4, kb = 8.4853"
call /kinetics/CaM_Ca2_bind_Ca/notes LOAD \ 
"K3 = 21.5, K4 = 2.8. Assuming that the K4 step happens first, we get kb/kf = 2.8 uM = 1.68e6 so kf =6e-6 assuming kb = 10"
call /kinetics/CaM_Ca_bind_Ca/notes LOAD \ 
"Lets use the fast rate consts here. Since the rates are so different, I am not sure whether the order is relevant. These correspond to the TR2C fragment. We use the Martin et al rates here, plus the Drabicowski binding consts. All are scaled by 3X to cell temp. kf = 2e-10 kb = 72 Stemmer & Klee: K1=.9, K2=1.1. Assume 1.0uM for both. kb/kf=3.6e11. If kb=72, kf = 2e-10 (Exactly the same !) 19 May 2006. Splitting the old CaM-TR2-bind-Ca reaction into two steps, each binding 1 Ca. This improves numerical stability and is conceptually better too. Overall rates are the same, so each kf and kb is the square root of the earlier ones. So kf = 1.125e-4, kb = 8.4853"
call /kinetics/CaMKII_thr286_bind_CaM/notes LOAD \ 
"Same values as for the main compartment Can the main compartment pool of Ca/CaM be used?"
call /kinetics/CaM_Bind_CaN/notes LOAD \ 
"From Quintana et al 2005"
complete_loading
