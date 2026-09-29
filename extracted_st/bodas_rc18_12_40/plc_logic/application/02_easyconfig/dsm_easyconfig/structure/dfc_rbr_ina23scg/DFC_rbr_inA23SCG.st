(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_inA23SCG'}
TYPE DFC_rbr_inA23SCG :
STRUCT
	DTC: UDINT := 16#130F00;
	DFCid: UINT := 223;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
