(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x811e'}
TYPE DFC_bds_NoDeb0x811e :
STRUCT
	DTC: UDINT := 16#811E00;
	DFCid: UINT := 88;
	debounceMethod: USINT := TIME_IN_ROW;
END_STRUCT
END_TYPE
