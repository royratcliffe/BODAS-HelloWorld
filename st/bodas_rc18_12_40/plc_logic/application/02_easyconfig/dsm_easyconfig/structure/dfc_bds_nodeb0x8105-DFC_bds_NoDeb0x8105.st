(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8105'}
TYPE DFC_bds_NoDeb0x8105 : STRUCT
        DTC            : UDINT := 16#810500;
        DFCid          : UINT  := 63;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
