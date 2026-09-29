(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8101'}
TYPE DFC_bds_NoDeb0x8101 :
STRUCT
	DTC: UDINT := 16#810100;
	DFCid: UINT := 59;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
