(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x807b'}
TYPE DFC_bds_NoDeb0x807b : STRUCT
        DTC            : UDINT := 16#807B00;
        DFCid          : UINT  := 130;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
