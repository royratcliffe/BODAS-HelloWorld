(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80be'}
TYPE DFC_bds_NoDeb0x80be :
STRUCT
	DTC: UDINT := 16#80BE00;
	DFCid: UINT := 197;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
