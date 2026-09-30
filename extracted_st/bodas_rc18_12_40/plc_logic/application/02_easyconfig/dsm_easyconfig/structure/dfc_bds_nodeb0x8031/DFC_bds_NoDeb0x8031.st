(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8031'}
TYPE DFC_bds_NoDeb0x8031 : STRUCT
        DTC            : UDINT := 16#803100;
        DFCid          : UINT  := 770;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
