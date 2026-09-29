(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8074'}
TYPE DFC_bds_NoDeb0x8074 :
STRUCT
	DTC: UDINT := 16#807400;
	DFCid: UINT := 123;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
