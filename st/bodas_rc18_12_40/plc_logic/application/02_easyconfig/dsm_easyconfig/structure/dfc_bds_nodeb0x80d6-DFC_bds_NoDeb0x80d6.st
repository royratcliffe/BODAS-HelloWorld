(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80d6'}
TYPE DFC_bds_NoDeb0x80d6 : STRUCT
        DTC            : UDINT := 16#80D600;
        DFCid          : UINT  := 16;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
