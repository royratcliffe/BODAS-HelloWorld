(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x810c'}
TYPE DFC_bds_NoDeb0x810c : STRUCT
        DTC            : UDINT := 16#810C00;
        DFCid          : UINT  := 70;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
