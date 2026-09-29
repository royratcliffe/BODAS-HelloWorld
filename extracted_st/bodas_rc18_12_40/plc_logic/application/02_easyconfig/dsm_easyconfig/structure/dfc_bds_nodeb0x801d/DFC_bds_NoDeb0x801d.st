(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x801d'}
TYPE DFC_bds_NoDeb0x801d :
STRUCT
	DTC: UDINT := 16#801D00;
	DFCid: UINT := 750;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
