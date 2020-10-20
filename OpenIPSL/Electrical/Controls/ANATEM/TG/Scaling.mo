within OpenIPSL.Electrical.Controls.ANATEM.TG;
model Scaling
  Modelica.Blocks.Math.Division division
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
  Modelica.Blocks.Math.Product product
    annotation (Placement(transformation(extent={{2,4},{22,24}})));
  Modelica.Blocks.Interfaces.RealInput PMECH
    "Connector of Real input signal 1" annotation (Placement(
        transformation(extent={{-140,-80},{-100,-40}})));
  Modelica.Blocks.Interfaces.RealInput PMECH0
    "Connector of Real input signal 2"
    annotation (Placement(transformation(extent={{-140,40},{-100,80}})));
  Modelica.Blocks.Interfaces.RealOutput y1
               "Connector of Real output signal"
    annotation (Placement(transformation(extent={{100,4},{120,24}})));
equation
  connect(division.y, product.u1) annotation (Line(points={{-39,50},{-20,
          50},{-20,20},{0,20}}, color={0,0,127}));
  connect(product.u2, PMECH) annotation (Line(points={{0,8},{-86,8},{-86,
          -60},{-120,-60}}, color={0,0,127}));
  connect(product.y, y1)
    annotation (Line(points={{23,14},{110,14}}, color={0,0,127}));
  connect(division.u2, PMECH) annotation (Line(points={{-62,44},{-86,44},
          {-86,-60},{-120,-60}}, color={0,0,127}));
  connect(division.u1, PMECH0) annotation (Line(points={{-62,56},{-84,56},
          {-84,60},{-120,60}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Scaling;
