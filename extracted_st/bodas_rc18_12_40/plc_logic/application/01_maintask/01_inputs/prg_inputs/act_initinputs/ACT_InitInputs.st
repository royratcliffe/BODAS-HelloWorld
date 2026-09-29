(* --- Implementation --- *)
(* activate FI *)
//bds_in_fi_cfg(bds_in_fi_signal_te.K54_VI, STD_OFF);

(* DST Sensor *)
(* BDL API FUNCTION call TO configure DST sensor instance *)
bds_snsrDst_cfgSpdAndDir(bds_snsrDst_inst_te.SpdSnsr_E, 75);
