(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8028'}
TYPE DFC_bds_NoDeb0x8028 : STRUCT
        DTC            : UDINT := 16#802800;
        DFCid          : UINT  := 761;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
