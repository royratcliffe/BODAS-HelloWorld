(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80b8'}
TYPE DFC_bds_NoDeb0x80b8 :
STRUCT
	DTC: UDINT := 16#80B800;
	DFCid: UINT := 191;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
