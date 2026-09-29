(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8110'}
TYPE DFC_bds_NoDeb0x8110 :
STRUCT
	DTC: UDINT := 16#811000;
	DFCid: UINT := 74;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
