(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80ca'}
TYPE DFC_bds_NoDeb0x80ca :
STRUCT
	DTC: UDINT := 16#80CA00;
	DFCid: UINT := 4;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
