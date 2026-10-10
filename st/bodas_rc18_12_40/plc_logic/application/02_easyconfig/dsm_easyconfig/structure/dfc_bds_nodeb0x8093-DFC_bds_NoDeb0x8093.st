(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8093'}
TYPE DFC_bds_NoDeb0x8093 : STRUCT
        DTC            : UDINT := 16#809300;
        DFCid          : UINT  := 154;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
