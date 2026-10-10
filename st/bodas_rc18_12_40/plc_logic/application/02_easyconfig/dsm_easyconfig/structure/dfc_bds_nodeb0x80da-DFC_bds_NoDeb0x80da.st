(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80da'}
TYPE DFC_bds_NoDeb0x80da : STRUCT
        DTC            : UDINT := 16#80DA00;
        DFCid          : UINT  := 20;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
