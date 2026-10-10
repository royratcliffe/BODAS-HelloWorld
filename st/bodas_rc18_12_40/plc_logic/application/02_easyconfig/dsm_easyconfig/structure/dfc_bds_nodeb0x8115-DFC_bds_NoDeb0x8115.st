(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8115'}
TYPE DFC_bds_NoDeb0x8115 : STRUCT
        DTC            : UDINT := 16#811500;
        DFCid          : UINT  := 79;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
