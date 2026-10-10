(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_rbr_outA04OC'}
TYPE DFC_rbr_outA04OC : STRUCT
        DTC            : UDINT := 16#141000;
        DFCid          : UINT  := 975;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
