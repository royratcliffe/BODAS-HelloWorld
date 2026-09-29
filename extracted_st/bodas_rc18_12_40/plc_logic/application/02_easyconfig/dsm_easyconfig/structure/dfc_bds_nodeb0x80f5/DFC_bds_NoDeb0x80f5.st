(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80f5'}
TYPE DFC_bds_NoDeb0x80f5 :
STRUCT
	DTC: UDINT := 16#80F500;
	DFCid: UINT := 47;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
