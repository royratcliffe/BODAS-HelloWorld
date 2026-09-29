(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80ce'}
TYPE DFC_bds_NoDeb0x80ce :
STRUCT
	DTC: UDINT := 16#80CE00;
	DFCid: UINT := 8;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
