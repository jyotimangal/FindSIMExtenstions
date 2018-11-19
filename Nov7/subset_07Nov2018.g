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
DEFAULT_VOL = 1.0000000000000005e-18
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
simundump geometry /kinetics/geometry 0 1.0000000000000005e-18 3 sphere  "" white black -6 -18 0
simundump group /kinetics/PSD 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 -9 -18 0
simundump group /kinetics/PSD/PP1_PSD 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 -9 -18 0
simundump group /kinetics/PSD/CaM 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 -9 -18 0
simundump group /kinetics/PSD/CaMKII_PSD 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 -9 -18 0
simundump group /kinetics/DEND 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 -9 -18 0
simundump group /kinetics/DEND/CaM 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 -9 -18 0
simundump group /kinetics/DEND/CaMKII_BULK 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 -9 -18 0
simundump group /kinetics/SPINE 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 -9 -18 0
simundump group /kinetics/SPINE/CaM 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 -9 -18 0
simundump group /kinetics/SPINE/CaMKII_BULK 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 -9 -18 0
simundump group /kinetics/SPINE/CaN_BULK 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 -9 -18 0
simundump kpool /kinetics/DEND/phosphatase 0 1e-12 0 0 0 240.88566 0 0 602.2141500000002 0 /kinetics/geometry 25 40 -3 -30 0
simundump kpool /kinetics/DEND/P_MAPK 0 1e-12 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry red 40 -4 -27 0
simundump kpool /kinetics/DEND/MAPK 0 1e-12 0 0 0 1204.4283 0 0 602.2141500000002 0 /kinetics/geometry red 40 0 -27 0
simundump kpool /kinetics/DEND/AA 0 2e-12 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry red 40 -8 -27 0
simundump kpool /kinetics/DEND/PKC 0 1e-12 0 0 0 602.2041130975 0 0 602.2141500000002 0 /kinetics/geometry blue 40 -10 -23 0
simundump kpool /kinetics/DEND/APC 0 1e-12 0 0 0 602.2041130975 0 0 602.2141500000002 4 /kinetics/geometry red 40 -6 -27 0
simundump kpool /kinetics/DEND/Raf 0 0.0 0 0 0 843.09981 0 0 602.2141500000002 0 /kinetics/geometry blue 40 -10 -21 0
simundump kpool /kinetics/DEND/act_Raf 0 0.0 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry blue 40 0 -23 0
simundump kpool /kinetics/DEND/Ca 0 1e-10 0 0 0 48.177132 0 0 602.2141500000002 0 /kinetics/geometry 54 40 35 -36 0
simundump kpool /kinetics/DEND/Ca_input 0 0.0 0 0 0 4.8177132 0 0 602.2141500000002 4 /kinetics/geometry blue black 53 -37 0
simundump kpool /kinetics/DEND/inact_phosphatase 0 1e-12 0 0 0 602.21415 0 0 602.2141500000002 0 /kinetics/geometry blue black -1 -33 0
simundump kpool /kinetics/DEND/reg_phosphatase 0 1e-12 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry blue black -1 -30 0
simundump kpool /kinetics/DEND/CaM/CaM 0 5e-13 0 0 0 602.21415 0 0 602.2141500000002 0 /kinetics/geometry pink blue 38 -30 0
simundump kpool /kinetics/DEND/CaM/CaM_Ca3 0 1e-12 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry hotpink blue 50 -30 0
simundump kpool /kinetics/DEND/CaM/CaM_Ca2 0 1e-12 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry pink blue 46 -30 0
simundump kpool /kinetics/DEND/CaM/CaM_Ca 0 1e-12 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry pink blue 42 -30 0
simundump kpool /kinetics/DEND/CaM/CaM_Ca4 0 1e-12 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry blue blue 55 -30 0
simundump kpool /kinetics/DEND/CaM/CaM_xchange 0 2e-11 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry blue blue 19 -32 0
simundump kpool /kinetics/DEND/channel 0 0.0 0 0 0 602.21415 0 0 602.2141500000002 0 /kinetics/geometry 25 40 -9 -31 0
simundump kpool /kinetics/DEND/channel_p 0 0.0 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry 52 40 -5 -31 0
simundump kpool /kinetics/DEND/CaMKII_BULK/tot_auto 0 0.0 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry 29 33 77 -33 0
simundump kpool /kinetics/DEND/CaMKII_BULK/tot_CaMKII 0 0.0 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry 23 33 87 -33 0
simundump kpool /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII 0 0.0 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry 47 33 64 -36 0
simundump kpool /kinetics/DEND/CaMKII_BULK/basal_CaMKII 0 0.0 0 0 0 301.107075 0 0 602.2141500000002 0 /kinetics/geometry blue 33 84 -36 0
simundump kpool /kinetics/DEND/CaMKII_BULK/CaMKII_thr286_CaM 0 1e-12 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry 47 33 59 -47 0
simundump kpool /kinetics/DEND/CaMKII_BULK/CaMKII_CaM 0 1e-12 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry 50 33 66 -47 0
simundump kpool /kinetics/DEND/CaMKII_BULK/CaMKII_thr286 0 1e-12 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry 57 33 72 -47 0
simundump kpool /kinetics/DEND/CaMKII_BULK/CaMKII 0 5e-13 0 0 0 602.21415 0 0 602.2141500000002 0 /kinetics/geometry 62 33 78 -47 0
simundump kpool /kinetics/DEND/CaMKII_BULK/CaMKII_thr305 0 1e-12 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry 30 33 91 -47 0
simundump kpool /kinetics/DEND/CaMKII_BULK/CaMKII_p_p_p 0 1e-12 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry 0 33 84 -47 0
simundump kpool /kinetics/DEND/CaMKII_BULK/CaMKII_xchange 0 2e-11 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry blue black 99 -47 0
simundump kpool /kinetics/DEND/actCaMKII 0 0.0 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry 12 5 73 -36 0
simundump kpool /kinetics/DEND/PP2A 0 0.0 0 0 0 903.321225 0 0 602.2141500000002 0 /kinetics/geometry 62 5 47 -44 0
simundump kpool /kinetics/DEND/PKC_active 0 1e-12 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry 51 40 -2 -23 0
simundump kpool /kinetics/DEND/PKC_AA 0 0.0 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry 50 13 -7 -23 0
simundump kpool /kinetics/DEND/PKC_Ca 0 0.0 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry 52 13 -5 -23 0
simundump kpool /kinetics/DEND/PKC_sum 0 0.0 0 0 0 0.0 0 0 602.2141500000002 0 /kinetics/geometry 54 13 -6 -25 0
simundump kreac /kinetics/DEND/degrade_Y 0 0.8 0.02 "" white 40 -7 -28 0
simundump kreac /kinetics/DEND/Ca_activate_Raf 0 3.3088340904743886e-05 4.0 "" white 40 -5 -19 0
simundump kreac /kinetics/DEND/dephosph 0 6.0 0.0 "" white 40 -7 -33 0
simundump kreac /kinetics/DEND/activate_PKC 0 2.7575106410850525e-06 2.0 "" white 40 -8 -25 0
simundump kreac /kinetics/DEND/Ca_stim 0 50.0 5.0 "" white black 49 -38 0
simundump kreac /kinetics/DEND/basal_phosphatase 0 0.06 0.0 "" white black 1 -32 0
simundump kreac /kinetics/DEND/CaM/CaM_Ca3_bind_Ca 0 0.002988969953628622 10.0 "" white blue 52 -33 0
simundump kreac /kinetics/DEND/CaM/CaM_bind_Ca 0 0.014089008038087448 8.4853 "" white blue 40 -33 0
simundump kreac /kinetics/DEND/CaM/CaM_Ca2_bind_Ca 0 0.005977939907257244 10.0 "" white blue 48 -33 0
simundump kreac /kinetics/DEND/CaM/CaM_Ca_bind_Ca 0 0.014089008038087448 8.4853 "" white blue 44 -33 0
simundump kreac /kinetics/DEND/CaM/CaM_x2 0 10.0 10.0 "" white black 28 -30 0
simundump kreac /kinetics/DEND/CaMKII_BULK/CaMKII_thr286_bind_CaM 0 0.1090475871415509 0.0022 "" white 33 57 -41 0
simundump kreac /kinetics/DEND/CaMKII_BULK/CaMKII_bind_CaM 0 0.1090475871415509 2.2 "" white 33 68 -41 0
simundump kreac /kinetics/DEND/CaMKII_BULK/CaMKII_x2 0 10.0 10.0 "" white black 95 -49 0
simundump kreac /kinetics/DEND/Ca_activate_PKC 0 0.0009963233178762073 0.5 "" white 13 -7 -21 0
simundump kreac /kinetics/DEND/PKC_convert 0 1.0 1.0 "" white 13 -4 -24 0
simundump kenz /kinetics/DEND/phosphatase/P 0 0 0 0.0 0 602.2141500000002 0.41361170626045146 4.0 1.0 0 0 "" 25 red "" -3 -29 0
simundump kenz /kinetics/DEND/P_MAPK/PLA2 0 0 0 0.0 0 602.2141500000002 0.04136048127320138 40.0 10.0 0 0 "" red red "" -5 -26 0
simundump kenz /kinetics/DEND/P_MAPK/activate_phosphatase 0 0 0 0.0 0 602.2141500000002 0.0016544391038002433 0.8 0.2 0 0 "" red red "" -3 -32 0
simundump kenz /kinetics/DEND/P_MAPK/phosph_chan 0 0 0 0.0 0 602.2141500000002 0.08272195519001217 200.0 50.0 0 0 "" red red "" -7 -29 0
simundump kenz /kinetics/DEND/act_Raf/MAPKKK 0 0 0 0.0 0 602.2141500000002 0.004135918530573766 40.0 10.0 0 0 "" blue red "" 0 -24 0
simundump kenz /kinetics/DEND/reg_phosphatase/P 0 0 0 0.0 0 602.2141500000002 0.1654466678244881 8.0 2.0 0 0 "" blue red "" -1 -29 0
simundump kenz /kinetics/DEND/CaMKII_BULK/tot_auto/auton_autoph 0 0 0 0.0 0 602.2141500000002 0.0006617767446964149 8.0 2.0 0 0 "" 29 red "" 75 -46 0
simundump kenz /kinetics/DEND/CaMKII_BULK/tot_auto/auton_286 0 0 0 0.0 0 602.2141500000002 0.00016544666782448804 2.0 0.5 0 0 "" 29 red "" 62 -46 0
simundump kenz /kinetics/DEND/CaMKII_BULK/tot_auto/auton_305 0 0 0 0.0 0 602.2141500000002 0.001985320307487707 24.0 6.0 0 0 "" 29 red "" 81 -46 0
simundump kenz /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII/CaM_act_autoph 0 0 0 0.0 0 602.2141500000002 0.001034054082154972 8.0 2.0 0 0 "" 47 red "" 75 -49 0
simundump kenz /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII/CaM_act_305 0 0 0 0.0 0 602.2141500000002 0.0031020629804495428 24.0 6.0 0 0 "" 47 red "" 81 -49 0
simundump kenz /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII/CaM_act_286 0 0 0 0.0 0 602.2141500000002 0.0002585085572379743 2.0 0.5 0 0 "" 47 red "" 63 -49 0
simundump kenz /kinetics/DEND/PP2A/Deph_thr286 0 0 0 0.0 0 602.2141500000002 0.003308933356489761 8.0 2.0 0 0 "" 62 red "" 64 -44 0
simundump kenz /kinetics/DEND/PP2A/Deph_thr286b 0 0 0 0.0 0 602.2141500000002 0.003308933356489761 8.0 2.0 0 0 "" 62 red "" 74 -44 0
simundump kenz /kinetics/DEND/PP2A/Deph_thr305 0 0 0 0.0 0 602.2141500000002 0.003308933356489761 8.0 2.0 0 0 "" 62 red "" 81 -44 0
simundump kenz /kinetics/DEND/PP2A/Deph_thr286c 0 0 0 0.0 0 602.2141500000002 0.000827203559317828 2.0 0.5 0 0 "" 62 red "" 91 -44 0
simundump kenz /kinetics/DEND/PP2A/Deph_thr305a 0 0 0 0.0 0 602.2141500000002 0.003308933356489761 8.0 2.0 0 0 "" 62 red "" 86 -44 0
simundump kenz /kinetics/DEND/PKC_active/MAPKK 0 0 0 0.0 0 602.2141500000002 0.016544391038002433 40.0 10.0 0 0 "" 51 red "" -2 -24 0
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_thr286 /kinetics/DEND/CaMKII_BULK/tot_auto SUMTOTAL n nInit
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_p_p_p /kinetics/DEND/CaMKII_BULK/tot_auto SUMTOTAL n nInit
addmsg /kinetics/DEND/CaMKII_BULK/basal_CaMKII /kinetics/DEND/CaMKII_BULK/tot_auto SUMTOTAL n nInit
addmsg /kinetics/DEND/actCaMKII /kinetics/DEND/CaMKII_BULK/tot_CaMKII SUMTOTAL n nInit
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII /kinetics/DEND/CaMKII_BULK/tot_CaMKII SUMTOTAL n nInit
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_thr305 /kinetics/DEND/CaMKII_BULK/tot_CaMKII SUMTOTAL n nInit
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_thr286_CaM /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII SUMTOTAL n nInit
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_CaM /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII SUMTOTAL n nInit
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_thr286_CaM /kinetics/DEND/actCaMKII SUMTOTAL n nInit
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_CaM /kinetics/DEND/actCaMKII SUMTOTAL n nInit
addmsg /kinetics/DEND/CaMKII_BULK/tot_auto /kinetics/DEND/actCaMKII SUMTOTAL n nInit
addmsg /kinetics/DEND/PKC_AA /kinetics/DEND/PKC_sum SUMTOTAL n nInit
addmsg /kinetics/DEND/PKC_Ca /kinetics/DEND/PKC_sum SUMTOTAL n nInit
simundump xgraph /graphs/conc1 0 0 99 0.001 0.999 0
simundump xgraph /graphs/conc2 0 0 100 0 1 0
 simundump xgraph /moregraphs/conc3 0 0 100 0 1 0
simundump xgraph /moregraphs/conc4 0 0 100 0 1 0
 simundump xcoredraw /edit/draw 0 -6 4 -2 6
simundump xtree /edit/draw/tree 0 \
  /kinetics/#[],/kinetics/#[]/#[],/kinetics/#[]/#[]/#[][TYPE!=proto],/kinetics/#[]/#[]/#[][TYPE!=linkinfo]/##[] "edit_elm.D <v>; drag_from_edit.w <d> <S> <x> <y> <z>" auto 0.6
simundump xtext /file/notes 0 1
addmsg /kinetics/DEND/AA /kinetics/DEND/degrade_Y SUBSTRATE n 
addmsg /kinetics/DEND/degrade_Y /kinetics/DEND/AA REAC A B 
addmsg /kinetics/DEND/APC /kinetics/DEND/degrade_Y PRODUCT n 
addmsg /kinetics/DEND/degrade_Y /kinetics/DEND/APC REAC B A
addmsg /kinetics/DEND/Raf /kinetics/DEND/Ca_activate_Raf SUBSTRATE n 
addmsg /kinetics/DEND/Ca_activate_Raf /kinetics/DEND/Raf REAC A B 
addmsg /kinetics/DEND/Ca /kinetics/DEND/Ca_activate_Raf SUBSTRATE n 
addmsg /kinetics/DEND/Ca_activate_Raf /kinetics/DEND/Ca REAC A B 
addmsg /kinetics/DEND/Ca /kinetics/DEND/Ca_activate_Raf SUBSTRATE n 
addmsg /kinetics/DEND/Ca_activate_Raf /kinetics/DEND/Ca REAC A B 
addmsg /kinetics/DEND/act_Raf /kinetics/DEND/Ca_activate_Raf PRODUCT n 
addmsg /kinetics/DEND/Ca_activate_Raf /kinetics/DEND/act_Raf REAC B A
addmsg /kinetics/DEND/channel_p /kinetics/DEND/dephosph SUBSTRATE n 
addmsg /kinetics/DEND/dephosph /kinetics/DEND/channel_p REAC A B 
addmsg /kinetics/DEND/channel /kinetics/DEND/dephosph PRODUCT n 
addmsg /kinetics/DEND/dephosph /kinetics/DEND/channel REAC B A
addmsg /kinetics/DEND/AA /kinetics/DEND/activate_PKC SUBSTRATE n 
addmsg /kinetics/DEND/activate_PKC /kinetics/DEND/AA REAC A B 
addmsg /kinetics/DEND/AA /kinetics/DEND/activate_PKC SUBSTRATE n 
addmsg /kinetics/DEND/activate_PKC /kinetics/DEND/AA REAC A B 
addmsg /kinetics/DEND/PKC /kinetics/DEND/activate_PKC SUBSTRATE n 
addmsg /kinetics/DEND/activate_PKC /kinetics/DEND/PKC REAC A B 
addmsg /kinetics/DEND/PKC_AA /kinetics/DEND/activate_PKC PRODUCT n 
addmsg /kinetics/DEND/activate_PKC /kinetics/DEND/PKC_AA REAC B A
addmsg /kinetics/DEND/Ca_input /kinetics/DEND/Ca_stim SUBSTRATE n 
addmsg /kinetics/DEND/Ca_stim /kinetics/DEND/Ca_input REAC A B 
addmsg /kinetics/DEND/Ca /kinetics/DEND/Ca_stim PRODUCT n 
addmsg /kinetics/DEND/Ca_stim /kinetics/DEND/Ca REAC B A
addmsg /kinetics/DEND/reg_phosphatase /kinetics/DEND/basal_phosphatase SUBSTRATE n 
addmsg /kinetics/DEND/basal_phosphatase /kinetics/DEND/reg_phosphatase REAC A B 
addmsg /kinetics/DEND/inact_phosphatase /kinetics/DEND/basal_phosphatase PRODUCT n 
addmsg /kinetics/DEND/basal_phosphatase /kinetics/DEND/inact_phosphatase REAC B A
addmsg /kinetics/DEND/Ca /kinetics/DEND/CaM/CaM_Ca3_bind_Ca SUBSTRATE n 
addmsg /kinetics/DEND/CaM/CaM_Ca3_bind_Ca /kinetics/DEND/Ca REAC A B 
addmsg /kinetics/DEND/CaM/CaM_Ca3 /kinetics/DEND/CaM/CaM_Ca3_bind_Ca SUBSTRATE n 
addmsg /kinetics/DEND/CaM/CaM_Ca3_bind_Ca /kinetics/DEND/CaM/CaM_Ca3 REAC A B 
addmsg /kinetics/DEND/CaM/CaM_Ca4 /kinetics/DEND/CaM/CaM_Ca3_bind_Ca PRODUCT n 
addmsg /kinetics/DEND/CaM/CaM_Ca3_bind_Ca /kinetics/DEND/CaM/CaM_Ca4 REAC B A
addmsg /kinetics/DEND/Ca /kinetics/DEND/CaM/CaM_bind_Ca SUBSTRATE n 
addmsg /kinetics/DEND/CaM/CaM_bind_Ca /kinetics/DEND/Ca REAC A B 
addmsg /kinetics/DEND/CaM/CaM /kinetics/DEND/CaM/CaM_bind_Ca SUBSTRATE n 
addmsg /kinetics/DEND/CaM/CaM_bind_Ca /kinetics/DEND/CaM/CaM REAC A B 
addmsg /kinetics/DEND/CaM/CaM_Ca /kinetics/DEND/CaM/CaM_bind_Ca PRODUCT n 
addmsg /kinetics/DEND/CaM/CaM_bind_Ca /kinetics/DEND/CaM/CaM_Ca REAC B A
addmsg /kinetics/DEND/Ca /kinetics/DEND/CaM/CaM_Ca2_bind_Ca SUBSTRATE n 
addmsg /kinetics/DEND/CaM/CaM_Ca2_bind_Ca /kinetics/DEND/Ca REAC A B 
addmsg /kinetics/DEND/CaM/CaM_Ca2 /kinetics/DEND/CaM/CaM_Ca2_bind_Ca SUBSTRATE n 
addmsg /kinetics/DEND/CaM/CaM_Ca2_bind_Ca /kinetics/DEND/CaM/CaM_Ca2 REAC A B 
addmsg /kinetics/DEND/CaM/CaM_Ca3 /kinetics/DEND/CaM/CaM_Ca2_bind_Ca PRODUCT n 
addmsg /kinetics/DEND/CaM/CaM_Ca2_bind_Ca /kinetics/DEND/CaM/CaM_Ca3 REAC B A
addmsg /kinetics/DEND/Ca /kinetics/DEND/CaM/CaM_Ca_bind_Ca SUBSTRATE n 
addmsg /kinetics/DEND/CaM/CaM_Ca_bind_Ca /kinetics/DEND/Ca REAC A B 
addmsg /kinetics/DEND/CaM/CaM_Ca /kinetics/DEND/CaM/CaM_Ca_bind_Ca SUBSTRATE n 
addmsg /kinetics/DEND/CaM/CaM_Ca_bind_Ca /kinetics/DEND/CaM/CaM_Ca REAC A B 
addmsg /kinetics/DEND/CaM/CaM_Ca2 /kinetics/DEND/CaM/CaM_Ca_bind_Ca PRODUCT n 
addmsg /kinetics/DEND/CaM/CaM_Ca_bind_Ca /kinetics/DEND/CaM/CaM_Ca2 REAC B A
addmsg /kinetics/DEND/CaM/CaM /kinetics/DEND/CaM/CaM_x2 SUBSTRATE n 
addmsg /kinetics/DEND/CaM/CaM_x2 /kinetics/DEND/CaM/CaM REAC A B 
addmsg /kinetics/DEND/CaM/CaM_xchange /kinetics/DEND/CaM/CaM_x2 PRODUCT n 
addmsg /kinetics/DEND/CaM/CaM_x2 /kinetics/DEND/CaM/CaM_xchange REAC B A
addmsg /kinetics/DEND/CaM/CaM_Ca4 /kinetics/DEND/CaMKII_BULK/CaMKII_thr286_bind_CaM SUBSTRATE n 
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_thr286_bind_CaM /kinetics/DEND/CaM/CaM_Ca4 REAC A B 
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_thr286 /kinetics/DEND/CaMKII_BULK/CaMKII_thr286_bind_CaM SUBSTRATE n 
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_thr286_bind_CaM /kinetics/DEND/CaMKII_BULK/CaMKII_thr286 REAC A B 
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_thr286_CaM /kinetics/DEND/CaMKII_BULK/CaMKII_thr286_bind_CaM PRODUCT n 
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_thr286_bind_CaM /kinetics/DEND/CaMKII_BULK/CaMKII_thr286_CaM REAC B A
addmsg /kinetics/DEND/CaM/CaM_Ca4 /kinetics/DEND/CaMKII_BULK/CaMKII_bind_CaM SUBSTRATE n 
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_bind_CaM /kinetics/DEND/CaM/CaM_Ca4 REAC A B 
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII /kinetics/DEND/CaMKII_BULK/CaMKII_bind_CaM SUBSTRATE n 
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_bind_CaM /kinetics/DEND/CaMKII_BULK/CaMKII REAC A B 
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_CaM /kinetics/DEND/CaMKII_BULK/CaMKII_bind_CaM PRODUCT n 
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_bind_CaM /kinetics/DEND/CaMKII_BULK/CaMKII_CaM REAC B A
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII /kinetics/DEND/CaMKII_BULK/CaMKII_x2 SUBSTRATE n 
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_x2 /kinetics/DEND/CaMKII_BULK/CaMKII REAC A B 
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_xchange /kinetics/DEND/CaMKII_BULK/CaMKII_x2 PRODUCT n 
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_x2 /kinetics/DEND/CaMKII_BULK/CaMKII_xchange REAC B A
addmsg /kinetics/DEND/PKC /kinetics/DEND/Ca_activate_PKC SUBSTRATE n 
addmsg /kinetics/DEND/Ca_activate_PKC /kinetics/DEND/PKC REAC A B 
addmsg /kinetics/DEND/Ca /kinetics/DEND/Ca_activate_PKC SUBSTRATE n 
addmsg /kinetics/DEND/Ca_activate_PKC /kinetics/DEND/Ca REAC A B 
addmsg /kinetics/DEND/PKC_Ca /kinetics/DEND/Ca_activate_PKC PRODUCT n 
addmsg /kinetics/DEND/Ca_activate_PKC /kinetics/DEND/PKC_Ca REAC B A
addmsg /kinetics/DEND/PKC_sum /kinetics/DEND/PKC_convert SUBSTRATE n 
addmsg /kinetics/DEND/PKC_convert /kinetics/DEND/PKC_sum REAC A B 
addmsg /kinetics/DEND/PKC_active /kinetics/DEND/PKC_convert PRODUCT n 
addmsg /kinetics/DEND/PKC_convert /kinetics/DEND/PKC_active REAC B A
addmsg /kinetics/DEND/P_MAPK /kinetics/DEND/phosphatase/P SUBSTRATE n 
addmsg /kinetics/DEND/phosphatase/P /kinetics/DEND/P_MAPK REAC sA B 
addmsg /kinetics/DEND/phosphatase/P /kinetics/DEND/MAPK MM_PRD pA
addmsg /kinetics/DEND/phosphatase /kinetics/DEND/phosphatase/P ENZYME n
addmsg /kinetics/DEND/phosphatase/P /kinetics/DEND/phosphatase REAC eA B
addmsg /kinetics/DEND/APC /kinetics/DEND/P_MAPK/PLA2 SUBSTRATE n 
addmsg /kinetics/DEND/P_MAPK/PLA2 /kinetics/DEND/APC REAC sA B 
addmsg /kinetics/DEND/P_MAPK/PLA2 /kinetics/DEND/AA MM_PRD pA
addmsg /kinetics/DEND/P_MAPK /kinetics/DEND/P_MAPK/PLA2 ENZYME n
addmsg /kinetics/DEND/P_MAPK/PLA2 /kinetics/DEND/P_MAPK REAC eA B
addmsg /kinetics/DEND/inact_phosphatase /kinetics/DEND/P_MAPK/activate_phosphatase SUBSTRATE n 
addmsg /kinetics/DEND/P_MAPK/activate_phosphatase /kinetics/DEND/inact_phosphatase REAC sA B 
addmsg /kinetics/DEND/P_MAPK/activate_phosphatase /kinetics/DEND/reg_phosphatase MM_PRD pA
addmsg /kinetics/DEND/P_MAPK /kinetics/DEND/P_MAPK/activate_phosphatase ENZYME n
addmsg /kinetics/DEND/P_MAPK/activate_phosphatase /kinetics/DEND/P_MAPK REAC eA B
addmsg /kinetics/DEND/channel /kinetics/DEND/P_MAPK/phosph_chan SUBSTRATE n 
addmsg /kinetics/DEND/P_MAPK/phosph_chan /kinetics/DEND/channel REAC sA B 
addmsg /kinetics/DEND/P_MAPK/phosph_chan /kinetics/DEND/channel_p MM_PRD pA
addmsg /kinetics/DEND/P_MAPK /kinetics/DEND/P_MAPK/phosph_chan ENZYME n
addmsg /kinetics/DEND/P_MAPK/phosph_chan /kinetics/DEND/P_MAPK REAC eA B
addmsg /kinetics/DEND/MAPK /kinetics/DEND/act_Raf/MAPKKK SUBSTRATE n 
addmsg /kinetics/DEND/act_Raf/MAPKKK /kinetics/DEND/MAPK REAC sA B 
addmsg /kinetics/DEND/act_Raf/MAPKKK /kinetics/DEND/P_MAPK MM_PRD pA
addmsg /kinetics/DEND/act_Raf /kinetics/DEND/act_Raf/MAPKKK ENZYME n
addmsg /kinetics/DEND/act_Raf/MAPKKK /kinetics/DEND/act_Raf REAC eA B
addmsg /kinetics/DEND/P_MAPK /kinetics/DEND/reg_phosphatase/P SUBSTRATE n 
addmsg /kinetics/DEND/reg_phosphatase/P /kinetics/DEND/P_MAPK REAC sA B 
addmsg /kinetics/DEND/reg_phosphatase/P /kinetics/DEND/MAPK MM_PRD pA
addmsg /kinetics/DEND/reg_phosphatase /kinetics/DEND/reg_phosphatase/P ENZYME n
addmsg /kinetics/DEND/reg_phosphatase/P /kinetics/DEND/reg_phosphatase REAC eA B
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII /kinetics/DEND/CaMKII_BULK/tot_auto/auton_autoph SUBSTRATE n 
addmsg /kinetics/DEND/CaMKII_BULK/tot_auto/auton_autoph /kinetics/DEND/CaMKII_BULK/CaMKII REAC sA B 
addmsg /kinetics/DEND/CaMKII_BULK/tot_auto/auton_autoph /kinetics/DEND/CaMKII_BULK/CaMKII_thr286 MM_PRD pA
addmsg /kinetics/DEND/CaMKII_BULK/tot_auto /kinetics/DEND/CaMKII_BULK/tot_auto/auton_autoph ENZYME n
addmsg /kinetics/DEND/CaMKII_BULK/tot_auto/auton_autoph /kinetics/DEND/CaMKII_BULK/tot_auto REAC eA B
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_CaM /kinetics/DEND/CaMKII_BULK/tot_auto/auton_286 SUBSTRATE n 
addmsg /kinetics/DEND/CaMKII_BULK/tot_auto/auton_286 /kinetics/DEND/CaMKII_BULK/CaMKII_CaM REAC sA B 
addmsg /kinetics/DEND/CaMKII_BULK/tot_auto/auton_286 /kinetics/DEND/CaMKII_BULK/CaMKII_thr286_CaM MM_PRD pA
addmsg /kinetics/DEND/CaMKII_BULK/tot_auto /kinetics/DEND/CaMKII_BULK/tot_auto/auton_286 ENZYME n
addmsg /kinetics/DEND/CaMKII_BULK/tot_auto/auton_286 /kinetics/DEND/CaMKII_BULK/tot_auto REAC eA B
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_thr286 /kinetics/DEND/CaMKII_BULK/tot_auto/auton_305 SUBSTRATE n 
addmsg /kinetics/DEND/CaMKII_BULK/tot_auto/auton_305 /kinetics/DEND/CaMKII_BULK/CaMKII_thr286 REAC sA B 
addmsg /kinetics/DEND/CaMKII_BULK/tot_auto/auton_305 /kinetics/DEND/CaMKII_BULK/CaMKII_p_p_p MM_PRD pA
addmsg /kinetics/DEND/CaMKII_BULK/tot_auto /kinetics/DEND/CaMKII_BULK/tot_auto/auton_305 ENZYME n
addmsg /kinetics/DEND/CaMKII_BULK/tot_auto/auton_305 /kinetics/DEND/CaMKII_BULK/tot_auto REAC eA B
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII/CaM_act_autoph SUBSTRATE n 
addmsg /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII/CaM_act_autoph /kinetics/DEND/CaMKII_BULK/CaMKII REAC sA B 
addmsg /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII/CaM_act_autoph /kinetics/DEND/CaMKII_BULK/CaMKII_thr286 MM_PRD pA
addmsg /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII/CaM_act_autoph ENZYME n
addmsg /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII/CaM_act_autoph /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII REAC eA B
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_thr286 /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII/CaM_act_305 SUBSTRATE n 
addmsg /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII/CaM_act_305 /kinetics/DEND/CaMKII_BULK/CaMKII_thr286 REAC sA B 
addmsg /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII/CaM_act_305 /kinetics/DEND/CaMKII_BULK/CaMKII_p_p_p MM_PRD pA
addmsg /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII/CaM_act_305 ENZYME n
addmsg /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII/CaM_act_305 /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII REAC eA B
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_CaM /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII/CaM_act_286 SUBSTRATE n 
addmsg /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII/CaM_act_286 /kinetics/DEND/CaMKII_BULK/CaMKII_CaM REAC sA B 
addmsg /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII/CaM_act_286 /kinetics/DEND/CaMKII_BULK/CaMKII_thr286_CaM MM_PRD pA
addmsg /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII/CaM_act_286 ENZYME n
addmsg /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII/CaM_act_286 /kinetics/DEND/CaMKII_BULK/tot_CaM_CaMKII REAC eA B
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_thr286_CaM /kinetics/DEND/PP2A/Deph_thr286 SUBSTRATE n 
addmsg /kinetics/DEND/PP2A/Deph_thr286 /kinetics/DEND/CaMKII_BULK/CaMKII_thr286_CaM REAC sA B 
addmsg /kinetics/DEND/PP2A/Deph_thr286 /kinetics/DEND/CaMKII_BULK/CaMKII_CaM MM_PRD pA
addmsg /kinetics/DEND/PP2A /kinetics/DEND/PP2A/Deph_thr286 ENZYME n
addmsg /kinetics/DEND/PP2A/Deph_thr286 /kinetics/DEND/PP2A REAC eA B
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_thr286 /kinetics/DEND/PP2A/Deph_thr286b SUBSTRATE n 
addmsg /kinetics/DEND/PP2A/Deph_thr286b /kinetics/DEND/CaMKII_BULK/CaMKII_thr286 REAC sA B 
addmsg /kinetics/DEND/PP2A/Deph_thr286b /kinetics/DEND/CaMKII_BULK/CaMKII MM_PRD pA
addmsg /kinetics/DEND/PP2A /kinetics/DEND/PP2A/Deph_thr286b ENZYME n
addmsg /kinetics/DEND/PP2A/Deph_thr286b /kinetics/DEND/PP2A REAC eA B
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_p_p_p /kinetics/DEND/PP2A/Deph_thr305 SUBSTRATE n 
addmsg /kinetics/DEND/PP2A/Deph_thr305 /kinetics/DEND/CaMKII_BULK/CaMKII_p_p_p REAC sA B 
addmsg /kinetics/DEND/PP2A/Deph_thr305 /kinetics/DEND/CaMKII_BULK/CaMKII_thr286 MM_PRD pA
addmsg /kinetics/DEND/PP2A /kinetics/DEND/PP2A/Deph_thr305 ENZYME n
addmsg /kinetics/DEND/PP2A/Deph_thr305 /kinetics/DEND/PP2A REAC eA B
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_p_p_p /kinetics/DEND/PP2A/Deph_thr286c SUBSTRATE n 
addmsg /kinetics/DEND/PP2A/Deph_thr286c /kinetics/DEND/CaMKII_BULK/CaMKII_p_p_p REAC sA B 
addmsg /kinetics/DEND/PP2A/Deph_thr286c /kinetics/DEND/CaMKII_BULK/CaMKII_thr305 MM_PRD pA
addmsg /kinetics/DEND/PP2A /kinetics/DEND/PP2A/Deph_thr286c ENZYME n
addmsg /kinetics/DEND/PP2A/Deph_thr286c /kinetics/DEND/PP2A REAC eA B
addmsg /kinetics/DEND/CaMKII_BULK/CaMKII_thr305 /kinetics/DEND/PP2A/Deph_thr305a SUBSTRATE n 
addmsg /kinetics/DEND/PP2A/Deph_thr305a /kinetics/DEND/CaMKII_BULK/CaMKII_thr305 REAC sA B 
addmsg /kinetics/DEND/PP2A/Deph_thr305a /kinetics/DEND/CaMKII_BULK/CaMKII MM_PRD pA
addmsg /kinetics/DEND/PP2A /kinetics/DEND/PP2A/Deph_thr305a ENZYME n
addmsg /kinetics/DEND/PP2A/Deph_thr305a /kinetics/DEND/PP2A REAC eA B
addmsg /kinetics/DEND/MAPK /kinetics/DEND/PKC_active/MAPKK SUBSTRATE n 
addmsg /kinetics/DEND/PKC_active/MAPKK /kinetics/DEND/MAPK REAC sA B 
addmsg /kinetics/DEND/PKC_active/MAPKK /kinetics/DEND/P_MAPK MM_PRD pA
addmsg /kinetics/DEND/PKC_active /kinetics/DEND/PKC_active/MAPKK ENZYME n
addmsg /kinetics/DEND/PKC_active/MAPKK /kinetics/DEND/PKC_active REAC eA B

enddump
 // End of dump
call /kinetics/DEND/Ca_input/notes LOAD \ 
"Note that the buffered level here is 10x smaller than resting Ca, because of the dynamics of the Ca_stim."
call /kinetics/DEND/CaM/CaM/notes LOAD \ 
"There is a LOT of this in the cell: upto 1% of total protein mass. (Alberts et al) Say 25 uM. Meyer et al Science 256 1199-1202 1992 refer to studies saying it is comparable to CaMK levels."
call /kinetics/DEND/CaM/CaM_Ca2/notes LOAD \ 
"This is the intermediate where the TR2 end (the high-affinity end) has bound the Ca but the TR1 end has not."
call /kinetics/DEND/CaM/CaM_Ca/notes LOAD \ 
"This is the intermediate where the TR2 end (the high-affinity end) has bound the Ca but the TR1 end has not."
call /kinetics/DEND/channel/notes LOAD \ 
"This is the unphosphorylated K_A channel, which has the full channel conductance."
call /kinetics/DEND/PP2A/notes LOAD \ 
"Strack et al JBC 1997 show that PP2A is the primary phosphatase acting on CaMKII in the bulk."
call /kinetics/DEND/Ca_stim/notes LOAD \ 
"This doubles as a Ca extrusion pump and an adaptor for incoming Ca from VGCCs. The Kb is set by the extrusion rate and the Kf by influx."
call /kinetics/DEND/CaM/CaM_Ca3_bind_Ca/notes LOAD \ 
"Use K3 = 21.5 uM here from Stemmer and Klee table 3. kb/kf =21.5 * 6e5 so kf = 7.75e-7, kb = 10"
call /kinetics/DEND/CaM/CaM_bind_Ca/notes LOAD \ 
"Lets use the fast rate consts here. Since the rates are so different, I am not sure whether the order is relevant. These correspond to the TR2C fragment. We use the Martin et al rates here, plus the Drabicowski binding consts. All are scaled by 3X to cell temp. kf = 2e-10 kb = 72 Stemmer & Klee: K1=.9, K2=1.1. Assume 1.0uM for both. kb/kf=3.6e11. If kb=72, kf = 2e-10 (Exactly the same !) 19 May 2006. Splitting the old CaM-TR2-bind-Ca reaction into two steps, each binding 1 Ca. This improves numerical stability and is conceptually better too. Overall rates are the same, so each kf and kb is the square root of the earlier ones. So kf = 1.125e-4, kb = 8.4853"
call /kinetics/DEND/CaM/CaM_Ca2_bind_Ca/notes LOAD \ 
"K3 = 21.5, K4 = 2.8. Assuming that the K4 step happens first, we get kb/kf = 2.8 uM = 1.68e6 so kf =6e-6 assuming kb = 10"
call /kinetics/DEND/CaM/CaM_Ca_bind_Ca/notes LOAD \ 
"Lets use the fast rate consts here. Since the rates are so different, I am not sure whether the order is relevant. These correspond to the TR2C fragment. We use the Martin et al rates here, plus the Drabicowski binding consts. All are scaled by 3X to cell temp. kf = 2e-10 kb = 72 Stemmer & Klee: K1=.9, K2=1.1. Assume 1.0uM for both. kb/kf=3.6e11. If kb=72, kf = 2e-10 (Exactly the same !) 19 May 2006. Splitting the old CaM-TR2-bind-Ca reaction into two steps, each binding 1 Ca. This improves numerical stability and is conceptually better too. Overall rates are the same, so each kf and kb is the square root of the earlier ones. So kf = 1.125e-4, kb = 8.4853"
call /kinetics/DEND/CaMKII_BULK/CaMKII_thr286_bind_CaM/notes LOAD \ 
"Same values as for the main compartment Can the main compartment pool of Ca/CaM be used?"
call /kinetics/DEND/Ca_activate_PKC/notes LOAD \ 
"Rates from DOQCS"
complete_loading
