(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80c0'}
TYPE DFC_bds_NoDeb0x80c0 :
STRUCT
	DTC: UDINT := 16#80C000;
	DFCid: UINT := 199;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
