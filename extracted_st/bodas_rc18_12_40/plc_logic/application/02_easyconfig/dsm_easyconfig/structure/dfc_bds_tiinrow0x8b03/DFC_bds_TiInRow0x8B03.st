(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_TiInRow0x8B03'}
TYPE DFC_bds_TiInRow0x8B03 : STRUCT
        DTC            : UDINT := 16#8B0300;
        DFCid          : UINT  := 103;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
