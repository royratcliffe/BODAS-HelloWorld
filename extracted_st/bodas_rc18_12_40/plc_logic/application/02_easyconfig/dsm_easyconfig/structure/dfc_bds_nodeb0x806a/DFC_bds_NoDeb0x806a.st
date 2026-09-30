(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x806a'}
TYPE DFC_bds_NoDeb0x806a : STRUCT
        DTC            : UDINT := 16#806A00;
        DFCid          : UINT  := 113;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
