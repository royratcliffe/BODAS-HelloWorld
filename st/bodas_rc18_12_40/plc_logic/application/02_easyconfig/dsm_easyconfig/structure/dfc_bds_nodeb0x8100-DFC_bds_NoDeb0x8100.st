(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8100'}
TYPE DFC_bds_NoDeb0x8100 : STRUCT
        DTC            : UDINT := 16#810000;
        DFCid          : UINT  := 58;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
