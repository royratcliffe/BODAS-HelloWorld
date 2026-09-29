(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8030'}
TYPE DFC_bds_NoDeb0x8030 :
STRUCT
	DTC: UDINT := 16#803000;
	DFCid: UINT := 769;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
