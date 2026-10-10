(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80a9'}
TYPE DFC_bds_NoDeb0x80a9 : STRUCT
        DTC            : UDINT := 16#80A900;
        DFCid          : UINT  := 176;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
