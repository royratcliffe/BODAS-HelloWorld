(* --- Interface --- *)
{attribute 'qualified_only'}
{attribute 'strict'}
TYPE enu_IsobusJ1939_IsobusInst :
(
  IsobusJ1939_IsobusInst1_E := 1, (* FOR CAN1 *)
  IsobusJ1939_IsobusInst2_E := 2, (* for CAN2 *)
  IsobusJ1939_IsobusInst3_E := 3, (* for CAN3 *)

  IsobusJ1939_IsobusInstMax_E (* last enum for automatic array resizing *)
);
END_TYPE
