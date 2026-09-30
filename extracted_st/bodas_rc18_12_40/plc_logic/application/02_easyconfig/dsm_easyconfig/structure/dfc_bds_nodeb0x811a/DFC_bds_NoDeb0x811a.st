(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x811a'}
TYPE DFC_bds_NoDeb0x811a : STRUCT
        DTC            : UDINT := 16#811A00;
        DFCid          : UINT  := 84;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
