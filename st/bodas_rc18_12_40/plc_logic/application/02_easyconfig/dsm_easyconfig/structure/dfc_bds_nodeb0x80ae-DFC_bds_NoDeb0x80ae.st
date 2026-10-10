(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80ae'}
TYPE DFC_bds_NoDeb0x80ae : STRUCT
        DTC            : UDINT := 16#80AE00;
        DFCid          : UINT  := 181;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
