(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8062'}
TYPE DFC_bds_NoDeb0x8062 :
STRUCT
	DTC: UDINT := 16#806200;
	DFCid: UINT := 819;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
