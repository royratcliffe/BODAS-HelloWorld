(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80d2'}
TYPE DFC_bds_NoDeb0x80d2 :
STRUCT
	DTC: UDINT := 16#80D200;
	DFCid: UINT := 12;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
