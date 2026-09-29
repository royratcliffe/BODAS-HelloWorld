(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x804d'}
TYPE DFC_bds_NoDeb0x804d :
STRUCT
	DTC: UDINT := 16#804D00;
	DFCid: UINT := 798;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
