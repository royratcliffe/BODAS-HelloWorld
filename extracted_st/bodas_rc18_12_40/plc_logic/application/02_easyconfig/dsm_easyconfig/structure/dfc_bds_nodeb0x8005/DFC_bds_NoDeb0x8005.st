(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8005'}
TYPE DFC_bds_NoDeb0x8005 :
STRUCT
	DTC: UDINT := 16#800500;
	DFCid: UINT := 726;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
