(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80a5'}
TYPE DFC_bds_NoDeb0x80a5 : STRUCT
        DTC            : UDINT := 16#80A500;
        DFCid          : UINT  := 172;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
