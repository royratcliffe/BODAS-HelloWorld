(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80e7'}
TYPE DFC_bds_NoDeb0x80e7 : STRUCT
        DTC            : UDINT := 16#80E700;
        DFCid          : UINT  := 33;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
