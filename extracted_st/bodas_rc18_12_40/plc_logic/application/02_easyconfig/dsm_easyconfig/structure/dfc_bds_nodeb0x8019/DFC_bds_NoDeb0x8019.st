(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8019'}
TYPE DFC_bds_NoDeb0x8019 :
STRUCT
	DTC: UDINT := 16#801900;
	DFCid: UINT := 746;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
