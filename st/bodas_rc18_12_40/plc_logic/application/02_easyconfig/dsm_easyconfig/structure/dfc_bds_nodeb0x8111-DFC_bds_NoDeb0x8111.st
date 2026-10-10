(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8111'}
TYPE DFC_bds_NoDeb0x8111 : STRUCT
        DTC            : UDINT := 16#811100;
        DFCid          : UINT  := 75;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
