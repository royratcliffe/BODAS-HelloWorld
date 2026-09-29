(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8123'}
TYPE DFC_bds_NoDeb0x8123 :
STRUCT
	DTC: UDINT := 16#812300;
	DFCid: UINT := 93;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
