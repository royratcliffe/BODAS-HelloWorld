(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_inK61ShuntSCB'}
TYPE DFC_rbr_inK61ShuntSCB :
STRUCT
	DTC: UDINT := 16#034B00;
	DFCid: UINT := 409;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
