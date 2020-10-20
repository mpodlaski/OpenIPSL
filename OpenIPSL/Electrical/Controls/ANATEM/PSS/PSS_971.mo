within OpenIPSL.Electrical.Controls.ANATEM.PSS;
model PSS_971
  parameter Real Dfmax = 0.0333333333333333333333;
  parameter Real Dfig = 0.0166666666666666666;
  parameter Real Kf = 0.9;
  parameter Real Kf1 = 1.15;
  parameter Real Kp = 2.8;
  parameter Real Pemin = 0.3;
  parameter Real Tf = 1.5;
  parameter Real Tp = 1.5;
  parameter Real Vpmax = 5.4115;
  parameter Real Vpmin = -5.4115;
  parameter Real Vtmax = 1.2;
  parameter Real Vtmin = 0.7;

  parameter Real K1 = 6.7642;
  parameter Real T1 = 0.03;
  parameter Real K2 = 137.46;
  parameter Real T2 = 0.04;

  parameter Real K_out = 1/100;



  Modelica.Blocks.Interfaces.RealInput Pelec
    "Connector of Real input signal"
    annotation (Placement(transformation(extent={{-140,40},{-100,80}})));
  Modelica.Blocks.Interfaces.RealInput DWMAQ
    "Connector of Real input signal"
    annotation (Placement(transformation(extent={{-140,-20},{-100,20}})));
  Modelica.Blocks.Interfaces.RealInput Vt
    annotation (Placement(transformation(extent={{-140,-80},{-100,-40}})));
  Modelica.Blocks.Interfaces.RealOutput Vsad
    "Connector of Real output signal"
    annotation (Placement(transformation(extent={{160,32},{180,52}})));
protected
  parameter Real x1(fixed=false);
  parameter Real x2(fixed=false);
  parameter Real x3(fixed=false);
  parameter Real x4(fixed=false);
  Modelica.Blocks.Continuous.TransferFunction
                                     transferFunction(
    y_start=x1,
    b={K1},
    a={T1,1},
    initType=Modelica.Blocks.Types.Init.SteadyState)
    annotation (Placement(transformation(extent={{-90,50},{-70,70}})));
  Modelica.Blocks.Continuous.TransferFunction
                                     transferFunction1(
    y_start=x2,
    b={Tp},
    a={Tp,1},
    initType=Modelica.Blocks.Types.Init.SteadyState)
    annotation (Placement(transformation(extent={{-58,50},{-38,70}})));
  Modelica.Blocks.Math.Gain gain(k=Kp)
    annotation (Placement(transformation(extent={{-26,50},{-6,70}})));
  Modelica.Blocks.Math.Add add
    annotation (Placement(transformation(extent={{14,44},{34,64}})));
  Modelica.Blocks.Nonlinear.Limiter limiter(uMax=Vpmax, uMin=Vpmin)
    annotation (Placement(transformation(extent={{44,44},{64,64}})));
  Modelica.Blocks.Math.Product product
    annotation (Placement(transformation(extent={{84,38},{104,58}})));
  Modelica.Blocks.Math.Product product1
    annotation (Placement(transformation(extent={{118,32},{138,52}})));
  NonElectrical.Functions.Pulso pulso(p1=Pemin)
    annotation (Placement(transformation(extent={{-72,24},{-52,44}})));
  Modelica.Blocks.Continuous.TransferFunction
                                     transferFunction2(
    y_start=x3,
    b={K2},
    a={T2,1},
    initType=Modelica.Blocks.Types.Init.SteadyState)
    annotation (Placement(transformation(extent={{-90,-10},{-70,10}})));
  Modelica.Blocks.Continuous.TransferFunction
                                     transferFunction3(
    y_start=x4,
    b={Tf},
    a={Tf,1},
    initType=Modelica.Blocks.Types.Init.SteadyState)
    annotation (Placement(transformation(extent={{-58,-10},{-38,10}})));
  Modelica.Blocks.Math.Gain gain1(k=Kf1*Kf)
    annotation (Placement(transformation(extent={{-26,-10},{-6,10}})));
  Modelica.Blocks.Math.Product product2
    annotation (Placement(transformation(extent={{8,-16},{28,4}})));
  NonElectrical.Functions.Pulso pulso1(
    p1=Vtmin,
    p3=Vtmax,
    p4=0)
    annotation (Placement(transformation(extent={{-62,-70},{-42,-50}})));
  NonElectrical.Functions.Hysteresis hysteresis(
    uHigh=Dfmax,
    y1=0,
    y2=1,
    uLow=Dfig,
    pre_y_start=1)
    annotation (Placement(transformation(extent={{-60,-40},{-40,-20}})));
  Modelica.Blocks.Math.Gain gain2(k=K_out)
    annotation (Placement(transformation(extent={{146,38},{156,48}})));
initial equation
  x1 = Pelec*0.03;
  x2 = 6.7642*Tp*x1;
  x3 = 0;
  x4 = 0;
equation
  connect(transferFunction.y, transferFunction1.u)
    annotation (Line(points={{-69,60},{-60,60}}, color={0,0,127}));
  connect(transferFunction1.y, gain.u)
    annotation (Line(points={{-37,60},{-28,60}}, color={0,0,127}));
  connect(gain.y, add.u1)
    annotation (Line(points={{-5,60},{12,60}}, color={0,0,127}));
  connect(add.y, limiter.u)
    annotation (Line(points={{35,54},{42,54}}, color={0,0,127}));
  connect(limiter.y, product.u1)
    annotation (Line(points={{65,54},{82,54}}, color={0,0,127}));
  connect(product.y, product1.u1)
    annotation (Line(points={{105,48},{116,48}}, color={0,0,127}));
  connect(pulso.u, transferFunction.u) annotation (Line(points={{-74,34},{-96,34},
          {-96,60},{-92,60}}, color={0,0,127}));
  connect(pulso.y, product.u2) annotation (Line(points={{-51,34},{16,34},{16,42},
          {82,42}}, color={0,0,127}));
  connect(transferFunction2.y, transferFunction3.u)
    annotation (Line(points={{-69,0},{-60,0}}, color={0,0,127}));
  connect(transferFunction3.y, gain1.u)
    annotation (Line(points={{-37,0},{-28,0}}, color={0,0,127}));
  connect(gain1.y, product2.u1)
    annotation (Line(points={{-5,0},{6,0}}, color={0,0,127}));
  connect(product2.y, add.u2) annotation (Line(points={{29,-6},{32,-6},{32,
          40},{4,40},{4,48},{12,48}}, color={0,0,127}));
  connect(pulso1.y, product1.u2) annotation (Line(points={{-41,-60},{74,-60},
          {74,36},{116,36}}, color={0,0,127}));
  connect(hysteresis.y, product2.u2) annotation (Line(points={{-39,-30},{
          -16,-30},{-16,-12},{6,-12}}, color={0,0,127}));
  connect(hysteresis.u, transferFunction2.u) annotation (Line(points={{-62,-30},
          {-96,-30},{-96,0},{-92,0}}, color={0,0,127}));
  connect(transferFunction.u, Pelec)
    annotation (Line(points={{-92,60},{-120,60}}, color={0,0,127}));
  connect(transferFunction2.u, DWMAQ)
    annotation (Line(points={{-92,0},{-120,0}}, color={0,0,127}));
  connect(pulso1.u, Vt)
    annotation (Line(points={{-64,-60},{-120,-60}}, color={0,0,127}));
  connect(Vsad, gain2.y) annotation (Line(points={{170,42},{166,42},{166,43},{156.5,
          43}}, color={0,0,127}));
  connect(product1.y, gain2.u)
    annotation (Line(points={{139,42},{145,42},{145,43}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
            {160,100}})),                                        Diagram(
        coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{160,100}})));
end PSS_971;
