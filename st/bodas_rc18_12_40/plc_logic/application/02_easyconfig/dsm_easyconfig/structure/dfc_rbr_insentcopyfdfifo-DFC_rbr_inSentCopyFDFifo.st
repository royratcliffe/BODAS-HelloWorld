(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_inSentCopyFDFifo'}
TYPE DFC_rbr_inSentCopyFDFifo : STRUCT
        DTC            : UDINT := 16#039800;
        DFCid          : UINT  := 904;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
