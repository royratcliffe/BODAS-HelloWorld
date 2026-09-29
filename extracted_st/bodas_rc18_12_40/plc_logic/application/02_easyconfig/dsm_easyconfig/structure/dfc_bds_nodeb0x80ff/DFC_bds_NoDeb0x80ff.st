(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80ff'}
TYPE DFC_bds_NoDeb0x80ff :
STRUCT
	DTC: UDINT := 16#80FF00;
	DFCid: UINT := 57;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
