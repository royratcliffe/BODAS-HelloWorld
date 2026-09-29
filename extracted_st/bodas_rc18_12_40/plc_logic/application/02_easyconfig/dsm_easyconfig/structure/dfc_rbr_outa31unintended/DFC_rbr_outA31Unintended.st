(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_outA31Unintended'}
TYPE DFC_rbr_outA31Unintended :
STRUCT
	DTC: UDINT := 16#14BF00;
	DFCid: UINT := 996;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
