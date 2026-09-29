(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80a1'}
TYPE DFC_bds_NoDeb0x80a1 :
STRUCT
	DTC: UDINT := 16#80A100;
	DFCid: UINT := 168;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
