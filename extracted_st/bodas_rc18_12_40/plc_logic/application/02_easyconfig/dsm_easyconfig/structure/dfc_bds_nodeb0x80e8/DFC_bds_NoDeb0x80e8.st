(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80e8'}
TYPE DFC_bds_NoDeb0x80e8 :
STRUCT
	DTC: UDINT := 16#80E800;
	DFCid: UINT := 34;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
