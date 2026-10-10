(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8068'}
TYPE DFC_bds_NoDeb0x8068 : STRUCT
        DTC            : UDINT := 16#806800;
        DFCid          : UINT  := 111;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
