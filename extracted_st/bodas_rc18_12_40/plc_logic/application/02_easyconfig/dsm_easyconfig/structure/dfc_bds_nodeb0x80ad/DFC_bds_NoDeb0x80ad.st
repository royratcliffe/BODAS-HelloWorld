(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80ad'}
TYPE DFC_bds_NoDeb0x80ad :
STRUCT
	DTC: UDINT := 16#80AD00;
	DFCid: UINT := 180;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
