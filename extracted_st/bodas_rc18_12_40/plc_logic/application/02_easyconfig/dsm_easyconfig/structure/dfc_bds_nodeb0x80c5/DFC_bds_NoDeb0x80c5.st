(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80c5'}
TYPE DFC_bds_NoDeb0x80c5 :
STRUCT
	DTC: UDINT := 16#80C500;
	DFCid: UINT := 204;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
