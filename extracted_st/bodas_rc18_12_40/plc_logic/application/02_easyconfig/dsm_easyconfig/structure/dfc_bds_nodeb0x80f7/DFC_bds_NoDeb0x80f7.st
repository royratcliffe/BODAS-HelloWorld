(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80f7'}
TYPE DFC_bds_NoDeb0x80f7 :
STRUCT
	DTC: UDINT := 16#80F700;
	DFCid: UINT := 49;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
