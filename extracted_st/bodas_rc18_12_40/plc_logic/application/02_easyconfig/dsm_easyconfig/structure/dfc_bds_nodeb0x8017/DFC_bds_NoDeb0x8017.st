(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8017'}
TYPE DFC_bds_NoDeb0x8017 :
STRUCT
	DTC: UDINT := 16#801700;
	DFCid: UINT := 744;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
