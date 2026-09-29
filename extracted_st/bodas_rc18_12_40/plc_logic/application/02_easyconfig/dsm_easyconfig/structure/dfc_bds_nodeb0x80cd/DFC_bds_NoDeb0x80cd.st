(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80cd'}
TYPE DFC_bds_NoDeb0x80cd :
STRUCT
	DTC: UDINT := 16#80CD00;
	DFCid: UINT := 7;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
