(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80a6'}
TYPE DFC_bds_NoDeb0x80a6 : STRUCT
        DTC            : UDINT := 16#80A600;
        DFCid          : UINT  := 173;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
