(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_outPodCfgPeriod'}
TYPE DFC_rbr_outPodCfgPeriod :
STRUCT
	DTC: UDINT := 16#048D00;
	DFCid: UINT := 1069;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
