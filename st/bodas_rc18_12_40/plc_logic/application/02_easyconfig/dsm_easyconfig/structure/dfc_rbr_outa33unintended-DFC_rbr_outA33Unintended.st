(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_outA33Unintended'}
TYPE DFC_rbr_outA33Unintended : STRUCT
        DTC            : UDINT := 16#14C100;
        DFCid          : UINT  := 1000;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
