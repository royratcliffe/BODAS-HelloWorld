(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80ea'}
TYPE DFC_bds_NoDeb0x80ea :
STRUCT
	DTC: UDINT := 16#80EA00;
	DFCid: UINT := 36;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
