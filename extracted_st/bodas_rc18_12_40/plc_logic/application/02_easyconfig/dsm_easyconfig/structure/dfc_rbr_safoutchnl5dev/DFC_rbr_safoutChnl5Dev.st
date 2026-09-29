(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_safoutChnl5Dev'}
TYPE DFC_rbr_safoutChnl5Dev :
STRUCT
	DTC: UDINT := 16#201700;
	DFCid: UINT := 1113;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
