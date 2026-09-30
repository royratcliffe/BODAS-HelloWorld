(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80d4'}
TYPE DFC_bds_NoDeb0x80d4 : STRUCT
        DTC            : UDINT := 16#80D400;
        DFCid          : UINT  := 14;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
