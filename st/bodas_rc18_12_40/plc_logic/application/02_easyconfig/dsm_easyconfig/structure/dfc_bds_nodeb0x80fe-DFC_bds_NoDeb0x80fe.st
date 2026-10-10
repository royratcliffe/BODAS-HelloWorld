(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80fe'}
TYPE DFC_bds_NoDeb0x80fe : STRUCT
        DTC            : UDINT := 16#80FE00;
        DFCid          : UINT  := 56;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
