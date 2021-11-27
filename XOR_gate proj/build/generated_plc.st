PROGRAM program2
  VAR
    input1 : BOOL;
    input2 : BOOL;
    output : BOOL;
  END_VAR

  output := NOT(input2) AND input1 OR NOT(input1) AND input2;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : program2;
  END_RESOURCE
END_CONFIGURATION
