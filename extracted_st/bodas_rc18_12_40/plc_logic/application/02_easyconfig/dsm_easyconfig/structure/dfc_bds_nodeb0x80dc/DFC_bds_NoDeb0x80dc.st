(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80dc'}
TYPE DFC_bds_NoDeb0x80dc : STRUCT
        DTC            : UDINT := 16#80DC00;
        DFCid          : UINT  := 22;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
