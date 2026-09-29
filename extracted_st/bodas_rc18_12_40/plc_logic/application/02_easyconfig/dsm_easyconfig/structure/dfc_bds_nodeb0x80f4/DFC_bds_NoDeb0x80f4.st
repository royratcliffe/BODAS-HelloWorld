(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80f4'}
TYPE DFC_bds_NoDeb0x80f4 :
STRUCT
	DTC: UDINT := 16#80F400;
	DFCid: UINT := 46;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
