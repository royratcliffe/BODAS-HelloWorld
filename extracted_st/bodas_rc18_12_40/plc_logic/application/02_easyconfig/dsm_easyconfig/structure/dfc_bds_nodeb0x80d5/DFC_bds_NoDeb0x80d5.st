(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80d5'}
TYPE DFC_bds_NoDeb0x80d5 : STRUCT
        DTC            : UDINT := 16#80D500;
        DFCid          : UINT  := 15;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
