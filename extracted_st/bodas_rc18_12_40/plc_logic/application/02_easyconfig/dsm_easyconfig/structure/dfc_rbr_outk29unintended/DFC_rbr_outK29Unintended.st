(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_outK29Unintended'}
TYPE DFC_rbr_outK29Unintended : STRUCT
        DTC            : UDINT := 16#14D400;
        DFCid          : UINT  := 1050;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
