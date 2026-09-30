(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8117'}
TYPE DFC_bds_NoDeb0x8117 : STRUCT
        DTC            : UDINT := 16#811700;
        DFCid          : UINT  := 81;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
