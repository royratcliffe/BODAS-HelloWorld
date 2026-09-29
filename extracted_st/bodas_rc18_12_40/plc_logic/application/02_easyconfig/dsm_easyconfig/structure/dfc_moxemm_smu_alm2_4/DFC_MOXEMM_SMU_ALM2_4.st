(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_MOXEMM_SMU_ALM2_4'}
TYPE DFC_MOXEMM_SMU_ALM2_4 :
STRUCT
	DTC: UDINT := 16#107E00;
	DFCid: UINT := 1233;
	debounceMethod: USINT := NATIVE;
END_STRUCT
END_TYPE
