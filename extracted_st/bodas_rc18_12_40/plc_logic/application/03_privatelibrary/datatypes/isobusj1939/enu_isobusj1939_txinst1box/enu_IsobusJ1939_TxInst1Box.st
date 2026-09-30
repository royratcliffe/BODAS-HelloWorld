(* --- Interface --- *)
{attribute 'qualified_only'}
{attribute 'strict'}
TYPE enu_IsobusJ1939_TxInst1Box : (
        IsobusJ1939_TxInst1BoxDm1_E := 3,
        IsobusJ1939_TxInst1BoxDm2_E,
        IsobusJ1939_TxInst1BoxDummy1Tx_E,
        IsobusJ1939_TxInst1BoxMax_E (* last enum for automatic array resizing *)
    );
END_TYPE
