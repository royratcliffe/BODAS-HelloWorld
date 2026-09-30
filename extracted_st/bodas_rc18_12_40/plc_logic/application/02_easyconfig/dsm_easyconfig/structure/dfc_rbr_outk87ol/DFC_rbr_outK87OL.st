(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_outK87OL'}
TYPE DFC_rbr_outK87OL : STRUCT
        DTC            : UDINT := 16#045F00;
        DFCid          : UINT  := 716;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
