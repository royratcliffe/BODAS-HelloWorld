(* --- Interface --- *)
TYPE struc_DbgMgrPrv : STRUCT
        stErrDetn_u32           : UDINT; (* Status error detection *)
        flgStoreDataToNvmPrev_l : BOOL;  (* Flag TO store data TO NVM *)
    END_STRUCT
END_TYPE
