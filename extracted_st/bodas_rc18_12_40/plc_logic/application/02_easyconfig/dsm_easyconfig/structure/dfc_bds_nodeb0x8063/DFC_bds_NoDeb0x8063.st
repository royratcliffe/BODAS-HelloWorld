(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8063'}
TYPE DFC_bds_NoDeb0x8063 :
STRUCT
	DTC: UDINT := 16#806300;
	DFCid: UINT := 106;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
