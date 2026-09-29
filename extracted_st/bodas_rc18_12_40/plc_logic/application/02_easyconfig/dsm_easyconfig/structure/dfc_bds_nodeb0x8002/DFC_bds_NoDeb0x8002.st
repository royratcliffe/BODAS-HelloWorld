(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8002'}
TYPE DFC_bds_NoDeb0x8002 :
STRUCT
	DTC: UDINT := 16#800200;
	DFCid: UINT := 723;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
