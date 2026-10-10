(* --- Implementation --- *)
(* register isobus instance memory,                                     *
*  IsobusInst_Max_E is the number of instances to be used!             *)
bds_isobus_registerInstances(ADR(dataJ1939Inst_as), TO_USINT(enu_IsobusJ1939_IsobusInst.IsobusJ1939_IsobusInstMax_E) - 1);
(* #################################################################### *)
(* CAN Channel 1 *)
(* #################################################################### *)
bds_isobus_registerTxDataboxes(TO_USINT(enu_IsobusJ1939_IsobusInst.IsobusJ1939_IsobusInst1_E),
                               ADR(dataTxBufDataBoxes1_as),
                               TO_USINT(enu_IsobusJ1939_TxInst1Box.IsobusJ1939_TxInst1BoxMax_E));

bds_isobus_registerRxDataboxes(TO_USINT(enu_IsobusJ1939_IsobusInst.IsobusJ1939_IsobusInst1_E),
                               ADR(dataRxBufDataBoxes1_as),
                               TO_USINT(enu_IsobusJ1939_RxInst1Box.IsobusJ1939_RxInst1BoxMax_E));

(* #################################################################### *)
(* CAN Channel 2 *)
(* #################################################################### *)
(* register j1939 rx/tx message boxes                                   *)
bds_isobus_registerTxDataboxes(TO_USINT(enu_IsobusJ1939_IsobusInst.IsobusJ1939_IsobusInst2_E),
                               ADR(dataTxBufDataBoxes1_as),
                               TO_USINT(enu_IsobusJ1939_TxInst2Box.IsobusJ1939_TxInst2BoxMax_E));

bds_isobus_registerRxDataboxes(TO_USINT(enu_IsobusJ1939_IsobusInst.IsobusJ1939_IsobusInst2_E),
                               ADR(dataRxBufDataBoxes2_as),
                               TO_USINT(enu_IsobusJ1939_RxInst2Box.IsobusJ1939_RxInst2BoxMax_E));

(* init a DM1 / DM2 failure list for the own ECU *)
bds_isobus_initFailureList(TO_USINT(enu_IsobusJ1939_IsobusInst.IsobusJ1939_IsobusInst2_E),
                           TO_UINT(enu_IsobusJ1939_TxInst1Box.IsobusJ1939_TxInst1BoxDm1_E), (* TX box nbr FOR sending the DM1 failures *)
                           TO_UINT(enu_IsobusJ1939_TxInst1Box.IsobusJ1939_TxInst1BoxDm2_E), (* TX box nbr FOR sending the DM2 failures *)
                           TRUE);                                                           (* TX box nbr FOR sending the DM2 failures *)

(* #################################################################### *)
(* CAN Channel 3 *)
(* #################################################################### *)
(* unused *)
(* register j1939 rx/tx message boxes                                   *)
bds_isobus_registerTxDataboxes(TO_USINT(enu_IsobusJ1939_IsobusInst.IsobusJ1939_IsobusInst3_E),
                               ADR(dataTxBufDataBoxes3_as),
                               TO_UINT(enu_IsobusJ1939_RxInst3Box.IsobusJ1939_RxInst3BoxMax_E));

bds_isobus_registerRxDataboxes(TO_USINT(enu_IsobusJ1939_IsobusInst.IsobusJ1939_IsobusInst3_E),
                               ADR(dataRxBufDataBoxes3_as),
                               TO_UINT(enu_IsobusJ1939_RxInst3Box.IsobusJ1939_RxInst3BoxMax_E));

(* #################################################################### *)
(* more configurations *)
(* #################################################################### *)
(* optionally define some ECU information of the controller application for the PGNs HW-ID and SW-ID:*)
bds_isobus_setCaInfo(TO_USINT(enu_IsobusJ1939_IsobusInst.IsobusJ1939_IsobusInst1_E), (* instance number *)
                     0,                                                              (* ECU location part shall be suppressed *)
                     ADR('RC40'),                                                    (* ECU name *)
                     ADR('Bosch Rexroth'),                                           (* ECU manufacturer *)
                     ADR('HelloWorld'));                                             (* Application task name *)

(* optionally define some ECU information of the controller application for the PGNs HW-ID and SW-ID:*)
bds_isobus_setCaInfo(TO_USINT(enu_IsobusJ1939_IsobusInst.IsobusJ1939_IsobusInst2_E), (* instance number *)
                     0,                                                              (* ECU location part shall be suppressed *)
                     ADR('RC40'),                                                    (* ECU name *)
                     ADR('Bosch Rexroth'),                                           (* ECU manufacturer *)
                     ADR('HelloWorld'));                                             (* Application task name *)

(* optionally define some ECU information of the controller application for the PGNs HW-ID and SW-ID:*)
bds_isobus_setCaInfo(TO_USINT(enu_IsobusJ1939_IsobusInst.IsobusJ1939_IsobusInst3_E), (* instance number *)
                     0,                                                              (* ECU location part shall be suppressed *)
                     ADR('RC40'),                                                    (* ECU name *)
                     ADR('Bosch Rexroth'),                                           (* ECU manufacturer *)
                     ADR('HelloWorld'));                                             (* Application task name *)

(* configure the Address Claim Delay Format acc. to the ISOBUS standard *)
bds_isobus_cfgAddrClaimFormat(FALSE);
(* define the controller application name, required for address claiming *)
bds_isobus_setCaName(TO_USINT(enu_IsobusJ1939_IsobusInst.IsobusJ1939_IsobusInst1_E),
                     16#00, (* 1 bit arbitrary address capability *)
                     16#00, (* 3 bit industry group *)
                     (* #0 – Global, applies to all *)
                     (* #1 – On-Highway Equipment *)
                     (* #2 – Agricultural and Forestry Equipment *)
                     (* #3 – Construction Equipment *)
                     (* #4 – Marine Equipment *)
                     (* #5 – Industry Process Control, Stationary Equipment *)
                     16#00,                   (* 4 bit vehicle instance *)
                     16#01,                   (* 7 bit vehicle system *)
                     16#03,                   (* 8 bit function *)
                     16#01,                   (* 5 bit function instance *)
                     16#01,                   (* 3 bit ecu instance *)
                     16#33,                   (* Manufacturer Code 0x33 = Bosch *)
                     BDS_ISOBUS_OWN_SN_DU32); (* 11 bit Manufacturer code *)

bds_isobus_setCaName(TO_USINT(enu_IsobusJ1939_IsobusInst.IsobusJ1939_IsobusInst2_E),
                     16#00, (* 1 bit arbitrary address capability *)
                     16#00, (* 3 bit industry group *)
                     (* #0 – Global, applies to all *)
                     (* #1 – On-Highway Equipment *)
                     (* #2 – Agricultural and Forestry Equipment *)
                     (* #3 – Construction Equipment *)
                     (* #4 – Marine Equipment *)
                     (* #5 – Industry Process Control, Stationary Equipment *)
                     16#00,                   (* 4 bit vehicle instance *)
                     16#01,                   (* 7 bit vehicle system *)
                     16#03,                   (* 8 bit function *)
                     16#01,                   (* 5 bit function instance *)
                     16#01,                   (* 3 bit ecu instance *)
                     16#33,                   (* Manufacturer Code 0x33 = Bosch *)
                     BDS_ISOBUS_OWN_SN_DU32); (* 11 bit Manufacturer code *)

bds_isobus_setCaName(TO_USINT(enu_IsobusJ1939_IsobusInst.IsobusJ1939_IsobusInst3_E),
                     16#00, (* 1 bit arbitrary address capability *)
                     16#00, (* 3 bit industry group *)
                     (* #0 – Global, applies to all *)
                     (* #1 – On-Highway Equipment *)
                     (* #2 – Agricultural and Forestry Equipment *)
                     (* #3 – Construction Equipment *)
                     (* #4 – Marine Equipment *)
                     (* #5 – Industry Process Control, Stationary Equipment *)
                     16#00,                   (* 4 bit vehicle instance *)
                     16#01,                   (* 7 bit vehicle system *)
                     16#03,                   (* 8 bit function *)
                     16#01,                   (* 5 bit function instance *)
                     16#01,                   (* 3 bit ecu instance *)
                     16#33,                   (* Manufacturer Code 0x33 = Bosch *)
                     BDS_ISOBUS_OWN_SN_DU32); (* 11 bit Manufacturer code *)

(* define the initial source address and the CAN channel for the CA instance 1 *)
(* PRQA S:"Rule-10.3" 4442 1 # justification: nrChCan1_u8 assigns parameter value to BSW enum *)
bds_isobus_setCaAddr(TO_USINT(enu_IsobusJ1939_IsobusInst.IsobusJ1939_IsobusInst1_E), (* IsoBus instance number *)
                     bds_can_Chnl_te.BDS_CAN_1_D,                                    (* CAN channel number *)
                     16#03);                                                         (* own address of this instance *)

bds_isobus_setCaAddr(TO_USINT(enu_IsobusJ1939_IsobusInst.IsobusJ1939_IsobusInst2_E), (* IsoBus instance number *)
                     bds_can_Chnl_te.BDS_CAN_2_D,                                    (* CAN channel number *)
                     16#03);                                                         (* own address of this instance *)

bds_isobus_setCaAddr(TO_USINT(enu_IsobusJ1939_IsobusInst.IsobusJ1939_IsobusInst3_E), (* IsoBus instance number *)
                     bds_can_Chnl_te.BDS_CAN_3_D,                                    (* CAN channel number *)
                     16#03);                                                         (* own address of this instance *)

(* initialize and start isobus communication for all instances on this CAN channel *)
(* PRQA S:"Rule-10.3" 4442 1 # justification: nrChCan_u8 assigns parameter value to BSW enum *)
bds_isobus_initComm(bds_can_Chnl_te.BDS_CAN_1_D, (* CAN channel number *)
                    20);                         (* Max. allowed run time of the j1939 *)

(* task related to the j1939 cycle time *)
bds_isobus_initComm(bds_can_Chnl_te.BDS_CAN_2_D, (* CAN channel number *)
                    20);                         (* Max. allowed run time of the j1939 *)

(* task related to the j1939 cycle time *)
bds_isobus_initComm(bds_can_Chnl_te.BDS_CAN_3_D, (* CAN channel number *)
                    20);                         (* Max. allowed run time of the j1939 *)
(* task related to the j1939 cycle time *)
