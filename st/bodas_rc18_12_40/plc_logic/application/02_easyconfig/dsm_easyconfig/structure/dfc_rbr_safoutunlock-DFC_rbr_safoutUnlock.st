(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_safoutUnlock'}
TYPE DFC_rbr_safoutUnlock : STRUCT
        DTC            : UDINT := 16#200600;
        DFCid          : UINT  := 1131;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
