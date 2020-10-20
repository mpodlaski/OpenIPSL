within OpenIPSL.Electrical.Controls.ANATEM.AVR;
model VHz_Limiter

 parameter Real Fnom = Fnom;
 parameter Real K_v = K_v;
 parameter Real VHz = VHz;

 Modelica.Blocks.Continuous.TransferFunction transferFunction(
   b={0.199},
   a={5.7,1},
   initType=Modelica.Blocks.Types.Init.SteadyState)
   annotation (Placement(transformation(extent={{-78,-10},{-58,10}})));

 Modelica.Blocks.Nonlinear.DeadZone deadZone(uMax=1e10, uMin=1)
   annotation (Placement(transformation(extent={{-4,-10},{16,10}})));
 Modelica.Blocks.Math.Gain gain2(k=K_v)
   annotation (Placement(transformation(extent={{32,-10},{52,10}})));
 Modelica.Blocks.Math.Gain gain3(k=VHz)
   annotation (Placement(transformation(extent={{64,-10},{84,10}})));
 NonElectrical.Functions.Straight straight2(m=Fnom, b=0.0398)
   annotation (Placement(transformation(extent={{-42,-10},{-22,10}})));
 Modelica.Blocks.Interfaces.RealOutput out "Output signal connector"
   annotation (Placement(transformation(extent={{100,-10},{120,10}})));
 Modelica.Blocks.Interfaces.RealInput u1 "Connector of Real input signal"
   annotation (Placement(transformation(extent={{-140,-20},{-100,20}})));
initial equation

equation
 connect(deadZone.y,gain2. u)
   annotation (Line(points={{17,0},{30,0}},      color={0,0,127}));
 connect(gain2.y,gain3. u)
   annotation (Line(points={{53,0},{62,0}},       color={0,0,127}));
 connect(deadZone.u,straight2. y1)
   annotation (Line(points={{-6,0},{-21,0}},        color={0,0,127}));
 connect(gain3.y, out)
   annotation (Line(points={{85,0},{110,0}}, color={0,0,127}));
 connect(transferFunction.u, u1)
   annotation (Line(points={{-80,0},{-120,0}}, color={0,0,127}));
 connect(transferFunction.y, straight2.u1)
   annotation (Line(points={{-57,0},{-44,0}}, color={0,0,127}));
   annotation (Dialog(group="Start Values"),
             Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
       coordinateSystem(preserveAspectRatio=false)));
end VHz_Limiter;
