(* --- Interface --- *)
(*********************************************************************************************************************
 *     __   __   ___  ___           __   __        __   __  ___
 *   /_ / /  / /__  /    /__/     /_ / /_   |_ / /_ / /  /  /  /__/
 *  /__/ /__/ __ / /__  /  /     /  | /__  /  | /  | /__/  /  /  /
 *
 * Project: Hello World for ml290.rts
 *
 * Program: PRG_DebugManager
 *
 * Author:  
 *
 * Description:
 * Interface for Debug Manager
 *
 * (c) Copyright by BOSCH REXROTH AG, all rights reserved
 *
 *********************************************************************************************************************)
PROGRAM PRG_DebugManager
VAR
    DbgMgr_struc : struc_DbgMgr;
END_VAR

(* --- Implementation --- *)
IF (DbgMgr_struc.prm_struc.flgXcpOn_b) THEN
    (* enable XCP *)
    bds_xcp_setMode(BDS_ENABLE_XCP_DU16);
ELSE
    (* disable XCP *)
    bds_xcp_setMode(BDS_DISABLE_XCP_DU16);
END_IF

(* Recognise a rising edge *)
DbgMgr_struc.outp_struc.flgStoreDataToNvmReq_l := FUNC_DbgMgrRisingEdgeDetn(i_curr_b  := DbgMgr_struc.prm_struc.flgStoreDataToNvm_b,
                                                                            i_prev_pb := ADR(DbgMgr_struc.prv_struc.flgStoreDataToNvmPrev_l));

(* Save parameters in Nvm if requested via XCP *)
IF (DbgMgr_struc.outp_struc.flgStoreDataToNvmReq_l) THEN
    (* PrmMgr_SaveNvmAll(); todo *)
    (* Get lock so parameters are not modified during copy to Nvm RAM (e.g. UDS/XCP) *)
    BDS_SYS_GET_LOCK_COMMON();
    (* copy ram mirror of block 1 into NVM todo report stsSaveFct_u16 *)
    bds_mem_writeBlock(UINT_TO_USINT(bds_mem_nvmBlock02_512_R_D), ADR(DbgMgr_struc), 0, SIZEOF(DbgMgr_struc));
    (* Release lock *)
    BDS_SYS_RELEASE_LOCK_COMMON();
END_IF
