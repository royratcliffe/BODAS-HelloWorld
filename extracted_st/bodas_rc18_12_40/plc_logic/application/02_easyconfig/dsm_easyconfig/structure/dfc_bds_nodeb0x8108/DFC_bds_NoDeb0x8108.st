(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8108'}
TYPE DFC_bds_NoDeb0x8108 :
STRUCT
	DTC: UDINT := 16#810800;
	DFCid: UINT := 66;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
