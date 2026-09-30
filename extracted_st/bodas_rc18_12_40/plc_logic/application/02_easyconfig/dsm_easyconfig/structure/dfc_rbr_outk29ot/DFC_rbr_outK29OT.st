(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_outK29OT'}
TYPE DFC_rbr_outK29OT : STRUCT
        DTC            : UDINT := 16#043200;
        DFCid          : UINT  := 673;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
