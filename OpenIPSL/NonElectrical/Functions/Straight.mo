within OpenIPSL.NonElectrical.Functions;
model Straight
  Modelica.Blocks.Sources.Constant const(k=b)
    annotation (Placement(transformation(extent={{-58,36},{-38,56}})));
  Modelica.Blocks.Math.Gain gain(k=m)
    annotation (Placement(transformation(extent={{-58,-10},{-38,10}})));
  Modelica.Blocks.Math.Add add
    annotation (Placement(transformation(extent={{56,10},{76,30}})));
  Modelica.Blocks.Interfaces.RealOutput y1 "Connector of Real output signal"
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  Modelica.Blocks.Interfaces.RealInput u1
                         "Input signal connector"
    annotation (Placement(transformation(extent={{-140,-20},{-100,20}})));
    parameter Real m;
    parameter Real b;
equation
  connect(const.y, add.u1) annotation (Line(points={{-37,46},{8,46},{8,26},{54,26}},
        color={0,0,127}));
  connect(gain.y, add.u2) annotation (Line(points={{-37,0},{10,0},{10,14},{54,14}},
        color={0,0,127}));
  connect(add.y, y1) annotation (Line(points={{77,20},{84,20},{84,6},{110,6},{110,
          0}}, color={0,0,127}));
  connect(gain.u, u1)
    annotation (Line(points={{-60,0},{-120,0}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Straight;
