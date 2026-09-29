(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x810d'}
TYPE DFC_bds_NoDeb0x810d :
STRUCT
	DTC: UDINT := 16#810D00;
	DFCid: UINT := 71;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
