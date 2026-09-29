(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x810f'}
TYPE DFC_bds_NoDeb0x810f :
STRUCT
	DTC: UDINT := 16#810F00;
	DFCid: UINT := 73;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
