(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8102'}
TYPE DFC_bds_NoDeb0x8102 : STRUCT
        DTC            : UDINT := 16#810200;
        DFCid          : UINT  := 60;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
