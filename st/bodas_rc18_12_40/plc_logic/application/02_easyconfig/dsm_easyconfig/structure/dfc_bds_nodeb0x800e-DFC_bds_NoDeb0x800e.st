(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x800e'}
TYPE DFC_bds_NoDeb0x800e : STRUCT
        DTC            : UDINT := 16#800E00;
        DFCid          : UINT  := 735;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
