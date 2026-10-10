(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8094'}
TYPE DFC_bds_NoDeb0x8094 : STRUCT
        DTC            : UDINT := 16#809400;
        DFCid          : UINT  := 155;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
