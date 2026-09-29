(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80b9'}
TYPE DFC_bds_NoDeb0x80b9 :
STRUCT
	DTC: UDINT := 16#80B900;
	DFCid: UINT := 192;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
