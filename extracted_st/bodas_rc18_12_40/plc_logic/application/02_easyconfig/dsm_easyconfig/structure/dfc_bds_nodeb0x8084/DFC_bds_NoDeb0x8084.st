(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8084'}
TYPE DFC_bds_NoDeb0x8084 :
STRUCT
	DTC: UDINT := 16#808400;
	DFCid: UINT := 139;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
