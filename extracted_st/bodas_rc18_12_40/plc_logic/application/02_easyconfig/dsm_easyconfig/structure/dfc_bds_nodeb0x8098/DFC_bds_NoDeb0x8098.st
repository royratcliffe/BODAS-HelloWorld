(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8098'}
TYPE DFC_bds_NoDeb0x8098 : STRUCT
        DTC            : UDINT := 16#809800;
        DFCid          : UINT  := 159;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
