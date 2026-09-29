(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_MOXEMM_SMU_ALM8_13'}
TYPE DFC_MOXEMM_SMU_ALM8_13 :
STRUCT
	DTC: UDINT := 16#10B900;
	DFCid: UINT := 1284;
	debounceMethod: USINT := NATIVE;
END_STRUCT
END_TYPE
