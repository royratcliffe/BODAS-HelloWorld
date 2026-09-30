(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8121'}
TYPE DFC_bds_NoDeb0x8121 : STRUCT
        DTC            : UDINT := 16#812100;
        DFCid          : UINT  := 91;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
