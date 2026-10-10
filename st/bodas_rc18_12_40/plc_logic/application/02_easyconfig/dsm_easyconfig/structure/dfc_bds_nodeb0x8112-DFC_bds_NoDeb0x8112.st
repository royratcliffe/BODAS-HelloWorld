(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8112'}
TYPE DFC_bds_NoDeb0x8112 : STRUCT
        DTC            : UDINT := 16#811200;
        DFCid          : UINT  := 76;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
