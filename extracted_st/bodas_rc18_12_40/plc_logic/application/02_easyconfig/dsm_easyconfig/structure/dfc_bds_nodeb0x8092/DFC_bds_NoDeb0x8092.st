(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8092'}
TYPE DFC_bds_NoDeb0x8092 :
STRUCT
	DTC: UDINT := 16#809200;
	DFCid: UINT := 153;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
