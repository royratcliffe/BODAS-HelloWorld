(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8052'}
TYPE DFC_bds_NoDeb0x8052 : STRUCT
        DTC            : UDINT := 16#805200;
        DFCid          : UINT  := 803;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
