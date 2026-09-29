(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80d3'}
TYPE DFC_bds_NoDeb0x80d3 :
STRUCT
	DTC: UDINT := 16#80D300;
	DFCid: UINT := 13;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
