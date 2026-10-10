(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8038'}
TYPE DFC_bds_NoDeb0x8038 : STRUCT
        DTC            : UDINT := 16#803800;
        DFCid          : UINT  := 777;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
