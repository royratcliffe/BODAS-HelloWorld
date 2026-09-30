(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8077'}
TYPE DFC_bds_NoDeb0x8077 : STRUCT
        DTC            : UDINT := 16#807700;
        DFCid          : UINT  := 126;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
