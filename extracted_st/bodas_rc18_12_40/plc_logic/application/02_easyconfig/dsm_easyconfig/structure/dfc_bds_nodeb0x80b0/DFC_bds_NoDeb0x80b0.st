(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80b0'}
TYPE DFC_bds_NoDeb0x80b0 :
STRUCT
	DTC: UDINT := 16#80B000;
	DFCid: UINT := 183;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
