(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_TiUpDwn0x8A02'}
TYPE DFC_bds_TiUpDwn0x8A02 :
STRUCT
	DTC: UDINT := 16#8A0200;
	DFCid: UINT := 207;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
