(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80a7'}
TYPE DFC_bds_NoDeb0x80a7 :
STRUCT
	DTC: UDINT := 16#80A700;
	DFCid: UINT := 174;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
