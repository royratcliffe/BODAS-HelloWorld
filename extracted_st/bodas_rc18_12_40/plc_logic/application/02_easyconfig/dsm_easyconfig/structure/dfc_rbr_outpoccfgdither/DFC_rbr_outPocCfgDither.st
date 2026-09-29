(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_outPocCfgDither'}
TYPE DFC_rbr_outPocCfgDither :
STRUCT
	DTC: UDINT := 16#048900;
	DFCid: UINT := 1065;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
