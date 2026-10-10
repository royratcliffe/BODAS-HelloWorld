(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_outAovResetError'}
TYPE DFC_rbr_outAovResetError : STRUCT
        DTC            : UDINT := 16#049600;
        DFCid          : UINT  := 1024;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
