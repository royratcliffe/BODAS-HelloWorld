(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8027'}
TYPE DFC_bds_NoDeb0x8027 : STRUCT
        DTC            : UDINT := 16#802700;
        DFCid          : UINT  := 760;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
