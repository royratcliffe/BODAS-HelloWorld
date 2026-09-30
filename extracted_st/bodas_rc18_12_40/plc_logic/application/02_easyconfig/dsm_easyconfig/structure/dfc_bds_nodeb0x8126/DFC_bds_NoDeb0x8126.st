(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8126'}
TYPE DFC_bds_NoDeb0x8126 : STRUCT
        DTC            : UDINT := 16#812600;
        DFCid          : UINT  := 96;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
