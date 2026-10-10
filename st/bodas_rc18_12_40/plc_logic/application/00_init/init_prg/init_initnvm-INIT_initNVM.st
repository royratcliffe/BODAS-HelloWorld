(* --- Implementation --- *)
(******************************************************************************)
(******************** Initialization: NVM  ************************************)
(******************************************************************************)
bds_mem_readBlock(UINT_TO_USINT(bds_mem_nvmBlock01_512_R_D), ADR(GlobalVariables.PrmAsw_gstruc), 0, SIZEOF(GlobalVariables.PrmAsw_gstruc));
PRG_NVMConfig.ACT_InitNVMConfig();
