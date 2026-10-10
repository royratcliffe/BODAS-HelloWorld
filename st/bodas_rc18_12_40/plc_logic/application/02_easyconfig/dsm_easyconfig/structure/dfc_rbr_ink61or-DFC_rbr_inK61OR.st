(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_inK61OR'}
TYPE DFC_rbr_inK61OR : STRUCT
        DTC            : UDINT := 16#034800;
        DFCid          : UINT  := 406;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
