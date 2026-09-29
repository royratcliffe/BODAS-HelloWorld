(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x811f'}
TYPE DFC_bds_NoDeb0x811f :
STRUCT
	DTC: UDINT := 16#811F00;
	DFCid: UINT := 89;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
