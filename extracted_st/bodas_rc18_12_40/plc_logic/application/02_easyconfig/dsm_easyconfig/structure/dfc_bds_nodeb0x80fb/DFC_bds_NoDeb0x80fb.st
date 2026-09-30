(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80fb'}
TYPE DFC_bds_NoDeb0x80fb : STRUCT
        DTC            : UDINT := 16#80FB00;
        DFCid          : UINT  := 53;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
