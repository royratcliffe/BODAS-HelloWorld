(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8054'}
TYPE DFC_bds_NoDeb0x8054 :
STRUCT
	DTC: UDINT := 16#805400;
	DFCid: UINT := 805;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
