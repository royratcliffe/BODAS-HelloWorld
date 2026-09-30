(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_safoutChnl1Dev'}
TYPE DFC_rbr_safoutChnl1Dev : STRUCT
        DTC            : UDINT := 16#201300;
        DFCid          : UINT  := 1101;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
