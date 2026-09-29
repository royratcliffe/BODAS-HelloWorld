(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8089'}
TYPE DFC_bds_NoDeb0x8089 :
STRUCT
	DTC: UDINT := 16#808900;
	DFCid: UINT := 144;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
