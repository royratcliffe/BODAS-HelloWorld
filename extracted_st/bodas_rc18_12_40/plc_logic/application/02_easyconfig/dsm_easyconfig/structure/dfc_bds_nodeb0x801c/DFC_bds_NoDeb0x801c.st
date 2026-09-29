(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x801c'}
TYPE DFC_bds_NoDeb0x801c :
STRUCT
	DTC: UDINT := 16#801C00;
	DFCid: UINT := 749;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
