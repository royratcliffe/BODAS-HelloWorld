(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80b2'}
TYPE DFC_bds_NoDeb0x80b2 :
STRUCT
	DTC: UDINT := 16#80B200;
	DFCid: UINT := 185;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
