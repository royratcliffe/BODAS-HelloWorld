(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_safoutIgnoreError'}
TYPE DFC_rbr_safoutIgnoreError :
STRUCT
	DTC: UDINT := 16#200500;
	DFCid: UINT := 1129;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
