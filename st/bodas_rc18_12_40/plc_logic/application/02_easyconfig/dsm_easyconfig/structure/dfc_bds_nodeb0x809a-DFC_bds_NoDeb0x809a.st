(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x809a'}
TYPE DFC_bds_NoDeb0x809a : STRUCT
        DTC            : UDINT := 16#809A00;
        DFCid          : UINT  := 161;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
