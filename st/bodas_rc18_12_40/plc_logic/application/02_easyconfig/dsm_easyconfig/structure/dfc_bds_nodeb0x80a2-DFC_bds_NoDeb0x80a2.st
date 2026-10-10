(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80a2'}
TYPE DFC_bds_NoDeb0x80a2 : STRUCT
        DTC            : UDINT := 16#80A200;
        DFCid          : UINT  := 169;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
