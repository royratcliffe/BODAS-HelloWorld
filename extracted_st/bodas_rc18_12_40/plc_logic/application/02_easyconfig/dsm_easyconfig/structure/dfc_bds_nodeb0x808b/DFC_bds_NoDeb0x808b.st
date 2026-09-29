(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x808b'}
TYPE DFC_bds_NoDeb0x808b :
STRUCT
	DTC: UDINT := 16#808B00;
	DFCid: UINT := 146;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
