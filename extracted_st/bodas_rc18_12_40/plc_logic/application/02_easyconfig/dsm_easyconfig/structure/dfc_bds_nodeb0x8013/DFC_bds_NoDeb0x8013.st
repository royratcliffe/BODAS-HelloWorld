(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8013'}
TYPE DFC_bds_NoDeb0x8013 :
STRUCT
	DTC: UDINT := 16#801300;
	DFCid: UINT := 740;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
