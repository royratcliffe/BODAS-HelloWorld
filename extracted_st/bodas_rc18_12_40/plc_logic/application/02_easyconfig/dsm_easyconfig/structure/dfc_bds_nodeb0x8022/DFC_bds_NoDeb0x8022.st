(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8022'}
TYPE DFC_bds_NoDeb0x8022 :
STRUCT
	DTC: UDINT := 16#802200;
	DFCid: UINT := 755;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
