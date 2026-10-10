(* --- Implementation --- *)
(*configure SAFOUT with PHMDL mode (HS1 - K09, HS2 - K73 AND LS - K14)*)
bds_out_po_cfg(bds_out_po_signal_te.K09, STD_ON); (* Configure K09 for POC *)
bds_out_po_cfg(bds_out_po_signal_te.K73, STD_ON); (* Configure K73 for POC *)
bds_safout_cfg(UDINT_TO_UINT(PHMDL_CHNL1),
               bds_out_po_signal_te.K14,
               bds_out_po_signal_te.K09,
               bds_out_po_signal_te.K73,
               0,
               0);
