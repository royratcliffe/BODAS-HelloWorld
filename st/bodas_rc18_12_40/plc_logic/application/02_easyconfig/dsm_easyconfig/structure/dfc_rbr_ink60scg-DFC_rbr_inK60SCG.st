(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_inK60SCG'}
TYPE DFC_rbr_inK60SCG : STRUCT
        DTC            : UDINT := 16#034500;
        DFCid          : UINT  := 403;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
