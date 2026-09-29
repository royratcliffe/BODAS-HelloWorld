(* --- Interface --- *)
{attribute 'qualified_only' := ''}
{attribute 'strict' := ''}
TYPE bds_in_di_signal_te :
(
	IN_DI_START_SIGNALS := 16#400,
	IN_DI_START := 16#3FF,
	K22,
	K21,
	IN_DI_NUM_SIGNALS
) UINT;
END_TYPE
