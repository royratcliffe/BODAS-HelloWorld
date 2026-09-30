(* --- Implementation --- *)
(* get the status of last NVM block 1 operation, i.e. read after power on *)
status_u16 := bds_mem_getBlockStatus(bds_mem_nvmBlock01_512_R_D);

(* check whether NVM block 1 data could be loaded successfully *)
IF (status_u16 <> BDS_MEM_NO_ERROR_DU16) THEN
    (* block01 data are invalid and have to be restored by the application *)
    (* 1) initialize all variables mapped into this block *)
    GlobalVariables.PrmAsw_gstruc := GlobalVariables.PrmAsw_cgstruc;
    (* 2) store RAM mirror with valid data into NVM *)
    status_u16 :=
        bds_mem_writeBlock(UINT_TO_USINT(bds_mem_nvmBlock01_512_R_D), ADR(GlobalVariables.PrmAsw_gstruc), 0, SIZEOF(GlobalVariables.PrmAsw_gstruc));
ELSE
    (* check whether the parameters are out of the defined ranges *)
    (* If so, then assign the default values *)
    (* Important: when the blocks are used for the very first time, *)
    (* they are inintialised with 0xFFFF *)
    IF ((0 > GlobalVariables.PrmAsw_gstruc.fctPmp_s16) OR (50 < GlobalVariables.PrmAsw_gstruc.fctPmp_s16)) THEN
        GlobalVariables.PrmAsw_gstruc.fctPmp_s16 := GlobalVariables.PrmAsw_cgstruc.fctPmp_s16;
    END_IF

    IF (2 < GlobalVariables.PrmAsw_gstruc.listCtrlVlv_enu) THEN
        GlobalVariables.PrmAsw_gstruc.listCtrlVlv_enu := GlobalVariables.PrmAsw_cgstruc.listCtrlVlv_enu;
    END_IF

    IF ((0 > GlobalVariables.PrmAsw_gstruc.nrCogs_s16) OR (100 < GlobalVariables.PrmAsw_gstruc.nrCogs_s16)) THEN
        GlobalVariables.PrmAsw_gstruc.nrCogs_s16 := GlobalVariables.PrmAsw_cgstruc.nrCogs_s16;
    END_IF

    IF (5000 < GlobalVariables.PrmAsw_gstruc.iSpSafout1_u16) THEN
        GlobalVariables.PrmAsw_gstruc.iSpSafout1_u16 := GlobalVariables.PrmAsw_cgstruc.iSpSafout1_u16;
    END_IF

    IF (5000 < GlobalVariables.PrmAsw_gstruc.iSpSafout2_u16) THEN
        GlobalVariables.PrmAsw_gstruc.iSpSafout2_u16 := GlobalVariables.PrmAsw_cgstruc.iSpSafout2_u16;
    END_IF

    IF ((0 > GlobalVariables.PrmAsw_gstruc.PrmDbg_struc.flgXcpOn_b) OR (1 < GlobalVariables.PrmAsw_gstruc.PrmDbg_struc.flgXcpOn_b)) THEN
        GlobalVariables.PrmAsw_gstruc.PrmDbg_struc.flgXcpOn_b := GlobalVariables.PrmAsw_cgstruc.PrmDbg_struc.flgXcpOn_b;
    END_IF

    IF ((0 > GlobalVariables.PrmAsw_gstruc.PrmDbg_struc.flgStoreDataToNvm_b) OR (1 < GlobalVariables.PrmAsw_gstruc.PrmDbg_struc.flgStoreDataToNvm_b))
    THEN
        GlobalVariables.PrmAsw_gstruc.PrmDbg_struc.flgStoreDataToNvm_b := GlobalVariables.PrmAsw_cgstruc.PrmDbg_struc.flgStoreDataToNvm_b;
    END_IF

    IF (100 < GlobalVariables.PrmAsw_gstruc.eff_perc_au16[0]) THEN
        GlobalVariables.PrmAsw_gstruc.eff_perc_au16[0] := GlobalVariables.PrmAsw_cgstruc.eff_perc_au16[0];
    END_IF

    IF (100 < GlobalVariables.PrmAsw_gstruc.eff_perc_au16[1]) THEN
        GlobalVariables.PrmAsw_gstruc.eff_perc_au16[1] := GlobalVariables.PrmAsw_cgstruc.eff_perc_au16[1];
    END_IF

    IF (100 < GlobalVariables.PrmAsw_gstruc.eff_perc_au16[2]) THEN
        GlobalVariables.PrmAsw_gstruc.eff_perc_au16[2] := GlobalVariables.PrmAsw_cgstruc.eff_perc_au16[2];
    END_IF

    IF (4000 < GlobalVariables.PrmAsw_gstruc.nEngSpd_rpm_au16[0]) THEN
        GlobalVariables.PrmAsw_gstruc.nEngSpd_rpm_au16[0] := GlobalVariables.PrmAsw_cgstruc.nEngSpd_rpm_au16[0];
    END_IF

    IF (4000 < GlobalVariables.PrmAsw_gstruc.nEngSpd_rpm_au16[1]) THEN
        GlobalVariables.PrmAsw_gstruc.nEngSpd_rpm_au16[1] := GlobalVariables.PrmAsw_cgstruc.nEngSpd_rpm_au16[1];
    END_IF

    IF (4000 < GlobalVariables.PrmAsw_gstruc.nEngSpd_rpm_au16[2]) THEN
        GlobalVariables.PrmAsw_gstruc.nEngSpd_rpm_au16[2] := GlobalVariables.PrmAsw_cgstruc.nEngSpd_rpm_au16[2];
    END_IF
END_IF
