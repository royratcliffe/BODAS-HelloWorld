(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x809f'}
TYPE DFC_bds_NoDeb0x809f :
STRUCT
	DTC: UDINT := 16#809F00;
	DFCid: UINT := 166;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
