(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8059'}
TYPE DFC_bds_NoDeb0x8059 :
STRUCT
	DTC: UDINT := 16#805900;
	DFCid: UINT := 810;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
