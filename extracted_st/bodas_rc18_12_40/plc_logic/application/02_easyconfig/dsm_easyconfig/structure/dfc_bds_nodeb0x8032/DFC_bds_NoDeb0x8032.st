(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8032'}
TYPE DFC_bds_NoDeb0x8032 : STRUCT
        DTC            : UDINT := 16#803200;
        DFCid          : UINT  := 771;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
