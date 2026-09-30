(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80a4'}
TYPE DFC_bds_NoDeb0x80a4 : STRUCT
        DTC            : UDINT := 16#80A400;
        DFCid          : UINT  := 171;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
