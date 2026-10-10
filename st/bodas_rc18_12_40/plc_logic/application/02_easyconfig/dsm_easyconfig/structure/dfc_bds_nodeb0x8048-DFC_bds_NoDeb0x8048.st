(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8048'}
TYPE DFC_bds_NoDeb0x8048 : STRUCT
        DTC            : UDINT := 16#804800;
        DFCid          : UINT  := 793;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
