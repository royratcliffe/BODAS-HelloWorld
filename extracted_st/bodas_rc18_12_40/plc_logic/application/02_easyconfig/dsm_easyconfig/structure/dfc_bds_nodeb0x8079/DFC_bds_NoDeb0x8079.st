(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8079'}
TYPE DFC_bds_NoDeb0x8079 : STRUCT
        DTC            : UDINT := 16#807900;
        DFCid          : UINT  := 128;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
