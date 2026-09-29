(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8070'}
TYPE DFC_bds_NoDeb0x8070 :
STRUCT
	DTC: UDINT := 16#807000;
	DFCid: UINT := 119;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
