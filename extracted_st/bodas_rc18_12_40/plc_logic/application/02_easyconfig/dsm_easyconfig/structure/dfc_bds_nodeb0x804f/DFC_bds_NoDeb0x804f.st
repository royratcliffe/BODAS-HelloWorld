(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x804f'}
TYPE DFC_bds_NoDeb0x804f :
STRUCT
	DTC: UDINT := 16#804F00;
	DFCid: UINT := 800;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
