(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x802a'}
TYPE DFC_bds_NoDeb0x802a :
STRUCT
	DTC: UDINT := 16#802A00;
	DFCid: UINT := 763;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
