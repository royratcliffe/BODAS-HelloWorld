(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x802d'}
TYPE DFC_bds_NoDeb0x802d :
STRUCT
	DTC: UDINT := 16#802D00;
	DFCid: UINT := 766;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
