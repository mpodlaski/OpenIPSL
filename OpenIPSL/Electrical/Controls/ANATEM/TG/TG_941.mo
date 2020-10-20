within OpenIPSL.Electrical.Controls.ANATEM.TG;
model TG_941
  parameter Real PB_maq = 737 "machine base power";
  parameter Real PB_tur = 740 "turbine base power";
  parameter Real Pe0 = 1 "initial electric power";
  parameter Real Bp = 0.05;
  parameter Real Bt = 0.6;
  parameter Real ASX = 0.005;
  parameter Real LP = 1.035;
  parameter Real LA = 0.92;
  parameter Real HB = 117.4;
  parameter Real G0 = 400;
  parameter Real Tn = 0.5;
  parameter Real NTv = 10;
  parameter Real Td = 8;
  parameter Real Tf1 = 8.5;
  parameter Real Tf2 = 17.8;
  parameter Real Tv = 0.014;
  parameter Real Tw = 1.77;
  parameter Real Tya = 15.4;
  Modelica.Blocks.Math.Gain gain(k=PB_maq/PB_tur)
    annotation (Placement(transformation(extent={{-76,76},{-68,84}})));
  Modelica.Blocks.Interfaces.RealInput PELEC "Input signal connector"
    annotation (Placement(transformation(extent={{-140,40},{-100,80}}),
        iconTransformation(extent={{-140,40},{-100,80}})));
  Modelica.Blocks.Math.Add add(k2=-1)
    annotation (Placement(transformation(extent={{-50,68},{-38,80}})));
  Modelica.Blocks.Math.Gain gain1(k=PB_maq/PB_tur)
    annotation (Placement(transformation(extent={{-76,64},{-68,72}})));
  Modelica.Blocks.Sources.Constant const(k=Pe0)
    annotation (Placement(transformation(extent={{-98,62},{-84,76}})));
  Modelica.Blocks.Math.Add3 add3_1(
    k1=-1,
    k2=-1,
    k3=-1)
    annotation (Placement(transformation(extent={{-8,66},{4,78}})));
  Modelica.Blocks.Math.Gain gain2(k=Bp)
    annotation (Placement(transformation(extent={{-26,78},{-18,86}})));
  Modelica.Blocks.Interfaces.RealInput DWMAQ
    "Connector 2 of Real input signals" annotation (Placement(
        transformation(extent={{-140,-60},{-100,-20}}), iconTransformation(
          extent={{-140,-60},{-100,-20}})));
  Modelica.Blocks.Math.Min min
    annotation (Placement(transformation(extent={{12,58},{22,68}})));
  Modelica.Blocks.Math.Add add1(k1=-1)
    annotation (Placement(transformation(extent={{-50,36},{-36,50}})));
  Modelica.Blocks.Sources.Constant const1(k=LP)
    annotation (Placement(transformation(extent={{-74,28},{-60,42}})));
  Modelica.Blocks.Math.Add add2(k2=-1)
    annotation (Placement(transformation(extent={{-76,4},{-60,20}})));
  Modelica.Blocks.Math.Gain gain3(k=NTv)
    annotation (Placement(transformation(extent={{-50,8},{-42,16}})));
  NonElectrical.Continuous.IntegratorLim integratorLim(K=1/Tn,
    outMin=-1e2,
    outMax=1e2,
    y_start=integratorLim_start)
    annotation (Placement(transformation(extent={{-32,4},{-22,14}})));
  Modelica.Blocks.Math.Gain gain4(k=0.2)
    annotation (Placement(transformation(extent={{-4,-4},{4,4}},
        rotation=270,
        origin={-94,-54})));
  Modelica.Blocks.Math.Division division
    annotation (Placement(transformation(extent={{-74,-22},{-62,-10}})));
  Modelica.Blocks.Sources.Constant const2(k=HB)
    annotation (Placement(transformation(extent={{-98,-32},{-90,-24}})));
  Modelica.Blocks.Sources.Constant const3(k=LA)
    annotation (Placement(transformation(extent={{60,32},{68,40}})));
  Modelica.Blocks.Tables.CombiTable1D combiTable1D(table=[-0.1,0; 0.068,
        0.164; 0.169,0.247; 0.303,0.329; 0.579,0.493; 0.700,0.574; 0.820,
        0.659; 0.975,0.823; 1.037,0.937; 1.055,1; 1.056,10000])
    annotation (Placement(transformation(extent={{-56,-22},{-44,-10}})));
  Modelica.Blocks.Math.Gain gain5(k=1.16)
    annotation (Placement(transformation(extent={{-40,-20},{-32,-12}})));
  Modelica.Blocks.Math.Product product
    annotation (Placement(transformation(extent={{-22,-24},{-12,-14}})));
  Modelica.Blocks.Math.Gain gain6(k=0.2)
    annotation (Placement(transformation(extent={{-30,40},{-22,48}})));
  Modelica.Blocks.Math.Gain gain7(k=1/Bt)
    annotation (Placement(transformation(extent={{30,64},{38,72}})));
  Modelica.Blocks.Math.Add add3
    annotation (Placement(transformation(extent={{46,56},{58,68}})));
  NonElectrical.Logical.Relay relay
    annotation (Placement(transformation(extent={{48,16},{58,26}})));
  Modelica.Blocks.Math.Gain gain8(k=3)
    annotation (Placement(transformation(extent={{34,10},{42,18}})));
  Modelica.Blocks.Math.Abs abs1
    annotation (Placement(transformation(extent={{34,-6},{44,4}})));
  NonElectrical.Continuous.IntegratorLimVar integratorLimVar(K=1/Td, y_start=
        integratorLimVar_start)
    annotation (Placement(transformation(extent={{68,16},{78,26}})));
  Modelica.Blocks.Sources.Constant const4(k=0)
    annotation (Placement(transformation(extent={{62,12},{66,16}})));
  Modelica.Blocks.Nonlinear.Limiter limiter(uMax=LA, uMin=-10)
    annotation (Placement(transformation(extent={{68,54},{80,66}})));
  Modelica.Blocks.Math.Add3 add3_2(k1=-1, k3=-1)
    annotation (Placement(transformation(extent={{96,58},{108,70}})));
  Modelica.Blocks.Math.Gain gain9(k=G0)
    annotation (Placement(transformation(extent={{116,60},{124,68}})));
  Modelica.Blocks.Nonlinear.Limiter limiter1(uMax=1, uMin=-1)
    annotation (Placement(transformation(extent={{130,58},{142,70}})));
  NonElectrical.Continuous.IntegratorLim integratorLimVar1(
    K=1/Tv,
    outMin=-4,
    outMax=1,
    y_start=integratorLimVar1_start)
    annotation (Placement(transformation(extent={{148,54},{158,64}})));
  Modelica.Blocks.Math.Gain gain10(k=1/Tya)
    annotation (Placement(transformation(extent={{170,58},{178,66}})));
  Modelica.Blocks.Math.Gain gain11(k=ASX)
    annotation (Placement(transformation(extent={{124,40},{116,48}})));
  Modelica.Blocks.Math.Gain gain12(k=1/Tf1)
    annotation (Placement(transformation(extent={{170,28},{178,36}})));
  Modelica.Blocks.Math.Gain gain13(k=1/Tf2)
    annotation (Placement(transformation(extent={{170,16},{178,24}})));
  NonElectrical.Logical.Relay relay1
    annotation (Placement(transformation(extent={{194,64},{204,54}})));
  NonElectrical.Continuous.IntegratorLim integratorLimVar2(
    K=1,
    outMin=0,
    outMax=1,
    y_start=integratorLimVar2_start)
    annotation (Placement(transformation(extent={{214,54},{224,64}})));
  Modelica.Blocks.Math.Gain         gain18(k=1)
    annotation (Placement(transformation(extent={{232,28},{242,38}})));
  Modelica.Blocks.Math.Gain         gain19(k=0.65)
    annotation (Placement(transformation(extent={{232,0},{242,10}})));
  Modelica.Blocks.Math.Gain gain14(k=1.16)
    annotation (Placement(transformation(extent={{232,-30},{240,-22}})));
  Modelica.Blocks.Tables.CombiTable1D combiTable1D1(table=[0,-0.1; 0.164,
        0.068; 0.247,0.169; 0.329,0.303; 0.493,0.579; 0.574,0.7; 0.659,0.82;
        0.823,0.975; 0.937,1.037; 1,1.055; 10000,1.056])
    annotation (Placement(transformation(extent={{230,-48},{242,-36}})));
  Modelica.Blocks.Math.Gain gain15(k=1.7)
    annotation (Placement(transformation(extent={{234,14},{242,22}})));
  Modelica.Blocks.Math.Product product1
    annotation (Placement(transformation(extent={{256,-50},{266,-40}})));
  Modelica.Blocks.Math.Product product2
    annotation (Placement(transformation(extent={{256,-34},{266,-24}})));
  Modelica.Blocks.Math.Product product3
    annotation (Placement(transformation(extent={{256,-18},{266,-8}})));
  Modelica.Blocks.Math.Add3 add3_3(k3=-1, k1=-1)
    annotation (Placement(transformation(extent={{290,-24},{302,-12}})));
  NonElectrical.Logical.Relay relay2
    annotation (Placement(transformation(extent={{200,26},{210,36}})));
  Modelica.Blocks.Math.Gain gain16(k=0.25)
    annotation (Placement(transformation(extent={{184,42},{176,50}})));
  Modelica.Blocks.Math.Division division1
    annotation (Placement(transformation(extent={{290,6},{302,18}})));
  Modelica.Blocks.Math.Product product4
    annotation (Placement(transformation(extent={{310,16},{320,26}})));
  NonElectrical.Continuous.IntegratorLim integratorLim1(
    K=1/Tw,
    outMin=-1e2,
    outMax=1e2,
    y_start=integratorLim1_start)
    annotation (Placement(transformation(extent={{310,-2},{320,8}})));
  Modelica.Blocks.Math.Add add4(k1=-1)
    annotation (Placement(transformation(extent={{328,-18},{340,-6}})));
  Modelica.Blocks.Math.Add3 add3_4(k1=-1, k2=-1)
    annotation (Placement(transformation(extent={{350,14},{362,26}})));
  Modelica.Blocks.Math.Gain gain17(k=PB_tur/PB_maq)
    annotation (Placement(transformation(extent={{370,16},{378,24}})));
  Modelica.Blocks.Interfaces.RealOutput PMECH "Output signal connector"
    annotation (Placement(transformation(extent={{380,-10},{400,10}}),
        iconTransformation(extent={{380,-10},{400,10}})));
  Modelica.Blocks.Math.Add add5
    annotation (Placement(transformation(extent={{250,30},{260,40}})));
  Modelica.Blocks.Sources.Constant const5(k=-0.17)
    annotation (Placement(transformation(extent={{242,50},{250,58}})));
  Modelica.Blocks.Math.Add add6
    annotation (Placement(transformation(extent={{260,0},{270,10}})));
  Modelica.Blocks.Sources.Constant const6(k=0.05)
    annotation (Placement(transformation(extent={{244,6},{252,14}})));
  Modelica.Blocks.Math.Gain         gain20(k=1)
    annotation (Placement(transformation(extent={{182,-28},{192,-18}})));
  Modelica.Blocks.Math.Add add7
    annotation (Placement(transformation(extent={{206,-24},{216,-14}})));
  Modelica.Blocks.Sources.Constant const7(k=0.4)
    annotation (Placement(transformation(extent={{190,-18},{198,-10}})));
  Modelica.Blocks.Math.Gain         gain21(k=1)
    annotation (Placement(transformation(extent={{92,0},{102,10}})));
  Modelica.Blocks.Math.Add add8
    annotation (Placement(transformation(extent={{120,0},{130,10}})));
  Modelica.Blocks.Sources.Constant const8(k=-0.15)
    annotation (Placement(transformation(extent={{104,6},{112,14}})));
  Modelica.Blocks.Math.Gain         gain22(k=1)
    annotation (Placement(transformation(extent={{-82,-92},{-72,-82}})));
  Modelica.Blocks.Math.Add add9
    annotation (Placement(transformation(extent={{-54,-94},{-44,-84}})));
  Modelica.Blocks.Sources.Constant const9(k=-120)
    annotation (Placement(transformation(extent={{-70,-86},{-62,-78}})));
  Modelica.Blocks.Math.Gain         gain23(k=0.0125)
    annotation (Placement(transformation(extent={{-10,-84},{0,-74}})));
  Modelica.Blocks.Math.Add add10
    annotation (Placement(transformation(extent={{18,-88},{28,-78}})));
  Modelica.Blocks.Sources.Constant const10(k=1)
    annotation (Placement(transformation(extent={{2,-78},{10,-70}})));
  Modelica.Blocks.Math.Gain         gain24(k=0.0056)
    annotation (Placement(transformation(extent={{-34,-70},{-24,-60}})));
  Modelica.Blocks.Math.Add add11
    annotation (Placement(transformation(extent={{-6,-70},{4,-60}})));
  Modelica.Blocks.Sources.Constant const11(k=1)
    annotation (Placement(transformation(extent={{-22,-64},{-14,-56}})));
protected
  parameter Real integratorLim_start(fixed=false) "Output start value for integratorLim"
    annotation (Dialog(group="Start values"));
  parameter Real integratorLimVar_start(fixed=false)
    "Output start value integratorLimVar"
        annotation (Dialog(group="Start values"));
  parameter Real integratorLimVar1_start(fixed=false)
    "Output start value integratorLimVar1"
    annotation (Dialog(group="Start values"));
  parameter Real integratorLimVar2_start(fixed=false)
    "Output start value for integratorLimVar2"
    annotation (Dialog(group="Start values"));
  parameter Real integratorLim1_start(fixed=false)
    "Output start value for integratorLim1"
    annotation (Dialog(group="Start values"));
initial equation
  integratorLim_start = 0;
  integratorLimVar_start = 2*3/Td;
  integratorLimVar1_start = 0;
  integratorLimVar2_start = integratorLimVar_start;
  integratorLim1_start = add3_3.y;
equation
  connect(gain.u, PELEC)
    annotation (Line(points={{-76.8,80},{-98,80},{-98,60},{-120,60}},
                                                  color={0,0,127}));
  connect(gain.y, add.u1)
    annotation (Line(points={{-67.6,80},{-60,80},{-60,77.6},{-51.2,77.6}},
                                                   color={0,0,127}));
  connect(gain1.y, add.u2)
    annotation (Line(points={{-67.6,68},{-60,68},{-60,70.4},{-51.2,70.4}},
                                                   color={0,0,127}));
  connect(gain1.u, const.y) annotation (Line(points={{-76.8,68},{-78,68},{-78,69},
          {-83.3,69}}, color={0,0,127}));
  connect(add.y, gain2.u) annotation (Line(points={{-37.4,74},{-32,74},{-32,
          82},{-26.8,82}},
                color={0,0,127}));
  connect(add3_1.u1, gain2.y)
    annotation (Line(points={{-9.2,76.8},{-14,76.8},{-14,82},{-17.6,82}},
                                                 color={0,0,127}));
  connect(add3_1.u2, DWMAQ) annotation (Line(points={{-9.2,72},{-20,72},{
          -20,-40},{-120,-40}}, color={0,0,127}));
  connect(add3_1.y, min.u1)
    annotation (Line(points={{4.6,72},{8,72},{8,66},{11,66}},
                                               color={0,0,127}));
  connect(add1.u1, add.u1) annotation (Line(points={{-51.4,47.2},{-60,47.2},
          {-60,77.6},{-51.2,77.6}},
                    color={0,0,127}));
  connect(const1.y, add1.u2) annotation (Line(points={{-59.3,35},{-55.65,35},
          {-55.65,38.8},{-51.4,38.8}},
                         color={0,0,127}));
  connect(add2.u1, DWMAQ) annotation (Line(points={{-77.6,16.8},{-82,16.8},
          {-82,-40},{-120,-40}}, color={0,0,127}));
  connect(gain3.u, add2.y)
    annotation (Line(points={{-50.8,12},{-59.2,12}}, color={0,0,127}));
  connect(gain3.y, integratorLim.u) annotation (Line(points={{-41.6,12},{-36,12},
          {-36,9},{-33,9}}, color={0,0,127}));
  connect(integratorLim.y, add2.u2) annotation (Line(points={{-21.5,9},{-18,
          9},{-18,0},{-80,0},{-80,7.2},{-77.6,7.2}},
                                                   color={0,0,127}));
  connect(gain4.u, DWMAQ) annotation (Line(points={{-94,-49.2},{-94,-40},{
          -120,-40}}, color={0,0,127}));
  connect(add3_1.u3, integratorLim.u) annotation (Line(points={{-9.2,67.2},
          {-12,67.2},{-12,26},{-36,26},{-36,9},{-33,9}},
                                                  color={0,0,127}));
  connect(division.u1, add.u2) annotation (Line(points={{-75.2,-12.4},{-86,
          -12.4},{-86,60},{-64,60},{-64,70.4},{-51.2,70.4}},
                                                       color={0,0,127}));
  connect(division.y, combiTable1D.u[1])
    annotation (Line(points={{-61.4,-16},{-57.2,-16}}, color={0,0,127}));
  connect(combiTable1D.y[1], gain5.u)
    annotation (Line(points={{-43.4,-16},{-40.8,-16}}, color={0,0,127}));
  connect(gain5.y, product.u1)
    annotation (Line(points={{-31.6,-16},{-23,-16}}, color={0,0,127}));
  connect(add1.y, gain6.u) annotation (Line(points={{-35.3,43},{-34,43},{
          -34,44},{-30.8,44}}, color={0,0,127}));
  connect(gain6.y, min.u2) annotation (Line(points={{-21.6,44},{-6,44},{-6,
          60},{11,60}}, color={0,0,127}));
  connect(min.y, gain7.u) annotation (Line(points={{22.5,63},{26,63},{26,68},
          {29.2,68}}, color={0,0,127}));
  connect(gain7.y, add3.u1) annotation (Line(points={{38.4,68},{42,68},{42,
          65.6},{44.8,65.6}}, color={0,0,127}));
  connect(relay.u2, add3.u1) annotation (Line(points={{46.75,21},{40,21},{
          40,68},{42,68},{42,65.6},{44.8,65.6}}, color={0,0,127}));
  connect(relay.u3, gain8.y) annotation (Line(points={{46.75,17.25},{44,
          17.25},{44,14},{42.4,14}}, color={0,0,127}));
  connect(gain8.u, add3.u1) annotation (Line(points={{33.2,14},{30,14},{30,
          22},{40,22},{40,65.6},{44.8,65.6}}, color={0,0,127}));
  connect(abs1.u, gain7.u) annotation (Line(points={{33,-1},{26,-1},{26,68},
          {29.2,68}}, color={0,0,127}));
  connect(relay.y, integratorLimVar.u)
    annotation (Line(points={{59,21},{67,21}}, color={0,0,127}));
  connect(const3.y, integratorLimVar.outMax)
    annotation (Line(points={{68.4,36},{77,36},{77,28}}, color={0,0,127}));
  connect(integratorLimVar.y, add3.u2) annotation (Line(points={{78.5,21},{
          80,21},{80,48},{44,48},{44,58.4},{44.8,58.4}}, color={0,0,127}));
  connect(integratorLimVar.outMin, const4.y)
    annotation (Line(points={{69,14},{66.2,14}}, color={0,0,127}));
  connect(add3.y, limiter.u)
    annotation (Line(points={{58.6,62},{62,62},{62,60},{66.8,60}},
                                                   color={0,0,127}));
  connect(add3_2.y, gain9.u)
    annotation (Line(points={{108.6,64},{115.2,64}}, color={0,0,127}));
  connect(gain9.y, limiter1.u)
    annotation (Line(points={{124.4,64},{128.8,64}}, color={0,0,127}));
  connect(limiter1.y, integratorLimVar1.u) annotation (Line(points={{142.6,
          64},{146,64},{146,59},{147,59}}, color={0,0,127}));
  connect(integratorLimVar1.y, gain10.u) annotation (Line(points={{158.5,59},
          {164,59},{164,62},{169.2,62}}, color={0,0,127}));
  connect(gain11.u, gain10.u) annotation (Line(points={{124.8,44},{164,44},
          {164,62},{169.2,62}}, color={0,0,127}));
  connect(gain12.u, gain10.u) annotation (Line(points={{169.2,32},{164,32},
          {164,62},{169.2,62}}, color={0,0,127}));
  connect(gain13.u, gain10.u) annotation (Line(points={{169.2,20},{164,20},
          {164,62},{169.2,62}}, color={0,0,127}));
  connect(gain11.y, add3_2.u3) annotation (Line(points={{115.6,44},{90,44},
          {90,59.2},{94.8,59.2}}, color={0,0,127}));
  connect(limiter.y, add3_2.u2) annotation (Line(points={{80.6,60},{90,60},
          {90,64},{94.8,64}}, color={0,0,127}));
  connect(gain10.y, relay1.u2) annotation (Line(points={{178.4,62},{186,62},
          {186,59},{192.75,59}}, color={0,0,127}));
  connect(integratorLimVar2.u, relay1.y) annotation (Line(points={{213,59},
          {208.5,59},{208.5,59},{205,59}}, color={0,0,127}));
  connect(integratorLimVar2.y, add3_2.u1) annotation (Line(points={{224.5,
          59},{236,59},{236,80},{86,80},{86,68.8},{94.8,68.8}}, color={0,0,
          127}));
  connect(gain18.u, add3_2.u1) annotation (Line(points={{231,33},{228,33},{
          228,50},{236,50},{236,80},{86,80},{86,68.8},{94.8,68.8}}, color={
          0,0,127}));
  connect(gain19.u, add3_2.u1) annotation (Line(points={{231,5},{220,5},{
          220,38},{228,38},{228,50},{236,50},{236,80},{86,80},{86,68.8},{
          94.8,68.8}}, color={0,0,127}));
  connect(gain14.u, add3_2.u1) annotation (Line(points={{231.2,-26},{220,
          -26},{220,38},{228,38},{228,50},{236,50},{236,80},{86,80},{86,
          68.8},{94.8,68.8}}, color={0,0,127}));
  connect(combiTable1D1.u[1], gain14.u) annotation (Line(points={{228.8,-42},
          {220,-42},{220,-26},{231.2,-26}}, color={0,0,127}));
  connect(gain15.u, gain14.u) annotation (Line(points={{233.2,18},{220,18},
          {220,-26},{231.2,-26}}, color={0,0,127}));
  connect(combiTable1D1.y[1], product1.u1)
    annotation (Line(points={{242.6,-42},{255,-42}}, color={0,0,127}));
  connect(product1.u2, division.u2) annotation (Line(points={{255,-48},{-50,
          -48},{-50,-26},{-86,-26},{-86,-19.6},{-75.2,-19.6}}, color={0,0,
          127}));
  connect(gain14.y, product2.u1)
    annotation (Line(points={{240.4,-26},{255,-26}}, color={0,0,127}));
  connect(product2.u2, product.u2) annotation (Line(points={{255,-32},{110,
          -32},{110,-44},{-26,-44},{-26,-22},{-23,-22}}, color={0,0,127}));
  connect(product3.u1, DWMAQ) annotation (Line(points={{255,-10},{246,-10},
          {246,-4},{86,-4},{86,-14},{6,-14},{6,-40},{-120,-40}},   color={0,
          0,127}));
  connect(product2.y, add3_3.u2) annotation (Line(points={{266.5,-29},{278,
          -29},{278,-18},{288.8,-18}}, color={0,0,127}));
  connect(gain4.y, add3_3.u3) annotation (Line(points={{-94,-58.4},{-94,-68},
          {282,-68},{282,-22.8},{288.8,-22.8}},                       color=
         {0,0,127}));
  connect(product.y, add3_3.u1) annotation (Line(points={{-11.5,-19},{210,
          -19},{210,-12},{288.8,-12},{288.8,-13.2}}, color={0,0,127}));
  connect(gain13.y, relay2.u3) annotation (Line(points={{178.4,20},{188,20},
          {188,27.25},{198.75,27.25}}, color={0,0,127}));
  connect(relay2.u2, gain12.y) annotation (Line(points={{198.75,31},{
          187.375,31},{187.375,32},{178.4,32}}, color={0,0,127}));
  connect(relay2.y, gain16.u) annotation (Line(points={{211,31},{210,31},{
          210,46},{184.8,46}}, color={0,0,127}));
  connect(gain16.y, relay1.u3) annotation (Line(points={{175.6,46},{172,46},
          {172,56},{184,56},{184,64},{192.75,64},{192.75,62.75}}, color={0,
          0,127}));
  connect(division1.y, product4.u2) annotation (Line(points={{302.6,12},{
          306,12},{306,18},{309,18}}, color={0,0,127}));
  connect(product4.u1, gain15.y) annotation (Line(points={{309,24},{272,24},
          {272,18},{242.4,18}}, color={0,0,127}));
  connect(integratorLim1.u, product4.u2) annotation (Line(points={{309,3},{
          309,18}},                   color={0,0,127}));
  connect(integratorLim1.y, add4.u1) annotation (Line(points={{320.5,3},{
          324,3},{324,-8.4},{326.8,-8.4}}, color={0,0,127}));
  connect(add4.u2, add3_3.y) annotation (Line(points={{326.8,-15.6},{314.4,
          -15.6},{314.4,-18},{302.6,-18}}, color={0,0,127}));
  connect(add4.y, division1.u1) annotation (Line(points={{340.6,-12},{342,
          -12},{342,34},{282,34},{282,15.6},{288.8,15.6}}, color={0,0,127}));
  connect(product1.y, add3_4.u3) annotation (Line(points={{266.5,-45},{346,
          -45},{346,15.2},{348.8,15.2}}, color={0,0,127}));
  connect(product4.y, add3_4.u1) annotation (Line(points={{320.5,21},{
          334.25,21},{334.25,24.8},{348.8,24.8}}, color={0,0,127}));
  connect(product3.y, add3_4.u2) annotation (Line(points={{266.5,-13},{276,
          -13},{276,-8},{320,-8},{320,-2},{334,-2},{334,20},{348.8,20}},
        color={0,0,127}));
  connect(add3_4.y, gain17.u)
    annotation (Line(points={{362.6,20},{369.2,20}}, color={0,0,127}));
  connect(gain17.y, PMECH) annotation (Line(points={{378.4,20},{384,20},{
          384,0},{390,0}}, color={0,0,127}));
  connect(relay1.u1, gain10.u) annotation (Line(points={{192.75,55.25},{164,55.25},
          {164,62},{169.2,62}},     color={0,0,127}));
  connect(gain18.y, add5.u2) annotation (Line(points={{242.5,33},{248,33},{
          248,32},{249,32}}, color={0,0,127}));
  connect(add5.u1, const5.y) annotation (Line(points={{249,38},{252,38},{
          252,54},{250.4,54}}, color={0,0,127}));
  connect(add5.y, relay2.u1) annotation (Line(points={{260.5,35},{274,35},{
          274,42},{190,42},{190,34.75},{198.75,34.75}}, color={0,0,127}));
  connect(gain19.y, add6.u2) annotation (Line(points={{242.5,5},{250,5},{
          250,2},{259,2}}, color={0,0,127}));
  connect(add6.y, division1.u2) annotation (Line(points={{270.5,5},{279.25,
          5},{279.25,8.4},{288.8,8.4}}, color={0,0,127}));
  connect(add6.u1, const6.y) annotation (Line(points={{259,8},{256,8},{256,
          10},{252.4,10}}, color={0,0,127}));
  connect(gain20.y, add7.u2) annotation (Line(points={{192.5,-23},{196,-23},
          {196,-22},{205,-22}}, color={0,0,127}));
  connect(add7.u1, const7.y) annotation (Line(points={{205,-16},{202,-16},{
          202,-14},{198.4,-14}}, color={0,0,127}));
  connect(add7.y, product3.u2) annotation (Line(points={{216.5,-19},{236.25,
          -19},{236.25,-16},{255,-16}}, color={0,0,127}));
  connect(gain20.u, add3_2.u1) annotation (Line(points={{181,-23},{220,-23},
          {220,38},{228,38},{228,50},{236,50},{236,80},{86,80},{86,68.8},{
          94.8,68.8}}, color={0,0,127}));
  connect(gain21.y, add8.u2) annotation (Line(points={{102.5,5},{110,5},{
          110,2},{119,2}}, color={0,0,127}));
  connect(add8.u1, const8.y) annotation (Line(points={{119,8},{116,8},{116,
          10},{112.4,10}}, color={0,0,127}));
  connect(gain21.u, abs1.y) annotation (Line(points={{91,5},{45.5,5},{45.5,
          -1},{44.5,-1}}, color={0,0,127}));
  connect(add8.y, relay.u1) annotation (Line(points={{130.5,5},{140,5},{140,
          24.75},{46.75,24.75}}, color={0,0,127}));
  connect(gain22.y, add9.u2) annotation (Line(points={{-71.5,-87},{-64,-87},
          {-64,-92},{-55,-92}}, color={0,0,127}));
  connect(add9.u1, const9.y) annotation (Line(points={{-55,-86},{-58,-86},{
          -58,-82},{-61.6,-82}}, color={0,0,127}));
  connect(gain22.u, const2.y) annotation (Line(points={{-83,-87},{-83,-58.5},
          {-89.6,-58.5},{-89.6,-28}}, color={0,0,127}));
  connect(gain23.y, add10.u2) annotation (Line(points={{0.5,-79},{8,-79},{8,
          -86},{17,-86}}, color={0,0,127}));
  connect(add10.u1, const10.y) annotation (Line(points={{17,-80},{14,-80},{
          14,-74},{10.4,-74}}, color={0,0,127}));
  connect(gain23.u, add9.y) annotation (Line(points={{-11,-79},{-27.5,-79},
          {-27.5,-89},{-43.5,-89}}, color={0,0,127}));
  connect(add10.y, division.u2) annotation (Line(points={{28.5,-83},{32,-83},
          {32,-48},{-50,-48},{-50,-26},{-86,-26},{-86,-19.6},{-75.2,-19.6}},
        color={0,0,127}));
  connect(gain24.y, add11.u2) annotation (Line(points={{-23.5,-65},{-16,-65},
          {-16,-68},{-7,-68}}, color={0,0,127}));
  connect(add11.u1, const11.y) annotation (Line(points={{-7,-62},{-10,-62},
          {-10,-60},{-13.6,-60}}, color={0,0,127}));
  connect(add11.y, product.u2) annotation (Line(points={{4.5,-65},{6,-65},{
          6,-44},{-26,-44},{-26,-22},{-23,-22}}, color={0,0,127}));
  connect(gain24.u, add9.y) annotation (Line(points={{-35,-65},{-35,-89},{-43.5,
          -89}},       color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{
            -100,-80},{380,100}})),                              Diagram(
        coordinateSystem(preserveAspectRatio=false, extent={{-100,-80},{380,
            100}})));
end TG_941;
