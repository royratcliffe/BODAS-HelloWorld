(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_TiUpDwn0x8A03'}
TYPE DFC_bds_TiUpDwn0x8A03 : STRUCT
        DTC            : UDINT := 16#8A0300;
        DFCid          : UINT  := 208;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
