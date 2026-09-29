(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8010'}
TYPE DFC_bds_NoDeb0x8010 :
STRUCT
	DTC: UDINT := 16#801000;
	DFCid: UINT := 737;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
