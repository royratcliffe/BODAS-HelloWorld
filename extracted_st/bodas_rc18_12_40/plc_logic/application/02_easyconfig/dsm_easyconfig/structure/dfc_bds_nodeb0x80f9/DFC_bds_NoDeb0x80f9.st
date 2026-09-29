(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80f9'}
TYPE DFC_bds_NoDeb0x80f9 :
STRUCT
	DTC: UDINT := 16#80F900;
	DFCid: UINT := 51;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
