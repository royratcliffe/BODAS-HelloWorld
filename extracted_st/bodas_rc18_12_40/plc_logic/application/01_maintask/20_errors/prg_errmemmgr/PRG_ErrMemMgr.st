(* --- Interface --- *)
(*********************************************************************************************************************
 *     __   __   ___  ___           __   __        __   __  ___
 *   /_ / /  / /__  /    /__/     /_ / /_   |_ / /_ / /  /  /  /__/
 *  /__/ /__/ __ / /__  /  /     /  | /__  /  | /  | /__/  /  /  /
 *
 * Project: Hello World for ml290.rts
 *
 * Program: PRG_ErrMemMgr
 *
 * Author:  
 *
 * Description:
 * Handling of error memory for the workaround
 *
 * (c) Copyright by BOSCH REXROTH AG, all rights reserved
 *
 *********************************************************************************************************************)
PROGRAM PRG_ErrMemMgr
VAR
    ErrMemMgr_s           : struc_ErrMemMgr_prv;
    DFES_numEntryAvl      : UINT;
    errList_s             : bds_dsmDTC_getErrList_ts;
    dsmDTC_getStatus_s    : bds_dsmDTC_getStatus_ts;
    dfc_as                : ARRAY[0..32] OF bds_dsm_dfc_ts;
    status_u16            : UINT;
    cntrDfes_u8           : USINT;
    cntrApplBuf_u8        : USINT;
    idxActEntry_u8        : USINT;
    idxFirstEmptyEntry_u8 : USINT;
END_VAR

(* --- Implementation --- *)
(* Init start value *)
ErrMemMgr_s.nrDfesEntr_u8 := 0;
(* Synchronize application buffer with DFES entries *)
ACT_GetDFESEntry();
(* Clear entries in DFES and application when maximum number of errors are exceeded i.e. 27. This shall make space for 5 new entries in DFES *)
ACT_ClrDFESEntry();
