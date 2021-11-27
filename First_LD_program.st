PROGRAM my_first_program
  VAR
    PB1 AT %IX0.0 : BOOL;
    PB2 AT %IX0.1 : BOOL;
    LAMP AT %IX0.2 : BOOL;
  END_VAR

  LAMP := NOT(PB2) AND (TRUE OR PB1);
  LAMP := TRUE;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#50ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : my_first_program;
  END_RESOURCE
END_CONFIGURATION
