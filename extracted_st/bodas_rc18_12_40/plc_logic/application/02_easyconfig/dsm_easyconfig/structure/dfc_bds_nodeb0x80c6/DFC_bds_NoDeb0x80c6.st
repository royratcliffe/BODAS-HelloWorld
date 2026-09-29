(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80c6'}
TYPE DFC_bds_NoDeb0x80c6 :
STRUCT
	DTC: UDINT := 16#80C600;
	DFCid: UINT := 205;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
