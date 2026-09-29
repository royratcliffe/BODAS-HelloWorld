(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8083'}
TYPE DFC_bds_NoDeb0x8083 :
STRUCT
	DTC: UDINT := 16#808300;
	DFCid: UINT := 138;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
