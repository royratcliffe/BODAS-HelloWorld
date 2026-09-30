(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80ee'}
TYPE DFC_bds_NoDeb0x80ee : STRUCT
        DTC            : UDINT := 16#80EE00;
        DFCid          : UINT  := 40;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
