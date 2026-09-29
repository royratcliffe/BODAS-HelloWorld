(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8090'}
TYPE DFC_bds_NoDeb0x8090 :
STRUCT
	DTC: UDINT := 16#809000;
	DFCid: UINT := 151;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
