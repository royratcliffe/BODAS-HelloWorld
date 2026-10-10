(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80bf'}
TYPE DFC_bds_NoDeb0x80bf : STRUCT
        DTC            : UDINT := 16#80BF00;
        DFCid          : UINT  := 198;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
