(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8087'}
TYPE DFC_bds_NoDeb0x8087 :
STRUCT
	DTC: UDINT := 16#808700;
	DFCid: UINT := 142;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
