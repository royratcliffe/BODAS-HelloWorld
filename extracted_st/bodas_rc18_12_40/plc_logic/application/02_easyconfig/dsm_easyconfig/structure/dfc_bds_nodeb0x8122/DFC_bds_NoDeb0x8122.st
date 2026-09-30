(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8122'}
TYPE DFC_bds_NoDeb0x8122 : STRUCT
        DTC            : UDINT := 16#812200;
        DFCid          : UINT  := 92;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
