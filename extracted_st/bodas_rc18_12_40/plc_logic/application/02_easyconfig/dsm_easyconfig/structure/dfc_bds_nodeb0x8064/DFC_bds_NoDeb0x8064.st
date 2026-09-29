(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8064'}
TYPE DFC_bds_NoDeb0x8064 :
STRUCT
	DTC: UDINT := 16#806400;
	DFCid: UINT := 107;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
