(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80c9'}
TYPE DFC_bds_NoDeb0x80c9 :
STRUCT
	DTC: UDINT := 16#80C900;
	DFCid: UINT := 3;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
