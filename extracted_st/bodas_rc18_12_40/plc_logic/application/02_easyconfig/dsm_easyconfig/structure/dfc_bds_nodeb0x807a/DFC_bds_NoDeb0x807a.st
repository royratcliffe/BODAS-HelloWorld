(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x807a'}
TYPE DFC_bds_NoDeb0x807a :
STRUCT
	DTC: UDINT := 16#807A00;
	DFCid: UINT := 129;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
