(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x803c'}
TYPE DFC_bds_NoDeb0x803c :
STRUCT
	DTC: UDINT := 16#803C00;
	DFCid: UINT := 781;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
