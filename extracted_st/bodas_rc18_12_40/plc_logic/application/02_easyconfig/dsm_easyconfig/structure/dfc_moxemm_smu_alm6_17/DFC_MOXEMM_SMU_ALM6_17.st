(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_MOXEMM_SMU_ALM6_17'}
TYPE DFC_MOXEMM_SMU_ALM6_17 :
STRUCT
	DTC: UDINT := 16#109D00;
	DFCid: UINT := 1254;
	debounceMethod: USINT := NATIVE;
END_STRUCT
END_TYPE
