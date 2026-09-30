(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x811b'}
TYPE DFC_bds_NoDeb0x811b : STRUCT
        DTC            : UDINT := 16#811B00;
        DFCid          : UINT  := 85;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
