(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x801e'}
TYPE DFC_bds_NoDeb0x801e :
STRUCT
	DTC: UDINT := 16#801E00;
	DFCid: UINT := 751;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
