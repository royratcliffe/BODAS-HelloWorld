(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8095'}
TYPE DFC_bds_NoDeb0x8095 : STRUCT
        DTC            : UDINT := 16#809500;
        DFCid          : UINT  := 156;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
