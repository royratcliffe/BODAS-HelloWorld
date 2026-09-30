(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80d7'}
TYPE DFC_bds_NoDeb0x80d7 : STRUCT
        DTC            : UDINT := 16#80D700;
        DFCid          : UINT  := 17;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
