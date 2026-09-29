(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80f0'}
TYPE DFC_bds_NoDeb0x80f0 :
STRUCT
	DTC: UDINT := 16#80F000;
	DFCid: UINT := 42;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
