(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80db'}
TYPE DFC_bds_NoDeb0x80db :
STRUCT
	DTC: UDINT := 16#80DB00;
	DFCid: UINT := 21;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
