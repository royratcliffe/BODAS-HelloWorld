(* --- Implementation --- *)
DbgMgr_struc.prv_struc.flgStoreDataToNvmPrev_l := 0;
DbgMgr_struc.outp_struc.flgStoreDataToNvmReq_l := 0;

IF (DbgMgr_struc.prm_struc.flgXcpOn_b) THEN
    (* enable XCP *)
    bds_xcp_setMode(BDS_ENABLE_XCP_DU16);
END_IF
