(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8056'}
TYPE DFC_bds_NoDeb0x8056 :
STRUCT
	DTC: UDINT := 16#805600;
	DFCid: UINT := 807;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
