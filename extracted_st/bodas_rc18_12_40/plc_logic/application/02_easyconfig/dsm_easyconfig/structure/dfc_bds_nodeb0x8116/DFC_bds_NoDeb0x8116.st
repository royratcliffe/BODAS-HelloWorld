(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8116'}
TYPE DFC_bds_NoDeb0x8116 :
STRUCT
	DTC: UDINT := 16#811600;
	DFCid: UINT := 80;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
