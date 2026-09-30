(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_outPoCfgPwrLs'}
TYPE DFC_rbr_outPoCfgPwrLs : STRUCT
        DTC            : UDINT := 16#049900;
        DFCid          : UINT  := 1058;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
