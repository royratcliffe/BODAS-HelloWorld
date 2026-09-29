(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80c8'}
TYPE DFC_bds_NoDeb0x80c8 :
STRUCT
	DTC: UDINT := 16#80C800;
	DFCid: UINT := 2;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
