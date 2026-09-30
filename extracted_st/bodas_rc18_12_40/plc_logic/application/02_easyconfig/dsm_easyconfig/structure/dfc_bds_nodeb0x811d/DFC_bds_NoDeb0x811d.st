(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x811d'}
TYPE DFC_bds_NoDeb0x811d : STRUCT
        DTC            : UDINT := 16#811D00;
        DFCid          : UINT  := 87;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
