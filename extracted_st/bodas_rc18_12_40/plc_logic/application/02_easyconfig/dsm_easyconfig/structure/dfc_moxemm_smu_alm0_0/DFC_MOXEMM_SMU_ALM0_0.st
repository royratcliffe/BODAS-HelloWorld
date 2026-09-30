(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_MOXEMM_SMU_ALM0_0'}
TYPE DFC_MOXEMM_SMU_ALM0_0 : STRUCT
        DTC            : UDINT := 16#106200;
        DFCid          : UINT  := 1185;
        debounceMethod : USINT := NATIVE;
    END_STRUCT
END_TYPE
