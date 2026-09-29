(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x807d'}
TYPE DFC_bds_NoDeb0x807d :
STRUCT
	DTC: UDINT := 16#807D00;
	DFCid: UINT := 132;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
