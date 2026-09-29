(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x803e'}
TYPE DFC_bds_NoDeb0x803e :
STRUCT
	DTC: UDINT := 16#803E00;
	DFCid: UINT := 783;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
