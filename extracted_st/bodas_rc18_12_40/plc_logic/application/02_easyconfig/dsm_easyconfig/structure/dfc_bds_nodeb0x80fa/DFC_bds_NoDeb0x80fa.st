(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80fa'}
TYPE DFC_bds_NoDeb0x80fa : STRUCT
        DTC            : UDINT := 16#80FA00;
        DFCid          : UINT  := 52;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
