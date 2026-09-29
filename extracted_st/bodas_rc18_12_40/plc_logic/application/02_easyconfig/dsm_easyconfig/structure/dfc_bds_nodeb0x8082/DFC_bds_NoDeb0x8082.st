(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8082'}
TYPE DFC_bds_NoDeb0x8082 :
STRUCT
	DTC: UDINT := 16#808200;
	DFCid: UINT := 137;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
