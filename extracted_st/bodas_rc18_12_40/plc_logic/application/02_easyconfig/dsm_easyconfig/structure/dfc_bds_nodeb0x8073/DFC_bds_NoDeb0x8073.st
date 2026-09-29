(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8073'}
TYPE DFC_bds_NoDeb0x8073 :
STRUCT
	DTC: UDINT := 16#807300;
	DFCid: UINT := 122;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
