(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8C02'}
TYPE DFC_bds_NoDeb0x8C02 : STRUCT
        DTC            : UDINT := 16#8C0200;
        DFCid          : UINT  := 821;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
