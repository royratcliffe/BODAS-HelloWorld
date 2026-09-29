(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_dsmDelErrors'}
TYPE DFC_rbr_dsmDelErrors :
STRUCT
	DTC: UDINT := 16#070700;
	DFCid: UINT := 870;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
