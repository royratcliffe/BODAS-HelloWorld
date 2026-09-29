(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x803f'}
TYPE DFC_bds_NoDeb0x803f :
STRUCT
	DTC: UDINT := 16#803F00;
	DFCid: UINT := 784;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
