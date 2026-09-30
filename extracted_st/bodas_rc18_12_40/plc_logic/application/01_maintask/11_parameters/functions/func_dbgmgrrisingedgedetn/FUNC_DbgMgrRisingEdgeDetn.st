(* --- Interface --- *)
FUNCTION FUNC_DbgMgrRisingEdgeDetn : BOOL
VAR_INPUT
    i_curr_b  : BOOL;
    i_prev_pb : POINTER TO BOOL;
END_VAR
VAR
    retval_b : BOOL;
END_VAR

(* --- Implementation --- *)
(* Check if current value is true but previous value was false *)
IF (i_curr_b AND NOT (i_prev_pb^)) THEN
    retval_b := TRUE;
ELSE
    retval_b := FALSE;
END_IF

(* Make backup copy of current value *)
i_prev_pb^                := i_curr_b;
FUNC_DbgMgrRisingEdgeDetn := retval_b;
