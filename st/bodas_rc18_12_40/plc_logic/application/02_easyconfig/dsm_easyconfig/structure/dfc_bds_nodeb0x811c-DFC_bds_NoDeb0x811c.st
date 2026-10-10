(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x811c'}
TYPE DFC_bds_NoDeb0x811c : STRUCT
        DTC            : UDINT := 16#811C00;
        DFCid          : UINT  := 86;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
