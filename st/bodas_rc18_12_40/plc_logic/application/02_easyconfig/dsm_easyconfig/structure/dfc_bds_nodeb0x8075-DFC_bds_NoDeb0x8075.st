(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8075'}
TYPE DFC_bds_NoDeb0x8075 : STRUCT
        DTC            : UDINT := 16#807500;
        DFCid          : UINT  := 124;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
