(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80d8'}
TYPE DFC_bds_NoDeb0x80d8 : STRUCT
        DTC            : UDINT := 16#80D800;
        DFCid          : UINT  := 18;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
