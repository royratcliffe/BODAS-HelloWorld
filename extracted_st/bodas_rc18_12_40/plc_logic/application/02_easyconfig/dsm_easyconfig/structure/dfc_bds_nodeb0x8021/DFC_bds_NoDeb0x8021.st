(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8021'}
TYPE DFC_bds_NoDeb0x8021 : STRUCT
        DTC            : UDINT := 16#802100;
        DFCid          : UINT  := 754;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
