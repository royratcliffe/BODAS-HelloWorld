(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80ac'}
TYPE DFC_bds_NoDeb0x80ac :
STRUCT
	DTC: UDINT := 16#80AC00;
	DFCid: UINT := 179;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
