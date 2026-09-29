(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8058'}
TYPE DFC_bds_NoDeb0x8058 :
STRUCT
	DTC: UDINT := 16#805800;
	DFCid: UINT := 809;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
