(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8061'}
TYPE DFC_bds_NoDeb0x8061 : STRUCT
        DTC            : UDINT := 16#806100;
        DFCid          : UINT  := 818;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
