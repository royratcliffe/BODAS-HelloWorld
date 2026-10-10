(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8067'}
TYPE DFC_bds_NoDeb0x8067 : STRUCT
        DTC            : UDINT := 16#806700;
        DFCid          : UINT  := 110;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
