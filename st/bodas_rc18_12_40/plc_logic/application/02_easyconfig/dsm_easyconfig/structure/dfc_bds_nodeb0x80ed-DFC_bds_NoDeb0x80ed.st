(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80ed'}
TYPE DFC_bds_NoDeb0x80ed : STRUCT
        DTC            : UDINT := 16#80ED00;
        DFCid          : UINT  := 39;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
