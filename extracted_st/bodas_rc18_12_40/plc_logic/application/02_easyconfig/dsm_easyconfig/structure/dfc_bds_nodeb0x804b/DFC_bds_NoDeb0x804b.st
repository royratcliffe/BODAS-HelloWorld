(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x804b'}
TYPE DFC_bds_NoDeb0x804b :
STRUCT
	DTC: UDINT := 16#804B00;
	DFCid: UINT := 796;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
