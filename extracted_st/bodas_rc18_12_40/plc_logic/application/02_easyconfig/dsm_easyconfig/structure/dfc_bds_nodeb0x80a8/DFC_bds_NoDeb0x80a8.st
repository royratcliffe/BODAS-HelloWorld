(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80a8'}
TYPE DFC_bds_NoDeb0x80a8 : STRUCT
        DTC            : UDINT := 16#80A800;
        DFCid          : UINT  := 175;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
