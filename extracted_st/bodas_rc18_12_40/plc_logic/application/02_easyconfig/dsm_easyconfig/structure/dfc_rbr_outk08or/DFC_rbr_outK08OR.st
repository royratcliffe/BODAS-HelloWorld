(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_outK08OR'}
TYPE DFC_rbr_outK08OR :
STRUCT
	DTC: UDINT := 16#040900;
	DFCid: UINT := 631;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
