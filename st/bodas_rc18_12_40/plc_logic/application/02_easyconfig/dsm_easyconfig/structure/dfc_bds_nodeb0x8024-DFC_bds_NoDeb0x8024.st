(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8024'}
TYPE DFC_bds_NoDeb0x8024 : STRUCT
        DTC            : UDINT := 16#802400;
        DFCid          : UINT  := 757;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
