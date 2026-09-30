(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_inA36SCG'}
TYPE DFC_rbr_inA36SCG : STRUCT
        DTC            : UDINT := 16#132600;
        DFCid          : UINT  := 246;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
