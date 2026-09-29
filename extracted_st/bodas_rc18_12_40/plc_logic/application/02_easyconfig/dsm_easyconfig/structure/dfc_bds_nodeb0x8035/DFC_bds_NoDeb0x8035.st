(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8035'}
TYPE DFC_bds_NoDeb0x8035 :
STRUCT
	DTC: UDINT := 16#803500;
	DFCid: UINT := 774;
	debounceMethod: USINT := NO_DEBOUNCE;
END_STRUCT
END_TYPE
