(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8078'}
TYPE DFC_bds_NoDeb0x8078 : STRUCT
        DTC            : UDINT := 16#807800;
        DFCid          : UINT  := 127;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
