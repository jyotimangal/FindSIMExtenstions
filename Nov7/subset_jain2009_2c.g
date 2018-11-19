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
DEFAULT_VOL = 1.0529166666666666e-15
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
simundump geometry /kinetics/geometry 0 1.0529166666666666e-15 3 sphere  "" white black 4 65 0
simundump group /kinetics/Sos 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 65 0
simundump group /kinetics/TrKB 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 65 0
simundump group /kinetics/BDNF 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 65 0
simundump kpool /kinetics/Sos/SHC 0 0.0 0 0 0 317045.67617 0 0 634081.3154375 0 /kinetics/geometry orange 7 2 21 0
simundump kpool /kinetics/Sos/SHC_p 0 0.0 0 0 0 0.0 0 0 634081.3154375 0 /kinetics/geometry orange 7 4 21 0
simundump kpool /kinetics/TrKB/Int_BDNF_TrKB2_p_clx 0 0.0 0 0 0 158522.838085 0 0 634081.3154375 4 /kinetics/geometry yellow 21 0 61 0
simundump kpool /kinetics/TrKB/TrKB 0 0.0 0 0 0 158512.8011825 0 0 634081.3154375 0 /kinetics/geometry 3 21 2 61 0
simundump kpool /kinetics/TrKB/BDNF_TrKB2_clx 0 0.0 0 0 0 0.0 0 0 634081.3154375 0 /kinetics/geometry 38 21 4 61 0
simundump kpool /kinetics/TrKB/BDNF_TrKB_clx 0 0.0 0 0 0 0.0 0 0 634081.3154375 0 /kinetics/geometry 45 21 6 61 0
simundump kpool /kinetics/TrKB/BDNF_TrKB2_p_clx 0 0.0 0 0 0 0.0 0 0 634081.3154375 0 /kinetics/geometry red 21 8 61 0
simundump kpool /kinetics/BDNF/BDNF 0 0.0 0 0 0 31.704567617000002 0 0 634081.3154375 4 /kinetics/geometry 44 27 120 61 0
simundump kreac /kinetics/Sos/SHC_p_dephospho 0 0.0016667 0.0 "" white 7 1 23 0
simundump kreac /kinetics/TrKB/Autophos_TrKB 0 0.02 0.0 "" white 21 1 63 0
simundump kreac /kinetics/TrKB/Dimeriz_TrKB 0 1.5770801798662484e-06 0.02 "" white 21 3 63 0
simundump kreac /kinetics/TrKB/Ligand_binding 0 1.577179812198036e-06 0.05 "" white 21 5 63 0
simundump kreac /kinetics/TrKB/LR_Internalize 0 0.01 0.0 "" white 21 7 63 0
simundump kreac /kinetics/TrKB/LR_cycling 0 0.001 0.001 "" white 21 9 63 0
simundump kenz /kinetics/TrKB/BDNF_TrKB2_p_clx/SHC_phospho 0 0 0 0.0 0 634081.3154375 2.7261425802267464e-06 1.2 0.3 0 0 "" red red "" 8 64 0
simundump xgraph /graphs/conc1 0 0 99 0.001 0.999 0
simundump xgraph /graphs/conc2 0 0 100 0 1 0
 simundump xgraph /moregraphs/conc3 0 0 100 0 1 0
simundump xgraph /moregraphs/conc4 0 0 100 0 1 0
 simundump xcoredraw /edit/draw 0 -6 4 -2 6
simundump xtree /edit/draw/tree 0 \
  /kinetics/#[],/kinetics/#[]/#[],/kinetics/#[]/#[]/#[][TYPE!=proto],/kinetics/#[]/#[]/#[][TYPE!=linkinfo]/##[] "edit_elm.D <v>; drag_from_edit.w <d> <S> <x> <y> <z>" auto 0.6
simundump xtext /file/notes 0 1
addmsg /kinetics/Sos/SHC_p /kinetics/Sos/SHC_p_dephospho SUBSTRATE n 
addmsg /kinetics/Sos/SHC_p_dephospho /kinetics/Sos/SHC_p REAC A B 
addmsg /kinetics/Sos/SHC /kinetics/Sos/SHC_p_dephospho PRODUCT n 
addmsg /kinetics/Sos/SHC_p_dephospho /kinetics/Sos/SHC REAC B A
addmsg /kinetics/TrKB/BDNF_TrKB2_clx /kinetics/TrKB/Autophos_TrKB SUBSTRATE n 
addmsg /kinetics/TrKB/Autophos_TrKB /kinetics/TrKB/BDNF_TrKB2_clx REAC A B 
addmsg /kinetics/TrKB/BDNF_TrKB2_p_clx /kinetics/TrKB/Autophos_TrKB PRODUCT n 
addmsg /kinetics/TrKB/Autophos_TrKB /kinetics/TrKB/BDNF_TrKB2_p_clx REAC B A
addmsg /kinetics/TrKB/TrKB /kinetics/TrKB/Dimeriz_TrKB SUBSTRATE n 
addmsg /kinetics/TrKB/Dimeriz_TrKB /kinetics/TrKB/TrKB REAC A B 
addmsg /kinetics/TrKB/BDNF_TrKB_clx /kinetics/TrKB/Dimeriz_TrKB SUBSTRATE n 
addmsg /kinetics/TrKB/Dimeriz_TrKB /kinetics/TrKB/BDNF_TrKB_clx REAC A B 
addmsg /kinetics/TrKB/BDNF_TrKB2_clx /kinetics/TrKB/Dimeriz_TrKB PRODUCT n 
addmsg /kinetics/TrKB/Dimeriz_TrKB /kinetics/TrKB/BDNF_TrKB2_clx REAC B A
addmsg /kinetics/TrKB/TrKB /kinetics/TrKB/Ligand_binding SUBSTRATE n 
addmsg /kinetics/TrKB/Ligand_binding /kinetics/TrKB/TrKB REAC A B 
addmsg /kinetics/BDNF/BDNF /kinetics/TrKB/Ligand_binding SUBSTRATE n 
addmsg /kinetics/TrKB/Ligand_binding /kinetics/BDNF/BDNF REAC A B 
addmsg /kinetics/TrKB/BDNF_TrKB_clx /kinetics/TrKB/Ligand_binding PRODUCT n 
addmsg /kinetics/TrKB/Ligand_binding /kinetics/TrKB/BDNF_TrKB_clx REAC B A
addmsg /kinetics/TrKB/BDNF_TrKB2_p_clx /kinetics/TrKB/LR_Internalize SUBSTRATE n 
addmsg /kinetics/TrKB/LR_Internalize /kinetics/TrKB/BDNF_TrKB2_p_clx REAC A B 
addmsg /kinetics/TrKB/Int_BDNF_TrKB2_p_clx /kinetics/TrKB/LR_Internalize PRODUCT n 
addmsg /kinetics/TrKB/LR_Internalize /kinetics/TrKB/Int_BDNF_TrKB2_p_clx REAC B A
addmsg /kinetics/TrKB/Int_BDNF_TrKB2_p_clx /kinetics/TrKB/LR_Internalize PRODUCT n 
addmsg /kinetics/TrKB/LR_Internalize /kinetics/TrKB/Int_BDNF_TrKB2_p_clx REAC B A
addmsg /kinetics/TrKB/Int_BDNF_TrKB2_p_clx /kinetics/TrKB/LR_cycling SUBSTRATE n 
addmsg /kinetics/TrKB/LR_cycling /kinetics/TrKB/Int_BDNF_TrKB2_p_clx REAC A B 
addmsg /kinetics/TrKB/TrKB /kinetics/TrKB/LR_cycling PRODUCT n 
addmsg /kinetics/TrKB/LR_cycling /kinetics/TrKB/TrKB REAC B A
addmsg /kinetics/Sos/SHC /kinetics/TrKB/BDNF_TrKB2_p_clx/SHC_phospho SUBSTRATE n 
addmsg /kinetics/TrKB/BDNF_TrKB2_p_clx/SHC_phospho /kinetics/Sos/SHC REAC sA B 
addmsg /kinetics/TrKB/BDNF_TrKB2_p_clx/SHC_phospho /kinetics/Sos/SHC_p MM_PRD pA
addmsg /kinetics/TrKB/BDNF_TrKB2_p_clx /kinetics/TrKB/BDNF_TrKB2_p_clx/SHC_phospho ENZYME n
addmsg /kinetics/TrKB/BDNF_TrKB2_p_clx/SHC_phospho /kinetics/TrKB/BDNF_TrKB2_p_clx REAC eA B

enddump
 // End of dump
call /kinetics/Sos/SHC/notes LOAD \ 
"There are 2 isoforms: 52 KDa and 46 KDa (See Okada et al JBC 270:35 pp 20737 1995). They are acted up on by the EGFR in very similar ways, and apparently both bind Grb2 similarly, so we'll bundle them together here. Sasaoka et al JBC 269:51 pp 32621 1994 show immunoprecs where it looks like there is at least as much Shc as Grb2. So we'll tentatively say there is 1 uM of Shc."
call /kinetics/Sos/SHC_p_dephospho/notes LOAD \ 
"Time course of decline of phosph is 20 min. Part of this is the turnoff time of the EGFR itself. Lets assume a tau of 10 min for this dephosph. It may be wildly off."
complete_loading
