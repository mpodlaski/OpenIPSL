within OpenIPSL.NonElectrical.Functions;
model Pulso
  parameter Real p1 = 0;
  parameter Real p2 = 1;
  parameter Real p3 = 1e10;
  parameter Real p4 = 1;

  Modelica.Blocks.Interfaces.RealInput u
    annotation (Placement(transformation(extent={{-140,-20},{-100,20}})));
  Modelica.Blocks.Interfaces.RealOutput y
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));

equation
  if u<p1 then y = 0;
  elseif (u>p1 and u<p3) then y = p2;
  else y=p4;
  end if;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Pulso;
