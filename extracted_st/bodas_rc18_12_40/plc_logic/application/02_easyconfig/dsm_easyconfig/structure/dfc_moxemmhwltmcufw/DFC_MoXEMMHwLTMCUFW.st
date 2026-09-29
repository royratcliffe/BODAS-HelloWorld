(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_MoXEMMHwLTMCUFW'}
TYPE DFC_MoXEMMHwLTMCUFW :
STRUCT
	DTC: UDINT := 16#10D200;
	DFCid: UINT := 1299;
	debounceMethod: USINT := NATIVE;
END_STRUCT
END_TYPE
