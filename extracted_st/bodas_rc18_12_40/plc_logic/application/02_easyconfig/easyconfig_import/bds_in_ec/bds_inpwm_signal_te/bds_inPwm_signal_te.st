(* --- Interface --- *)
///Definition of input signals for PWM
{attribute 'qualified_only' := ''}
{attribute 'strict' := ''}
TYPE bds_inPwm_signal_te : (
        bds_inPwm_K54_E := 0,
        bds_inPwm_K37_E,
        bds_inPwm_K30_E,
        bds_inPwm_A43_E,
        bds_inPwm_A59_A44_E,
        bds_inPwm_numSignal_E
    ) USINT;
END_TYPE
