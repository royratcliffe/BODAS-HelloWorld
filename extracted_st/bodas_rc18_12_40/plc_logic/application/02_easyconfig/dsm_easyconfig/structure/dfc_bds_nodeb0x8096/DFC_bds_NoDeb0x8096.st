(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8096'}
TYPE DFC_bds_NoDeb0x8096 :
STRUCT
	DTC: UDINT := 16#809600;
	DFCid: UINT := 157;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
