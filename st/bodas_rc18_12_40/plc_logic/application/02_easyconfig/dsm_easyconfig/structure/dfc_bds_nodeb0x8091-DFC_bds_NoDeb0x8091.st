(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8091'}
TYPE DFC_bds_NoDeb0x8091 : STRUCT
        DTC            : UDINT := 16#809100;
        DFCid          : UINT  := 152;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
