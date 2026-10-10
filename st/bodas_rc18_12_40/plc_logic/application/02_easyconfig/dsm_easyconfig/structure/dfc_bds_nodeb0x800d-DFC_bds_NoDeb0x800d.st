(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x800d'}
TYPE DFC_bds_NoDeb0x800d : STRUCT
        DTC            : UDINT := 16#800D00;
        DFCid          : UINT  := 734;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
