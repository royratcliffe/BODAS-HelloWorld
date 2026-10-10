(* --- Interface --- *)
(*********************************************************************************************************************
 *     __   __   ___  ___           __   __        __   __  ___
 *   /_ / /  / /__  /    /__/     /_ / /_   |_ / /_ / /  /  /  /__/
 *  /__/ /__/ __ / /__  /  /     /  | /__  /  | /  | /__/  /  /  /
 *
 * Project: Hello World for ml290.rts
 *
 * Function: UDS_Diag_ChkLvl
 *
 * Author:  
 *
 * Description:
 * Function for level check
 *
 * (c) Copyright by BOSCH REXROTH AG, all rights reserved
 *
 *********************************************************************************************************************)
FUNCTION UDS_Diag_ChkLvl : USINT
VAR_INPUT
    i_Mask_u32  : UDINT;
    i_Level_u16 : UINT;
END_VAR

(* --- Implementation --- *)
(*UDS_Diag_ChkLvl := GVL_UDS.UDS_NEGATIVE_RESPONSE;*)
UDS_Diag_ChkLvl := 1;

(* First check security as defined in ISO 14229 - see bds_sec_accessLevel_te *)
IF (0 <> (UDINT_TO_WORD(i_Mask_u32) AND SHL(i_Level_u16, 16#1))) THEN
    (*UDS_Diag_ChkLvl := GVL_UDS.UDS_POSITIVE_RESPONSE;*)
    UDS_Diag_ChkLvl := 0;
ELSE
    ;
END_IF
