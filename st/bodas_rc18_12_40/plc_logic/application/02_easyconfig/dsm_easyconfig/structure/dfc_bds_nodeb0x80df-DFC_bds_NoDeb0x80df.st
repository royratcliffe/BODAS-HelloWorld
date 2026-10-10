(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80df'}
TYPE DFC_bds_NoDeb0x80df : STRUCT
        DTC            : UDINT := 16#80DF00;
        DFCid          : UINT  := 25;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
