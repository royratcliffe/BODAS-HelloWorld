(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x802c'}
TYPE DFC_bds_NoDeb0x802c :
STRUCT
	DTC: UDINT := 16#802C00;
	DFCid: UINT := 765;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
