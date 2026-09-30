(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x808a'}
TYPE DFC_bds_NoDeb0x808a : STRUCT
        DTC            : UDINT := 16#808A00;
        DFCid          : UINT  := 145;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
