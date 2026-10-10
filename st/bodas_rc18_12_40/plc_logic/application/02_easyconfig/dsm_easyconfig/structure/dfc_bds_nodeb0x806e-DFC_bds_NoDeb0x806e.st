(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x806e'}
TYPE DFC_bds_NoDeb0x806e : STRUCT
        DTC            : UDINT := 16#806E00;
        DFCid          : UINT  := 117;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
