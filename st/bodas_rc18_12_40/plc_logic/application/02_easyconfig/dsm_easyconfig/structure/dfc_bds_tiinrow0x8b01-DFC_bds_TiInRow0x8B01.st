(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_TiInRow0x8B01'}
TYPE DFC_bds_TiInRow0x8B01 : STRUCT
        DTC            : UDINT := 16#8B0100;
        DFCid          : UINT  := 101;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
