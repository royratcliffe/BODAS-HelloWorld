(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_outK16OL'}
TYPE DFC_rbr_outK16OL :
STRUCT
	DTC: UDINT := 16#042800;
	DFCid: UINT := 658;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
