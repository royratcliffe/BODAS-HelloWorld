(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_canGetDataboxParam'}
TYPE DFC_rbr_canGetDataboxParam : STRUCT
        DTC            : UDINT := 16#020200;
        DFCid          : UINT  := 826;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
