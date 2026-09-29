(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x806c'}
TYPE DFC_bds_NoDeb0x806c :
STRUCT
	DTC: UDINT := 16#806C00;
	DFCid: UINT := 115;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
