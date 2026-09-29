(* --- Interface --- *)
///BODAS configuration of available digital input signals
{attribute 'qualified_only' := ''}
{attribute 'strict' := ''}
TYPE bds_inDig_signal_te :
(
	bds_inDig_K22_E := 0,
	///End V1
	bds_inDig_K21_E,
	bds_inDig_numSignal_E
) USINT;
END_TYPE
