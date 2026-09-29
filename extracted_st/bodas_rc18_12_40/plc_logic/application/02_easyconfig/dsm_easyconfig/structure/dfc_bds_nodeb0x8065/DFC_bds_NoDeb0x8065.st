(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8065'}
TYPE DFC_bds_NoDeb0x8065 :
STRUCT
	DTC: UDINT := 16#806500;
	DFCid: UINT := 108;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
