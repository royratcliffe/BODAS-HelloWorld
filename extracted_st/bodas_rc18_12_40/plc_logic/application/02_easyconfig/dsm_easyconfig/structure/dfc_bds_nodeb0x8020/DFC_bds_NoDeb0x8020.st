(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8020'}
TYPE DFC_bds_NoDeb0x8020 :
STRUCT
	DTC: UDINT := 16#802000;
	DFCid: UINT := 753;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
