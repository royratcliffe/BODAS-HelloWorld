(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x804e'}
TYPE DFC_bds_NoDeb0x804e : STRUCT
        DTC            : UDINT := 16#804E00;
        DFCid          : UINT  := 799;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
