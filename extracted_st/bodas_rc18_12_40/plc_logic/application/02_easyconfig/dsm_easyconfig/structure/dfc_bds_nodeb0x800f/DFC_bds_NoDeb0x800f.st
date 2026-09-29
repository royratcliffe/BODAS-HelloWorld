(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x800f'}
TYPE DFC_bds_NoDeb0x800f :
STRUCT
	DTC: UDINT := 16#800F00;
	DFCid: UINT := 736;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
