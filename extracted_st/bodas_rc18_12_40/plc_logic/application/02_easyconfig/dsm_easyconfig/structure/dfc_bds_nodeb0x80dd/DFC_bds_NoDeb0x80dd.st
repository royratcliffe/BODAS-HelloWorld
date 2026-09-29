(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80dd'}
TYPE DFC_bds_NoDeb0x80dd :
STRUCT
	DTC: UDINT := 16#80DD00;
	DFCid: UINT := 23;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
