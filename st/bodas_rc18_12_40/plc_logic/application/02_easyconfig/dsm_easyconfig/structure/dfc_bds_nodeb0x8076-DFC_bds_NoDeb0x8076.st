(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8076'}
TYPE DFC_bds_NoDeb0x8076 : STRUCT
        DTC            : UDINT := 16#807600;
        DFCid          : UINT  := 125;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
