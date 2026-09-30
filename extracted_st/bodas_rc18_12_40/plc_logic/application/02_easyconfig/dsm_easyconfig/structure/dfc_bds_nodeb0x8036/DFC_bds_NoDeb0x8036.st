(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8036'}
TYPE DFC_bds_NoDeb0x8036 : STRUCT
        DTC            : UDINT := 16#803600;
        DFCid          : UINT  := 775;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
