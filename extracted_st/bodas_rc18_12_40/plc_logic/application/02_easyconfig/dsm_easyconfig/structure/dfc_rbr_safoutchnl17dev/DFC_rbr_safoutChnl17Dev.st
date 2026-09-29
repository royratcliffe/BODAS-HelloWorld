(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_safoutChnl17Dev'}
TYPE DFC_rbr_safoutChnl17Dev :
STRUCT
	DTC: UDINT := 16#203100;
	DFCid: UINT := 1096;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
