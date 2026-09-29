(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8097'}
TYPE DFC_bds_NoDeb0x8097 :
STRUCT
	DTC: UDINT := 16#809700;
	DFCid: UINT := 158;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
