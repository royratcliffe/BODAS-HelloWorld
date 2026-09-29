(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8034'}
TYPE DFC_bds_NoDeb0x8034 :
STRUCT
	DTC: UDINT := 16#803400;
	DFCid: UINT := 773;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
