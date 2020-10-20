within OpenIPSL.Electrical.Controls.ANATEM.AVR;
model Underexcitation_limiter
  Modelica.Blocks.Math.Gain gain1(k=11.66)
    annotation (Placement(transformation(extent={{-20,-10},{0,10}})));
  NonElectrical.Functions.Straight      straight1(b=-0.947, m=Kmin)
    annotation (Placement(transformation(extent={{10,-10},{30,10}})));
  NonElectrical.Functions.Straight straight(      b=Eimin, m=-1.21)
    annotation (Placement(transformation(extent={{-58,-10},{-38,10}})));
  Modelica.Blocks.Interfaces.RealInput u1
                         "Input signal connector"
    annotation (Placement(transformation(extent={{-138,-20},{-98,20}})));
  Modelica.Blocks.Interfaces.RealOutput y1
               "Connector of Real output signal"
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  parameter Real Kmin = 8.6;
  parameter Real Eimin = 0.1166;
equation
  connect(gain1.u,straight. y1)
    annotation (Line(points={{-22,0},{-37,0}},   color={0,0,127}));
  connect(straight1.u1,gain1. y)
    annotation (Line(points={{8,0},{1,0}},       color={0,0,127}));
  connect(straight.u1, u1)
    annotation (Line(points={{-60,0},{-118,0}}, color={0,0,127}));
  connect(straight1.y1, y1)
    annotation (Line(points={{31,0},{110,0}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Underexcitation_limiter;
