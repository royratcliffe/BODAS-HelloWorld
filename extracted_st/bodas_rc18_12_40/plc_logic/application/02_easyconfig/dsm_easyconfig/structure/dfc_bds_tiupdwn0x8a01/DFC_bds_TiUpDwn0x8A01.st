(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_TiUpDwn0x8A01'}
TYPE DFC_bds_TiUpDwn0x8A01 : STRUCT
        DTC            : UDINT := 16#8A0100;
        DFCid          : UINT  := 206;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
