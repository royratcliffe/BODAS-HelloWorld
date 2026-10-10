(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x807e'}
TYPE DFC_bds_NoDeb0x807e : STRUCT
        DTC            : UDINT := 16#807E00;
        DFCid          : UINT  := 133;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
