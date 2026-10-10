(* --- Interface --- *)
(*********************************************************************************************************************
*    __   __   ___  ___           __   __        __   __  ___
*   /_ / /  / /__  /    /__/     /_ / /_   |_ / /_ / /  /  /  /__/
*  /__/ /__/ __ / /__  /  /     /  | /__  /  | /  | /__/  /  /  /
*
* Project: Hello World for ml290.rts
*
* Program: PRG_Outputs
*
* Author:  
*
* Description:
* Interface for the hardware outputs to the application
*
* (c) Copyright by BOSCH REXROTH AG, all rights reserved
*
*********************************************************************************************************************)
PROGRAM PRG_SafeOuts
VAR
    PHMDL_CHNL1 : UINT := UDINT_TO_UINT(PHMDL OR CHNL1);
END_VAR
