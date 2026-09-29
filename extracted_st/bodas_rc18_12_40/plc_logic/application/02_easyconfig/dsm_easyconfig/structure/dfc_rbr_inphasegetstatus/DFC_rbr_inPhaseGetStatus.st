(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_inPhaseGetStatus'}
TYPE DFC_rbr_inPhaseGetStatus :
STRUCT
	DTC: UDINT := 16#039F00;
	DFCid: UINT := 897;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
