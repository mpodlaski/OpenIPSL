within OpenIPSL.Electrical.Controls.ANATEM.AVR;
model Overexcitation_limiter

  parameter Real X_c = 0;
  parameter Real V_ref = 1.05;
  parameter Real VHz = 0;
  parameter Real Eith = 2.153;
  parameter Real Eimin = 0.1166;
  parameter Real Eipl = 3.05;
  parameter Real Fnom = 60;
  parameter Real ModIf = 1.0;

  //voltages
  parameter Real V_p = 6.55;
  parameter Real V0 = 10;
  parameter Real Vf0 = -0.04726;
  parameter Real V0i = 10;
  parameter Real Vinf = 10.6;
  parameter Real VR_min = -8.523;
  parameter Real VR_max = 8.523;
  parameter Real Vpi = 4.163;

  //gains
  parameter Real K_v = 9.1319;
  parameter Real K_ei = 2.175;
  parameter Real Kmin = 8.6;
  parameter Real K_point = 0.95274;
  //limits
  parameter Real Lmin = -13.53;
  parameter Real Lmin1 = -16.23;
  parameter Real Lmax1 = 0;
  parameter Real Lmax2 = 18.53;
  parameter Real Lmin2 = -18.53;
  //time constants
  parameter Real Ti = 0.715;
  parameter Real T_a = 1.46;
  parameter Real T_b = 0.0535;
  parameter Real Tai = 0.183;
  parameter Real Big = 10000;
  parameter Real N_Big = -10000;
  parameter Real N87_94 = -87.94;
  parameter Real X16=1;

  parameter Real Tu1 = 0.047;
  parameter Real Tu2 = 0.0814;

   parameter Real simpleLag1_start(fixed=false) "Output start value for simpleLag1"
    annotation (Dialog(group="Start Values"));
  parameter Real simpleLag_start(fixed=false) "Output start value for simpleLag"
    annotation (Dialog(group="Start Values"));

  parameter Real integratorLim1_start(fixed=false) "Output start value for integratorLim1"
    annotation (Dialog(group="Start Values"));

  parameter Real integratorLim_start(fixed=false) "Output start value for integratorLim"
    annotation (Dialog(group="Start Values"));

  Modelica.Blocks.Continuous.TransferFunction
                                     transferFunction(
    y_start=simpleLag_start,
    b={K_ei},
    initType=Modelica.Blocks.Types.Init.SteadyState,
    a={Tu1,1})
    annotation (Placement(transformation(extent={{-292,58},{-272,78}})));
  Modelica.Blocks.Math.Add3 add3_3(
    k1=-1,
    k2=-1,
    k3=-1)
    annotation (Placement(transformation(extent={{-252,50},{-232,70}})));
  Modelica.Blocks.Continuous.TransferFunction
                                     transferFunction1(
    initType=Modelica.Blocks.Types.Init.SteadyState,
    y_start=simpleLag1_start,
    b={K_ei},
    a={Tu2,1})
    annotation (Placement(transformation(extent={{-306,-52},{-286,-32}})));
  Modelica.Blocks.Math.Add add
    annotation (Placement(transformation(extent={{-270,-56},{-250,-36}})));
  Modelica.Blocks.Math.Gain gain4(k=-K_ei)
    annotation (Placement(transformation(extent={{-302,-142},{-282,-122}})));
  Modelica.Blocks.Math.Gain gain5(k=0.074)
    annotation (Placement(transformation(extent={{-300,-182},{-280,-162}})));
  Modelica.Blocks.Sources.Constant const1(k=Eith)
    annotation (Placement(transformation(extent={{-338,-162},{-318,-142}})));
  Modelica.Blocks.Math.Gain gain9(k=Vpi)
    annotation (Placement(transformation(extent={{-122,56},{-102,76}})));
  Modelica.Blocks.Math.Add add5
    annotation (Placement(transformation(extent={{-58,50},{-38,70}})));
  NonElectrical.Functions.Straight straight8(m=2.216, b=0.6764)
    annotation (Placement(transformation(extent={{-238,-118},{-218,-98}})));
  Modelica.Blocks.Nonlinear.Limiter limiter2(uMax=Lmax2, uMin=Lmin2)
    annotation (Placement(transformation(extent={{-2,50},{18,70}})));
  NonElectrical.Functions.Straight straight9(m=1, b=0.947)
    annotation (Placement(transformation(extent={{42,50},{62,70}})));
  Modelica.Blocks.Math.Gain gain10(k=1/V0i)
    annotation (Placement(transformation(extent={{-202,-10},{-222,10}})));
  Modelica.Blocks.Math.Gain gain11(k=1/Ti)
    annotation (Placement(transformation(extent={{-206,-118},{-186,-98}})));
  NonElectrical.Logical.Relay relay2
    annotation (Placement(transformation(extent={{-138,-78},{-116,-100}})));
  Modelica.Blocks.Sources.Constant const5(k=N87_94)
    annotation (Placement(transformation(extent={{-162,-86},{-152,-76}})));
  Modelica.Blocks.Continuous.TransferFunction
                                         transferFunction2(
    initType=Modelica.Blocks.Types.Init.SteadyState,
    y_start=integratorLim1_start,
    b={1},
    a={1})
    annotation (Placement(transformation(extent={{-106,-102},{-86,-82}})));
  Modelica.Blocks.Nonlinear.VariableLimiter variableLimiter
    annotation (Placement(transformation(extent={{-26,-82},{-6,-62}})));
  Modelica.Blocks.Math.Gain gain12(k=-K_ei)
    annotation (Placement(transformation(extent={{-40,-96},{-30,-86}})));
  Modelica.Blocks.Sources.Constant const7(k=Eipl)
    annotation (Placement(transformation(extent={{-72,-106},{-66,-100}})));
  NonElectrical.Logical.Relay relay3
    annotation (Placement(transformation(extent={{12,-26},{34,-48}})));
  NonElectrical.Functions.Straight straight10(m=1, b=16.22)
    annotation (Placement(transformation(extent={{-44,-146},{-24,-126}})));
  NonElectrical.Functions.Pulso pulse
    annotation (Placement(transformation(extent={{-10,-146},{10,-126}})));
  Modelica.Blocks.Math.Add3 add3_4
    annotation (Placement(transformation(extent={{34,-154},{54,-134}})));
  NonElectrical.Functions.Straight straight11(m=1, b=-1.5)
    annotation (Placement(transformation(extent={{66,-154},{86,-134}})));
  Modelica.Blocks.Sources.Constant const8(k=ModIf)
    annotation (Placement(transformation(extent={{-14,-50},{-4,-40}})));
  NonElectrical.Functions.Pulso pulse1
    annotation (Placement(transformation(extent={{-226,-158},{-206,-138}})));
  Modelica.Blocks.Math.Add add6
    annotation (Placement(transformation(extent={{-226,-190},{-206,-170}})));
  NonElectrical.Functions.Pulso pulse2
    annotation (Placement(transformation(extent={{-194,-190},{-174,-170}})));
  Modelica.Blocks.Interfaces.RealInput Eq
              "Connector of Real input signal" annotation (Placement(
        transformation(extent={{-360,-100},{-320,-60}}), iconTransformation(
          extent={{-360,-100},{-320,-60}})));
  Modelica.Blocks.Interfaces.RealOutput min_in
    "Connector of Real output signal" annotation (Placement(transformation(
          extent={{100,-90},{122,-68}}), iconTransformation(extent={{100,-90},{122,
            -68}})));
  Modelica.Blocks.Nonlinear.Limiter limiter1(uMax=Lmax2, uMin=Lmin2)
    annotation (Placement(transformation(extent={{-78,-60},{-58,-40}})));
  Modelica.Blocks.Continuous.TransferFunction
                                     transferFunction3(
    y_start=simpleLag_start,
    b={Vpi/Tai},
    initType=Modelica.Blocks.Types.Init.SteadyState,
    a={1})
    annotation (Placement(transformation(extent={{-218,26},{-198,46}})));
  Modelica.Blocks.Nonlinear.Limiter limiter3(uMax=Lmax2, uMin=Lmin2)
    annotation (Placement(transformation(extent={{-180,26},{-160,46}})));
initial equation

  simpleLag_start = Eq;
  simpleLag1_start = Eq;
  integratorLim1_start = 0;
  integratorLim_start = V0i * simpleLag_start;
equation
  connect(transferFunction.y, add3_3.u1)
    annotation (Line(points={{-271,68},{-254,68}}, color={0,0,127}));
  connect(transferFunction1.y, add.u1)
    annotation (Line(points={{-285,-42},{-278,-42},{-278,-40},{-272,-40}},
                                                     color={0,0,127}));
  connect(gain4.u,gain5. u) annotation (Line(points={{-304,-132},{-306,-132},{-306,
          -172},{-302,-172}},color={0,0,127}));
  connect(const1.y,gain5. u) annotation (Line(points={{-317,-152},{-306,-152},{-306,
          -172},{-302,-172}},color={0,0,127}));
  connect(gain4.y,add. u2) annotation (Line(points={{-281,-132},{-272,-132},{-272,
          -52}},      color={0,0,127}));
  connect(add3_3.y,gain9. u)
    annotation (Line(points={{-231,60},{-228,60},{-228,66},{-124,66}},
                                                   color={0,0,127}));
  connect(gain9.y,add5. u1)
    annotation (Line(points={{-101,66},{-60,66}},
                                                color={0,0,127}));
  connect(add.y,straight8. u1)
    annotation (Line(points={{-249,-46},{-246,-46},{-246,-108},{-240,-108}},
                                                     color={0,0,127}));
  connect(add5.y,limiter2. u)
    annotation (Line(points={{-37,60},{-4,60}},  color={0,0,127}));
  connect(limiter2.y,straight9. u1) annotation (Line(points={{19,60},{40,60}},
                             color={0,0,127}));
  connect(gain10.y,add3_3. u2) annotation (Line(points={{-223,0},{-266,0},{-266,
          60},{-254,60}},  color={0,0,127}));
  connect(straight8.y1,gain11. u)
    annotation (Line(points={{-217,-108},{-208,-108}},
                                                  color={0,0,127}));
  connect(gain11.y,relay2. u2) annotation (Line(points={{-185,-108},{-180,
          -108},{-180,-88},{-176,-88},{-176,-89},{-140.75,-89}},
                               color={0,0,127}));
  connect(const5.y,relay2. u3) annotation (Line(points={{-151.5,-81},{
          -154,-81},{-154,-80.75},{-140.75,-80.75}},
                                     color={0,0,127}));
  connect(relay2.y, transferFunction2.u) annotation (Line(points={{-113.8,
          -89},{-114,-89},{-114,-92},{-108,-92}}, color={0,0,127}));
  connect(variableLimiter.limit1,add. u2) annotation (Line(points={{-28,-64},
          {-272,-64},{-272,-52}},                 color={0,0,127}));
  connect(gain12.y,variableLimiter. limit2) annotation (Line(points={{-29.5,
          -91},{-28,-91},{-28,-80}},
                                  color={0,0,127}));
  connect(gain12.u,const7. y)
    annotation (Line(points={{-41,-91},{-62,-91},{-62,-103},{-65.7,-103}},
                                                     color={0,0,127}));
  connect(variableLimiter.y,relay3. u2) annotation (Line(points={{-5,-72},
          {0,-72},{0,-37},{9.25,-37}},     color={0,0,127}));
  connect(relay3.y,add3_3. u3) annotation (Line(points={{36.2,-37},{44,-37},{44,
          -18},{-254,-18},{-254,52}},     color={0,0,127}));
  connect(straight10.u1,variableLimiter. u) annotation (Line(points={{-46,
          -136},{-54,-136},{-54,-72},{-28,-72}},                   color={0,0,127}));
  connect(pulse.y,add3_4. u1)
    annotation (Line(points={{11,-136},{32,-136}},   color={0,0,127}));
  connect(add3_4.y,straight11. u1)
    annotation (Line(points={{55,-144},{64,-144}},   color={0,0,127}));
  connect(straight11.y1,relay2. u1) annotation (Line(points={{87,-144},{96,-144},
          {96,-124},{-30,-124},{-30,-118},{-152,-118},{-152,-97.25},{-140.75,-97.25}},
        color={0,0,127}));
  connect(add6.u1,add. y) annotation (Line(points={{-228,-174},{-246,-174},{-246,
          -46},{-249,-46}},
                       color={0,0,127}));
  connect(gain5.y,add6. u2) annotation (Line(points={{-279,-172},{-270,-172},{-270,
          -186},{-228,-186}},
                            color={0,0,127}));
  connect(pulse2.y,add3_4. u3) annotation (Line(points={{-173,-180},{18,-180},{18,
          -152},{32,-152}},  color={0,0,127}));
  connect(pulse.u,straight10. y1)
    annotation (Line(points={{-12,-136},{-23,-136}}, color={0,0,127}));
  connect(pulse1.y,add3_4. u2) annotation (Line(points={{-205,-148},{-86,-148},{
          -86,-144},{32,-144}},
                             color={0,0,127}));
  connect(pulse1.u,add. y) annotation (Line(points={{-228,-148},{-246,-148},{-246,
          -46},{-249,-46}},
                       color={0,0,127}));
  connect(pulse2.u,add6. y)
    annotation (Line(points={{-196,-180},{-205,-180}},
                                                   color={0,0,127}));
  connect(transferFunction.u, transferFunction1.u) annotation (Line(points={{-294,68},
          {-320,68},{-320,-42},{-308,-42}},     color={0,0,127}));
  connect(transferFunction.u, Eq) annotation (Line(points={{-294,68},{-320,68},{
          -320,-80},{-340,-80}}, color={0,0,127}));
  connect(straight9.y1, min_in) annotation (Line(points={{63,60},{80,60},{80,-79},
          {111,-79}}, color={0,0,127}));
  connect(relay3.u1, const8.y) annotation (Line(points={{9.25,-45.25},{2,-45.25},
          {2,-45},{-3.5,-45}}, color={0,0,127}));
  connect(relay3.u3, add.u2) annotation (Line(points={{9.25,-28.75},{-108,-28.75},
          {-108,-28},{-224,-28},{-224,-70},{-272,-70},{-272,-52}}, color={0,0,127}));
  connect(transferFunction2.y, limiter1.u) annotation (Line(points={{-85,
          -92},{-82,-92},{-82,-50},{-80,-50}}, color={0,0,127}));
  connect(limiter1.y, variableLimiter.u) annotation (Line(points={{-57,
          -50},{-54,-50},{-54,-72},{-28,-72}}, color={0,0,127}));
  connect(transferFunction3.y, limiter3.u)
    annotation (Line(points={{-197,36},{-182,36}}, color={0,0,127}));
  connect(transferFunction3.u, add3_3.y) annotation (Line(points={{-220,
          36},{-226,36},{-226,60},{-231,60}}, color={0,0,127}));
  connect(limiter3.y, add5.u2) annotation (Line(points={{-159,36},{-86,36},
          {-86,54},{-60,54}}, color={0,0,127}));
  connect(gain10.u, add5.u2) annotation (Line(points={{-200,0},{-86,0},{
          -86,54},{-60,54}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-320,-260},
            {100,100}})), Diagram(coordinateSystem(preserveAspectRatio=false,
          extent={{-320,-260},{100,100}})));
end Overexcitation_limiter;
