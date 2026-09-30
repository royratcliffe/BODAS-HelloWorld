(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80e1'}
TYPE DFC_bds_NoDeb0x80e1 : STRUCT
        DTC            : UDINT := 16#80E100;
        DFCid          : UINT  := 27;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
