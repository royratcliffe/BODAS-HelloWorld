(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x804a'}
TYPE DFC_bds_NoDeb0x804a :
STRUCT
	DTC: UDINT := 16#804A00;
	DFCid: UINT := 795;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
