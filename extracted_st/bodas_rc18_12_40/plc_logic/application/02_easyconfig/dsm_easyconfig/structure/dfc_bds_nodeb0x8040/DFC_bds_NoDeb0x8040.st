(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8040'}
TYPE DFC_bds_NoDeb0x8040 :
STRUCT
	DTC: UDINT := 16#804000;
	DFCid: UINT := 785;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
