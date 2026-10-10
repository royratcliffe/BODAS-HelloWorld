(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x812a'}
TYPE DFC_bds_NoDeb0x812a : STRUCT
        DTC            : UDINT := 16#812A00;
        DFCid          : UINT  := 100;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
