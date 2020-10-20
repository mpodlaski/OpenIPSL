within OpenIPSL.Electrical.Controls.ANATEM.AVR;
model Main_AVR_loop
  parameter Real X_c = 0;
  parameter Real V_ref = 1.05;

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


  Modelica.Blocks.Math.Division division
    annotation (Placement(transformation(extent={{-342,-6},{-322,14}})));
  Modelica.Blocks.Math.Gain gain(k=X_c)
    annotation (Placement(transformation(extent={{-308,-6},{-288,14}})));
  Modelica.Blocks.Math.Add3 add3_1(k2=-1)
    annotation (Placement(transformation(extent={{-272,-14},{-252,6}})));
  Modelica.Blocks.Sources.Constant const(k=V_ref)
    annotation (Placement(transformation(extent={{-322,-46},{-302,-26}})));
  Modelica.Blocks.Math.Add3 add3_2(k1=-1)
    annotation (Placement(transformation(extent={{-206,-14},{-186,6}})));
  NonElectrical.Logical.Relay relay
    annotation (Placement(transformation(extent={{-144,-2},{-122,-24}})));
  Modelica.Blocks.Sources.Constant const2(k=X16)
    annotation (Placement(transformation(extent={{-214,78},{-194,98}})));
  Modelica.Blocks.Math.Gain gain6(k=V_p)
    annotation (Placement(transformation(extent={{-150,-84},{-130,-64}})));
  NonElectrical.Logical.Relay relay1
    annotation (Placement(transformation(extent={{-98,-2},{-76,-24}})));
  Modelica.Blocks.Sources.Constant const3(k=Big)
    annotation (Placement(transformation(extent={{-184,6},{-164,26}})));
  Modelica.Blocks.Sources.Constant const4(k=N_Big)
    annotation (Placement(transformation(extent={{-136,6},{-116,26}})));
  Modelica.Blocks.Math.Gain gain7(k=1/V0)
    annotation (Placement(transformation(extent={{-20,-6},{0,14}})));
  Modelica.Blocks.Math.Add add1
    annotation (Placement(transformation(extent={{-22,-42},{-2,-22}})));
  Modelica.Blocks.Math.Gain gain8(k=Vinf/V_p)
    annotation (Placement(transformation(extent={{18,-42},{38,-22}})));
  Modelica.Blocks.Math.Add add2
    annotation (Placement(transformation(extent={{56,-20},{76,0}})));
  Modelica.Blocks.Math.Add add3
    annotation (Placement(transformation(extent={{104,-26},{124,-6}})));
  Modelica.Blocks.Sources.Constant const6(k=X16)
    annotation (Placement(transformation(extent={{68,-40},{88,-20}})));
  Modelica.Blocks.Nonlinear.Limiter limiter(uMax=VR_max, uMin=VR_min)
    annotation (Placement(transformation(extent={{136,-26},{156,-6}})));
  NonElectrical.Functions.Straight straight5(m=1, b=-VR_min)
    annotation (Placement(transformation(extent={{130,-58},{110,-38}})));
  Modelica.Blocks.Math.Max max
    annotation (Placement(transformation(extent={{180,-20},{200,0}})));
  NonElectrical.Functions.Straight straight3(m=-1, b=VR_max)
    annotation (Placement(transformation(extent={{-136,78},{-116,98}})));
  NonElectrical.Functions.Straight straight4(m=-1, b=VR_min)
    annotation (Placement(transformation(extent={{-136,48},{-116,68}})));
  NonElectrical.Functions.Straight straight6(m=1, b=-VR_max)
    annotation (Placement(transformation(extent={{130,-80},{110,-60}})));
  Modelica.Blocks.Math.Min min
    annotation (Placement(transformation(extent={{218,-30},{238,-10}})));
  Modelica.Blocks.Math.Add add4(k2=-1)
    annotation (Placement(transformation(extent={{250,-76},{270,-56}})));
  Modelica.Blocks.Nonlinear.Limiter limiter1(uMax=VR_max, uMin=VR_min)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={282,-46})));
  NonElectrical.Functions.Straight straight7(m=K_point, b=-Vf0)
    annotation (Placement(transformation(extent={{284,-14},{304,6}})));
  Modelica.Blocks.Math.Product product
    annotation (Placement(transformation(extent={{354,-28},{374,-8}})));
  Modelica.Blocks.Math.Add add7(k2=-1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},
        rotation=270,
        origin={58,-112})));
  Modelica.Blocks.Math.Gain gain13(k=Vinf/V_p)
    annotation (Placement(transformation(extent={{60,-158},{80,-138}})));
  Modelica.Blocks.Interfaces.RealInput Vt
               "Connector of Real input signal 2"
    annotation (Placement(transformation(extent={{-398,-100},{-358,-60}})));
  Modelica.Blocks.Interfaces.RealInput Q_elec
    "Connector of Real input signal 1"
    annotation (Placement(transformation(extent={{-400,60},{-360,100}})));
  Modelica.Blocks.Interfaces.RealInput VHz "Connector 3 of Real input signals"
    annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-208,-120})));
  Modelica.Blocks.Interfaces.RealInput Underexcitation
    "Connector of Real input signal 1" annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-104,-120})));
  Modelica.Blocks.Interfaces.RealInput Overexcitation
    "Connector of Real input signal 1" annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-54,-120})));



  Modelica.Blocks.Interfaces.RealInput Vsad
    "Connector of Real input signal 2" annotation (Placement(
        transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={220,-120})));
  Modelica.Blocks.Interfaces.RealOutput Efd
    "Connector of Real output signal"
    annotation (Placement(transformation(extent={{420,-10},{440,10}})));
  Modelica.Blocks.Math.Gain gain1(k=k)
    annotation (Placement(transformation(extent={{392,6},{412,-14}})));
  Modelica.Blocks.Sources.RealExpression straight5y1(y=straight5.y1)
    annotation (Placement(transformation(extent={{-174,-32},{-154,-12}})));
  Modelica.Blocks.Sources.RealExpression straight6y1(y=straight6.y1)
    annotation (Placement(transformation(extent={{-126,-50},{-106,-30}})));
  Modelica.Blocks.Sources.RealExpression gain7y(y=gain7.y)
    annotation (Placement(transformation(extent={{-238,14},{-218,34}})));
  Modelica.Blocks.Sources.RealExpression Vt_connect(y=Vt)
    annotation (Placement(transformation(extent={{318,12},{338,32}})));
  Modelica.Blocks.Sources.RealExpression Overexcitation_connect(y=
        Overexcitation)
    annotation (Placement(transformation(extent={{156,10},{176,30}})));
  Modelica.Blocks.Sources.RealExpression straight3y1(y=straight3.y1)
    annotation (Placement(transformation(extent={{102,-136},{122,-116}})));
  Modelica.Blocks.Sources.RealExpression Underexcitation_connect(y=
        Underexcitation)
    annotation (Placement(transformation(extent={{130,-2},{150,18}})));
  Modelica.Blocks.Continuous.TransferFunction transferFunction(
    b={K_v},
    a={0.015,1},
    initType=Modelica.Blocks.Types.Init.SteadyState) annotation (
      Placement(transformation(extent={{-262,-54},{-242,-34}})));
  Modelica.Blocks.Nonlinear.Limiter limiter2(uMax=VR_max, uMin=VR_min)
    annotation (Placement(transformation(extent={{-238,-14},{-218,6}})));
  Modelica.Blocks.Nonlinear.VariableLimiter variableLimiter
    annotation (Placement(transformation(extent={{-62,56},{-42,76}})));
  Modelica.Blocks.Continuous.TransferFunction transferFunction1(
    b={V_p/T_a},
    a={1},
    initType=Modelica.Blocks.Types.Init.SteadyState)
    annotation (Placement(transformation(extent={{-60,8},{-40,28}})));
  Modelica.Blocks.Continuous.TransferFunction transferFunction2(
    b={1},
    a={T_b},
    initType=Modelica.Blocks.Types.Init.SteadyState) annotation (
      Placement(transformation(extent={{102,-158},{122,-138}})));
  Modelica.Blocks.Nonlinear.VariableLimiter variableLimiter1 annotation (
      Placement(transformation(extent={{142,-158},{162,-138}})));
  Modelica.Blocks.Sources.RealExpression straight4y1(y=straight4.y1)
    annotation (Placement(transformation(extent={{102,-178},{122,-158}})));
  Modelica.Blocks.Continuous.TransferFunction transferFunction3(a={0.022,
        1}, initType=Modelica.Blocks.Types.Init.SteadyState)
    annotation (Placement(transformation(extent={{316,-60},{336,-40}})));
  Modelica.Blocks.Nonlinear.Limiter limiter3(uMax=1e2, uMin=-1e2)
    annotation (Placement(transformation(extent={{350,-60},{370,-40}})));

  parameter Real k=0.362685282794378
    "Gain value multiplied with input signal";
equation
  connect(division.y,gain. u)
    annotation (Line(points={{-321,4},{-310,4}}, color={0,0,127}));
  connect(gain.y,add3_1. u1)
    annotation (Line(points={{-287,4},{-274,4}},   color={0,0,127}));
  connect(const.y,add3_1. u3) annotation (Line(points={{-301,-36},{-292,
          -36},{-292,-12},{-274,-12}},
                     color={0,0,127}));
  connect(add3_2.y,gain6. u)
    annotation (Line(points={{-185,-4},{-182,-4},{-182,-74},{-152,-74}},
                                               color={0,0,127}));
  connect(relay.u2,add3_2. y) annotation (Line(points={{-146.75,-13},{-165.375,-13},
          {-165.375,-4},{-185,-4}},
                               color={0,0,127}));
  connect(relay.u3,const3. y) annotation (Line(points={{-146.75,-4.75},{-156,-4.75},
          {-156,16},{-163,16}},
                             color={0,0,127}));
  connect(relay.y,relay1. u2) annotation (Line(points={{-119.8,-13},{-100.75,-13}},
                            color={0,0,127}));
  connect(relay1.u3,const4. y) annotation (Line(points={{-100.75,-4.75},{-106,-4.75},
          {-106,16},{-115,16}},
                              color={0,0,127}));
  connect(add1.u1,gain7. u) annotation (Line(points={{-24,-26},{-26,-26},{-26,4},
          {-22,4}},   color={0,0,127}));
  connect(gain6.y,add1. u2) annotation (Line(points={{-129,-74},{-54,-74},{-54,-38},
          {-24,-38}},color={0,0,127}));
  connect(add1.y,gain8. u)
    annotation (Line(points={{-1,-32},{16,-32}}, color={0,0,127}));
  connect(add2.y,add3. u1)
    annotation (Line(points={{77,-10},{102,-10}},color={0,0,127}));
  connect(add3.u2,const6. y) annotation (Line(points={{102,-22},{96,-22},{96,-30},
          {89,-30}},         color={0,0,127}));
  connect(add3.y,limiter. u)
    annotation (Line(points={{125,-16},{134,-16}},
                                                 color={0,0,127}));
  connect(straight5.u1,limiter. u)
    annotation (Line(points={{132,-48},{132,-30},{134,-30},{134,-16}},
                                                 color={0,0,127}));
  connect(limiter.y,max. u2)
    annotation (Line(points={{157,-16},{178,-16}},
                                                 color={0,0,127}));
  connect(straight3.u1,const2. y)
    annotation (Line(points={{-138,88},{-193,88}},color={0,0,127}));
  connect(straight4.u1,const2. y) annotation (Line(points={{-138,58},{-148,58},{
          -148,88},{-193,88}},color={0,0,127}));
  connect(straight6.u1,straight5. u1)
    annotation (Line(points={{132,-70},{132,-48}},
                                                 color={0,0,127}));
  connect(max.y,min. u2)
    annotation (Line(points={{201,-10},{208,-10},{208,-26},{216,-26}},
                                                 color={0,0,127}));
  connect(min.y,add4. u1) annotation (Line(points={{239,-20},{244,-20},{244,-60},
          {248,-60}},
                color={0,0,127}));
  connect(add4.y,limiter1. u)
    annotation (Line(points={{271,-66},{282,-66},{282,-58}},
                                                          color={0,0,127}));
  connect(limiter1.y,straight7. u1)
    annotation (Line(points={{282,-35},{282,-4}},color={0,0,127}));
  connect(gain8.y,add2. u1) annotation (Line(points={{39,-32},{46.5,-32},{46.5,-4},
          {54,-4}},      color={0,0,127}));
  connect(add7.u1,add3. u1) annotation (Line(points={{64,-100},{94,-100},
          {94,-10},{102,-10}},
                     color={0,0,127}));
  connect(add7.u2,gain8. u) annotation (Line(points={{52,-100},{6,-100},{
          6,-32},{16,-32}},
                     color={0,0,127}));
  connect(add7.y,gain13. u)
    annotation (Line(points={{58,-123},{58,-148}}, color={0,0,127}));
  connect(division.u2, Vt) annotation (Line(points={{-344,-2},{-362,-2},{-362,-80},
          {-378,-80}}, color={0,0,127}));
  connect(add3_1.u2, Vt) annotation (Line(points={{-274,-4},{-302,-4},{-302,-12},
          {-350,-12},{-350,-80},{-378,-80}}, color={0,0,127}));
  connect(division.u1, Q_elec) annotation (Line(points={{-344,10},{-352,10},{-352,
          80},{-380,80}}, color={0,0,127}));
  connect(add3_2.u3, VHz)
    annotation (Line(points={{-208,-12},{-208,-120}}, color={0,0,127}));
  connect(add4.u2, Vsad) annotation (Line(points={{248,-72},{220,-72},{
          220,-120}}, color={0,0,127}));
  connect(gain1.u, product.y) annotation (Line(points={{390,-4},{384,-4},
          {384,-18},{375,-18}}, color={0,0,127}));
  connect(gain1.y, Efd) annotation (Line(points={{413,-4},{420,-4},{420,0},
          {430,0}}, color={0,0,127}));
  connect(straight5y1.y, relay.u1) annotation (Line(points={{-153,-22},{-150,-22},
          {-150,-21.25},{-146.75,-21.25}}, color={0,0,127}));
  connect(relay1.u1, straight6y1.y) annotation (Line(points={{-100.75,-21.25},{-102,
          -21.25},{-102,-40},{-105,-40}}, color={0,0,127}));
  connect(gain7y.y, add3_2.u1) annotation (Line(points={{-217,24},{-212,24},{-212,
          4},{-208,4}}, color={0,0,127}));
  connect(Vt_connect.y, product.u1) annotation (Line(points={{339,22},{346,22},{
          346,-12},{352,-12}}, color={0,0,127}));
  connect(Overexcitation_connect.y, min.u1) annotation (Line(points={{177,20},{214,
          20},{214,-14},{216,-14}}, color={0,0,127}));
  connect(max.u1, Underexcitation_connect.y) annotation (Line(points={{178,-4},{
          164,-4},{164,8},{151,8}}, color={0,0,127}));
  connect(transferFunction.y, limiter2.u) annotation (Line(points={{-241,
          -44},{-240,-44},{-240,-4}}, color={0,0,127}));
  connect(add3_1.y, transferFunction.u) annotation (Line(points={{-251,-4},
          {-251,-24},{-278,-24},{-278,-44},{-264,-44}}, color={0,0,127}));
  connect(add3_2.u2, limiter2.y)
    annotation (Line(points={{-208,-4},{-217,-4}}, color={0,0,127}));
  connect(straight4.y1, variableLimiter.limit2)
    annotation (Line(points={{-115,58},{-64,58}}, color={0,0,127}));
  connect(straight3.y1, variableLimiter.limit1) annotation (Line(points={
          {-115,88},{-72,88},{-72,74},{-64,74}}, color={0,0,127}));
  connect(relay1.y, transferFunction1.u) annotation (Line(points={{-73.8,
          -13},{-68,-13},{-68,18},{-62,18}}, color={0,0,127}));
  connect(transferFunction1.y, variableLimiter.u) annotation (Line(points=
         {{-39,18},{-32,18},{-32,48},{-80,48},{-80,64},{-64,64},{-64,66}},
        color={0,0,127}));
  connect(variableLimiter.y, gain7.u) annotation (Line(points={{-41,66},{
          -28,66},{-28,4},{-22,4}}, color={0,0,127}));
  connect(variableLimiter1.u, transferFunction2.y)
    annotation (Line(points={{140,-148},{123,-148}}, color={0,0,127}));
  connect(variableLimiter1.limit2, straight4y1.y) annotation (Line(points={{140,
          -156},{134,-156},{134,-168},{123,-168}}, color={0,0,127}));
  connect(gain13.y, transferFunction2.u)
    annotation (Line(points={{81,-148},{100,-148}}, color={0,0,127}));
  connect(straight3y1.y, variableLimiter1.limit1) annotation (Line(points={{123,
          -126},{128,-126},{128,-140},{140,-140}}, color={0,0,127}));
  connect(variableLimiter1.y, add2.u2) annotation (Line(points={{163,-148},
          {172,-148},{172,-56},{54,-56},{54,-16}}, color={0,0,127}));
  connect(transferFunction3.y, limiter3.u)
    annotation (Line(points={{337,-50},{348,-50}}, color={0,0,127}));
  connect(straight7.y1, transferFunction3.u) annotation (Line(points={{
          305,-4},{310,-4},{310,-50},{314,-50}}, color={0,0,127}));
  connect(limiter3.y, product.u2) annotation (Line(points={{371,-50},{380,
          -50},{380,-30},{336,-30},{336,-24},{352,-24}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-360,-100},
            {420,100}})), Diagram(coordinateSystem(preserveAspectRatio=false,
          extent={{-360,-100},{420,100}})));
end Main_AVR_loop;
