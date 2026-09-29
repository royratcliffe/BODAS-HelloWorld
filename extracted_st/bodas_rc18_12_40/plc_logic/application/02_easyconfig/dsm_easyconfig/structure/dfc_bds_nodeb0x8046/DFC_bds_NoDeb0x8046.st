(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8046'}
TYPE DFC_bds_NoDeb0x8046 :
STRUCT
	DTC: UDINT := 16#804600;
	DFCid: UINT := 791;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
