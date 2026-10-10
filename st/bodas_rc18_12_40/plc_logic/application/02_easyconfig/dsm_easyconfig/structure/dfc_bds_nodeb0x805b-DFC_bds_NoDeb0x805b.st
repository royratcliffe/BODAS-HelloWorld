(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x805b'}
TYPE DFC_bds_NoDeb0x805b : STRUCT
        DTC            : UDINT := 16#805B00;
        DFCid          : UINT  := 812;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
