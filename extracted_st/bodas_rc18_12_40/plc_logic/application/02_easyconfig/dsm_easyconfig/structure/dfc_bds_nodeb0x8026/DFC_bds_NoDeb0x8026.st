(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8026'}
TYPE DFC_bds_NoDeb0x8026 :
STRUCT
	DTC: UDINT := 16#802600;
	DFCid: UINT := 759;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
