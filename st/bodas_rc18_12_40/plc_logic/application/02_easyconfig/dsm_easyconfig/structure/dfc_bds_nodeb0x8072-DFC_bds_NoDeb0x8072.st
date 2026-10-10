(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8072'}
TYPE DFC_bds_NoDeb0x8072 : STRUCT
        DTC            : UDINT := 16#807200;
        DFCid          : UINT  := 121;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
