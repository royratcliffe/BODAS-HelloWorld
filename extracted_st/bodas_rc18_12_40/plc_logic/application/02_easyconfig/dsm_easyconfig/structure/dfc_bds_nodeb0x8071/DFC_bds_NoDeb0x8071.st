(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8071'}
TYPE DFC_bds_NoDeb0x8071 :
STRUCT
	DTC: UDINT := 16#807100;
	DFCid: UINT := 120;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
