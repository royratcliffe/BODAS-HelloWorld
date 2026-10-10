(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8106'}
TYPE DFC_bds_NoDeb0x8106 : STRUCT
        DTC            : UDINT := 16#810600;
        DFCid          : UINT  := 64;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
