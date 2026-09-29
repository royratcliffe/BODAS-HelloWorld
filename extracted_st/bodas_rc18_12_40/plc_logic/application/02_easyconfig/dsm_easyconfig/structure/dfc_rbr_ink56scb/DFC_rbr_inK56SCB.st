(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_inK56SCB'}
TYPE DFC_rbr_inK56SCB :
STRUCT
	DTC: UDINT := 16#033800;
	DFCid: UINT := 390;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
