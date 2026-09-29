(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8047'}
TYPE DFC_bds_NoDeb0x8047 :
STRUCT
	DTC: UDINT := 16#804700;
	DFCid: UINT := 792;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
