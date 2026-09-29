(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x800a'}
TYPE DFC_bds_NoDeb0x800a :
STRUCT
	DTC: UDINT := 16#800A00;
	DFCid: UINT := 731;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
