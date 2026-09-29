(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80e9'}
TYPE DFC_bds_NoDeb0x80e9 :
STRUCT
	DTC: UDINT := 16#80E900;
	DFCid: UINT := 35;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
