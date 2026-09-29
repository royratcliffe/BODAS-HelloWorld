(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x805e'}
TYPE DFC_bds_NoDeb0x805e :
STRUCT
	DTC: UDINT := 16#805E00;
	DFCid: UINT := 815;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
