(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80eb'}
TYPE DFC_bds_NoDeb0x80eb :
STRUCT
	DTC: UDINT := 16#80EB00;
	DFCid: UINT := 37;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
