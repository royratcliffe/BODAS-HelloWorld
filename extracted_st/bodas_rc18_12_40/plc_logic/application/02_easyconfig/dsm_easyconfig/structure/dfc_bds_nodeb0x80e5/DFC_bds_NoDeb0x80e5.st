(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80e5'}
TYPE DFC_bds_NoDeb0x80e5 :
STRUCT
	DTC: UDINT := 16#80E500;
	DFCid: UINT := 31;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
