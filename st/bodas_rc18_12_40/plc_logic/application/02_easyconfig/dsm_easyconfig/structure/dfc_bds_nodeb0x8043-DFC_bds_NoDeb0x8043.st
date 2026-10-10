(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8043'}
TYPE DFC_bds_NoDeb0x8043 : STRUCT
        DTC            : UDINT := 16#804300;
        DFCid          : UINT  := 788;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
