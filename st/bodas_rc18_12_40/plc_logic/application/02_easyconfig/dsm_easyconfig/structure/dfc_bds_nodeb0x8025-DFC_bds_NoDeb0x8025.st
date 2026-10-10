(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8025'}
TYPE DFC_bds_NoDeb0x8025 : STRUCT
        DTC            : UDINT := 16#802500;
        DFCid          : UINT  := 758;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
