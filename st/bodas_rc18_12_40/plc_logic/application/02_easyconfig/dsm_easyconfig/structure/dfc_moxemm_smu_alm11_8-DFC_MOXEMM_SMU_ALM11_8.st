(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_MOXEMM_SMU_ALM11_8'}
TYPE DFC_MOXEMM_SMU_ALM11_8 : STRUCT
        DTC            : UDINT := 16#10CB00;
        DFCid          : UINT  := 1207;
        debounceMethod : USINT := NATIVE;
    END_STRUCT
END_TYPE
