(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8C03'}
TYPE DFC_bds_NoDeb0x8C03 :
STRUCT
	DTC: UDINT := 16#8C0300;
	DFCid: UINT := 822;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
