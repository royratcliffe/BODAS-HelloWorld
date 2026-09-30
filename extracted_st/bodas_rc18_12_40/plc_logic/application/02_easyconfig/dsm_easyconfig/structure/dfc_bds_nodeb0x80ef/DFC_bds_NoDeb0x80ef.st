(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80ef'}
TYPE DFC_bds_NoDeb0x80ef : STRUCT
        DTC            : UDINT := 16#80EF00;
        DFCid          : UINT  := 41;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
