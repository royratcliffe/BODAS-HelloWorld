(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_secAccessDenied_WDBI'}
TYPE DFC_rbr_secAccessDenied_WDBI : STRUCT
        DTC            : UDINT := 16#220A00;
        DFCid          : UINT  := 1134;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
