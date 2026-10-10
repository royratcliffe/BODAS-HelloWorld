(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x805d'}
TYPE DFC_bds_NoDeb0x805d : STRUCT
        DTC            : UDINT := 16#805D00;
        DFCid          : UINT  := 814;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
