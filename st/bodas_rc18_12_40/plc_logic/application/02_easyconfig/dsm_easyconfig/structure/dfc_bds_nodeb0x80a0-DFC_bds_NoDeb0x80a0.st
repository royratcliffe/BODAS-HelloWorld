(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80a0'}
TYPE DFC_bds_NoDeb0x80a0 : STRUCT
        DTC            : UDINT := 16#80A000;
        DFCid          : UINT  := 167;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
