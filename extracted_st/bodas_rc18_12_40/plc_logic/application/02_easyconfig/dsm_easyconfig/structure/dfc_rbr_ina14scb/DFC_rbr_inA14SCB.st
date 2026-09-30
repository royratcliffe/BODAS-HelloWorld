(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_inA14SCB'}
TYPE DFC_rbr_inA14SCB : STRUCT
        DTC            : UDINT := 16#130500;
        DFCid          : UINT  := 213;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
