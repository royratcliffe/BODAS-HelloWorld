(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8109'}
TYPE DFC_bds_NoDeb0x8109 : STRUCT
        DTC            : UDINT := 16#810900;
        DFCid          : UINT  := 67;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
