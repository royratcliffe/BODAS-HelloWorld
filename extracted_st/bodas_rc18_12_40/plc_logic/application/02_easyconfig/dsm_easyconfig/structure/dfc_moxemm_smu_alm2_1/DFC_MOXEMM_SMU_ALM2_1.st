(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_MOXEMM_SMU_ALM2_1'}
TYPE DFC_MOXEMM_SMU_ALM2_1 :
STRUCT
	DTC: UDINT := 16#107C00;
	DFCid: UINT := 1225;
	debounceMethod: USINT := NATIVE;
END_STRUCT
END_TYPE
