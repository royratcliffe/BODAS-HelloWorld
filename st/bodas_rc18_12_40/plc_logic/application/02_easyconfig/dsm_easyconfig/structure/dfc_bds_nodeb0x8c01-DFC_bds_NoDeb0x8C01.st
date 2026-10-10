(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8C01'}
TYPE DFC_bds_NoDeb0x8C01 : STRUCT
        DTC            : UDINT := 16#8C0100;
        DFCid          : UINT  := 820;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
