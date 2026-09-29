(* --- Implementation --- *)
diagParam_s.diCntlAndDiag_l := TRUE; (* disable outputs *)

(* Disable unused proportional outputs *)
(*bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_K07_E, diagParam_s);*) (* used FOR PropValve *)
(*bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_K09_E, diagParam_s);*) (* Safout HS1 *)
(*bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_K73_E, diagParam_s);*) (* Safout HS2 *)
(*bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_K08_E, diagParam_s);*) (* used as power supply for Control valve *)
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_K29_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_K17_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A32_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A47_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A31_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A48_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A46_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A33_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A34_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A51_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A35_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A53_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A52_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A54_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_K16_E, diagParam_s);
(*bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_K14_E, diagParam_s);*) (* Safout LS *)
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_K15_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A19_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A05_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A20_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A09_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A02_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A17_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_K51_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_K12_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A03_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A18_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A08_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_A07_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_K80_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_K81_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_K82_E, diagParam_s);
bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_K83_E, diagParam_s);

(* Disable unused digital outputs *)
(*bds_outDig_cfgDiag(bds_outDig_K13_E, diagParam_s);*) (* used for CtrlValve *)
bds_outDig_cfgDiag(bds_outDig_signal_te.bds_outDig_A04_E, diagParam_s);
bds_outDig_cfgDiag(bds_outDig_signal_te.bds_outDig_A10_E, diagParam_s);
bds_outDig_cfgDiag(bds_outDig_signal_te.bds_outDig_A50_E, diagParam_s);
bds_outDig_cfgDiag(bds_outDig_signal_te.bds_outDig_A56_E, diagParam_s);
bds_outDig_cfgDiag(bds_outDig_signal_te.bds_outDig_A11_E, diagParam_s);
bds_outDig_cfgDiag(bds_outDig_signal_te.bds_outDig_A55_E, diagParam_s);
bds_outDig_cfgDiag(bds_outDig_signal_te.bds_outDig_A01_E, diagParam_s);
bds_outDig_cfgDiag(bds_outDig_signal_te.bds_outDig_A06_E, diagParam_s);
bds_outDig_cfgDiag(bds_outDig_signal_te.bds_outDig_A16_E, diagParam_s);
bds_outDig_cfgDiag(bds_outDig_signal_te.bds_outDig_A58_E, diagParam_s);
bds_outDig_cfgDiag(bds_outDig_signal_te.bds_outDig_A49_E, diagParam_s);
bds_outDig_cfgDiag(bds_outDig_signal_te.bds_outDig_K84_E, diagParam_s);
bds_outDig_cfgDiag(bds_outDig_signal_te.bds_outDig_K85_E, diagParam_s);
bds_outDig_cfgDiag(bds_outDig_signal_te.bds_outDig_K86_E, diagParam_s);
bds_outDig_cfgDiag(bds_outDig_signal_te.bds_outDig_K87_E, diagParam_s);(* for the visualisation in BODAS-service App --> I/O *)


(* Configure K08 as power supply for K13 Control valve *)
diagParam_s.diFullDiag_l     := TRUE;
diagParam_s.diCntlAndDiag_l  := FALSE;
diagParam_s.diOpenLoadDetn_l := TRUE;
diagParam_s.diNonHotSCDetn_l := FALSE;

bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_K08_E, diagParam_s);
bds_outPwm_setDutyCycle(bds_outPwm_signal_te.bds_outPwm_K08_E, 1000);