(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8080'}
TYPE DFC_bds_NoDeb0x8080 : STRUCT
        DTC            : UDINT := 16#808000;
        DFCid          : UINT  := 135;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
