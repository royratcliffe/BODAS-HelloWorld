(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x810e'}
TYPE DFC_bds_NoDeb0x810e : STRUCT
        DTC            : UDINT := 16#810E00;
        DFCid          : UINT  := 72;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
