(* --- Interface --- *)
TYPE struc_para :
STRUCT
	fctPmp_s16        : INT;
	listCtrlVlv_enu   : enu_listCtrlVlv;	(* parameter DID 0xC002, list {0 - Off; 1 - OnPos; 2 - OnNeg;} *)
	nrCogs_s16        : INT;
	iSpSafout1_u16    : UINT;
	iSpSafout2_u16    : UINT;
	nEngSpd_rpm_au16  : ARRAY[0..2] OF UINT;
	eff_perc_au16     : ARRAY[0..2] OF UINT;
	PrmDbg_struc      : struc_DbgMgrPrm;
	
END_STRUCT
END_TYPE
