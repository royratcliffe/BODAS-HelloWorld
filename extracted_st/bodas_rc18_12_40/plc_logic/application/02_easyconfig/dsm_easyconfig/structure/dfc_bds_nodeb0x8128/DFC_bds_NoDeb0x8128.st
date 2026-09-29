(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8128'}
TYPE DFC_bds_NoDeb0x8128 :
STRUCT
	DTC: UDINT := 16#812800;
	DFCid: UINT := 98;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
