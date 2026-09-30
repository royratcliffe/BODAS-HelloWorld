(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80af'}
TYPE DFC_bds_NoDeb0x80af : STRUCT
        DTC            : UDINT := 16#80AF00;
        DFCid          : UINT  := 182;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
