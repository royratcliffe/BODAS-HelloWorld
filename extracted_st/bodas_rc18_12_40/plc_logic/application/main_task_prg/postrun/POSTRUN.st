(* --- Implementation --- *)
(******************************************************************************)
(********** Release of PostRun - Move System to Shutdown task   ***************)
(******************************************************************************)

CallPostRunNr_no_u16 := CallPostRunNr_no_u16 + 1;

(* Release Postrun after 5 sec *)
IF( CallPostRunNr_no_u16 > 500 ) THEN
  bds_sys_releasePostRunProlong(); (* transitions system state from POSTRUN to SHUTDOWN *)

END_IF

