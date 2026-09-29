(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8066'}
TYPE DFC_bds_NoDeb0x8066 :
STRUCT
	DTC: UDINT := 16#806600;
	DFCid: UINT := 109;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
