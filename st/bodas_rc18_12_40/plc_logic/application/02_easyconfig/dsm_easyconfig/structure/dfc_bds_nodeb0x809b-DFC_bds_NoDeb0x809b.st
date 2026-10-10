(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x809b'}
TYPE DFC_bds_NoDeb0x809b : STRUCT
        DTC            : UDINT := 16#809B00;
        DFCid          : UINT  := 162;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
