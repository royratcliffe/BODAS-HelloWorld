(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8069'}
TYPE DFC_bds_NoDeb0x8069 :
STRUCT
	DTC: UDINT := 16#806900;
	DFCid: UINT := 112;
	debounceMethod: USINT := TIME_UP_DOWN;
END_STRUCT
END_TYPE
