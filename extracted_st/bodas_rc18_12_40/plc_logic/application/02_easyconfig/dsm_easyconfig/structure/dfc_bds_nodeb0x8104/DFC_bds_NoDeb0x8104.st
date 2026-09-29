(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8104'}
TYPE DFC_bds_NoDeb0x8104 :
STRUCT
	DTC: UDINT := 16#810400;
	DFCid: UINT := 62;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
