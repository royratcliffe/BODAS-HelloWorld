(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8049'}
TYPE DFC_bds_NoDeb0x8049 :
STRUCT
	DTC: UDINT := 16#804900;
	DFCid: UINT := 794;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
