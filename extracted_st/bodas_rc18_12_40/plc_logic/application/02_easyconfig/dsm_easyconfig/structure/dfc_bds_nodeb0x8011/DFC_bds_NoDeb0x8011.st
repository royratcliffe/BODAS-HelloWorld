(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8011'}
TYPE DFC_bds_NoDeb0x8011 : STRUCT
        DTC            : UDINT := 16#801100;
        DFCid          : UINT  := 738;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
