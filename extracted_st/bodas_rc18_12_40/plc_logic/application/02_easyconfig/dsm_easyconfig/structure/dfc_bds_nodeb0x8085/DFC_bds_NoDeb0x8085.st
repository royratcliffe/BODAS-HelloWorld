(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8085'}
TYPE DFC_bds_NoDeb0x8085 :
STRUCT
	DTC: UDINT := 16#808500;
	DFCid: UINT := 140;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
