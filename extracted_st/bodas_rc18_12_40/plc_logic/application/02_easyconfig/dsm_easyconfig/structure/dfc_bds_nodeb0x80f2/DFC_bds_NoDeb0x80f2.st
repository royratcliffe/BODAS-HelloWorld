(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80f2'}
TYPE DFC_bds_NoDeb0x80f2 :
STRUCT
	DTC: UDINT := 16#80F200;
	DFCid: UINT := 44;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
