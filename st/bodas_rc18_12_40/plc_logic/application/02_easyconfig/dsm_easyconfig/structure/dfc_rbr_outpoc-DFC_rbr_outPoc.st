(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_outPoc'}
TYPE DFC_rbr_outPoc : STRUCT
        DTC            : UDINT := 16#048600;
        DFCid          : UINT  := 1063;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
