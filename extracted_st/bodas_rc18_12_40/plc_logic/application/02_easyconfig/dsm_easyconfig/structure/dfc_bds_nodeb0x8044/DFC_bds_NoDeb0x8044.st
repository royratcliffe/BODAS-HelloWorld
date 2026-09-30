(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8044'}
TYPE DFC_bds_NoDeb0x8044 : STRUCT
        DTC            : UDINT := 16#804400;
        DFCid          : UINT  := 789;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
