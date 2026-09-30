(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80a3'}
TYPE DFC_bds_NoDeb0x80a3 : STRUCT
        DTC            : UDINT := 16#80A300;
        DFCid          : UINT  := 170;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
