(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80ab'}
TYPE DFC_bds_NoDeb0x80ab : STRUCT
        DTC            : UDINT := 16#80AB00;
        DFCid          : UINT  := 178;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
