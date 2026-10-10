(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x805f'}
TYPE DFC_bds_NoDeb0x805f : STRUCT
        DTC            : UDINT := 16#805F00;
        DFCid          : UINT  := 816;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
