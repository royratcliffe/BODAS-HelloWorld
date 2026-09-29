(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8023'}
TYPE DFC_bds_NoDeb0x8023 :
STRUCT
	DTC: UDINT := 16#802300;
	DFCid: UINT := 756;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
