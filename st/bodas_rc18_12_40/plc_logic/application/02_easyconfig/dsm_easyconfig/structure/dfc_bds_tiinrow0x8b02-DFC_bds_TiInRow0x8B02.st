(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_TiInRow0x8B02'}
TYPE DFC_bds_TiInRow0x8B02 : STRUCT
        DTC            : UDINT := 16#8B0200;
        DFCid          : UINT  := 102;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
