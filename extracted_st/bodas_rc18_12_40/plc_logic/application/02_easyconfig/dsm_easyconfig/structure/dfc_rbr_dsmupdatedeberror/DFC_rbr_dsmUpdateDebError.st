(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_dsmUpdateDebError'}
TYPE DFC_rbr_dsmUpdateDebError :
STRUCT
	DTC: UDINT := 16#070800;
	DFCid: UINT := 878;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
