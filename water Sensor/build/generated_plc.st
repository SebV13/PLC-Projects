PROGRAM program3
  VAR
    sensor1 : BOOL;
    sensor2 : BOOL;
    motor : BOOL;
  END_VAR

  IF NOT(sensor2) AND (NOT(sensor1) OR sensor1) THEN
    motor := TRUE; (*set*)
  END_IF;
  IF sensor2 AND sensor1 THEN
    motor := FALSE; (*reset*)
  END_IF;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : program3;
  END_RESOURCE
END_CONFIGURATION
