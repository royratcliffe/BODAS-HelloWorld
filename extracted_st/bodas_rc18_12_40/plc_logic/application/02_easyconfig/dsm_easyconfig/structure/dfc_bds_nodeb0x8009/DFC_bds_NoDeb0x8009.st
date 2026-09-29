(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8009'}
TYPE DFC_bds_NoDeb0x8009 :
STRUCT
	DTC: UDINT := 16#800900;
	DFCid: UINT := 730;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
