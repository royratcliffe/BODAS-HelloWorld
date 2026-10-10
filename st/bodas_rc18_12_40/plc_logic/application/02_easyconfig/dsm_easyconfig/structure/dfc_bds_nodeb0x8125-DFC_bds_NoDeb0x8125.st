(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8125'}
TYPE DFC_bds_NoDeb0x8125 : STRUCT
        DTC            : UDINT := 16#812500;
        DFCid          : UINT  := 95;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
