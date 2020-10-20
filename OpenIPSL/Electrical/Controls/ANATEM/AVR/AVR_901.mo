within OpenIPSL.Electrical.Controls.ANATEM.AVR;
model AVR_901
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
  Modelica.Blocks.Interfaces.RealInput Q_elec
    "Connector of Real input signal 1"
    annotation (Placement(transformation(extent={{-140,100},{-100,140}}),
        iconTransformation(extent={{-140,100},{-100,140}})));
  Modelica.Blocks.Interfaces.RealInput Vt
               "Connector of Real input signal 2"
    annotation (Placement(transformation(extent={{-140,40},{-100,80}}),
        iconTransformation(extent={{-140,40},{-100,80}})));
  Modelica.Blocks.Interfaces.RealInput EQ "Connector of Real input signal"
    annotation (Placement(transformation(extent={{-140,-80},{-100,-40}}),
        iconTransformation(extent={{-140,-80},{-100,-40}})));
  Modelica.Blocks.Interfaces.RealInput DWMAQ "Connector of Real input signal"
    annotation (Placement(transformation(extent={{-140,-22},{-100,18}}),
        iconTransformation(extent={{-140,-22},{-100,18}})));
  Modelica.Blocks.Interfaces.RealOutput Efd
    "Connector of Real output signal" annotation (Placement(
        transformation(extent={{640,10},{660,30}}), iconTransformation(
          extent={{640,10},{660,30}})));


  Modelica.Blocks.Interfaces.RealInput Vsad "Connector of Real input signal 2"
    annotation (Placement(transformation(extent={{-20,-20},{20,20}},
        rotation=90,
        origin={292,-118}), iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={260,-102})));
  VHz_Limiter vHz_Limiter(
    Fnom=Fnom,
    K_v=K_v,
    VHz=VHz) annotation (Placement(transformation(extent={{-26,-10},
            {-6,10}})));
  Underexcitation_limiter underexcitation(Kmin=Kmin, Eimin=Eimin)
    annotation (Placement(transformation(extent={{-32,-74},{-12,-54}})));
  Overexcitation_limiter overexcitation(
    X_c=X_c,
    V_ref=V_ref,
    VHz=VHz,
    Eith=Eith,
    Eimin=Eimin,
    Eipl=Eipl,
    Fnom=Fnom,
    ModIf=ModIf,
    V_p=V_p,
    V0=V0,
    Vf0=Vf0,
    V0i=V0i,
    Vinf=Vinf,
    VR_min=VR_min,
    VR_max=VR_max,
    Vpi=Vpi,
    K_v=K_v,
    K_ei=K_ei,
    Kmin=Kmin,
    K_point=K_point,
    Lmin=Lmin,
    Lmin1=Lmin1,
    Lmax1=Lmax1,
    Lmax2=Lmax2,
    Lmin2=Lmin2,
    Ti=Ti,
    T_a=T_a,
    T_b=T_b,
    Tai=Tai,
    Big=Big,
    N_Big=N_Big,
    N87_94=N87_94,
    X16=X16)
    annotation (Placement(transformation(extent={{-42,-48},{0,-12}})));
  Main_AVR_loop main_AVR_loop(
    X_c=X_c,
    V_ref=V_ref,
    Eith=Eith,
    Eimin=Eimin,
    Eipl=Eipl,
    Fnom=Fnom,
    ModIf=ModIf,
    V_p=V_p,
    V0=V0,
    Vf0=Vf0,
    V0i=V0i,
    Vinf=Vinf,
    VR_min=VR_min,
    VR_max=VR_max,
    Vpi=Vpi,
    K_v=K_v,
    K_ei=K_ei,
    Kmin=Kmin,
    K_point=K_point,
    Lmin=Lmin,
    Lmin1=Lmin1,
    Lmax1=Lmax1,
    Lmax2=Lmax2,
    Lmin2=Lmin2,
    Ti=Ti,
    T_a=T_a,
    T_b=T_b,
    Tai=Tai,
    Big=Big,
    N_Big=N_Big,
    N87_94=N87_94,
    X16=X16,                  k=1)
    annotation (Placement(transformation(extent={{164,74},{336,128}})));
  parameter Real k=k "Gain value multiplied with input signal";
  Modelica.Blocks.Math.Product product
    annotation (Placement(transformation(extent={{524,10},{544,30}})));
  Modelica.Blocks.Interfaces.RealInput scale
    "Connector of Real input signal 2" annotation (Placement(
        transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={446,-100})));
  Modelica.Blocks.Sources.Constant const(k=k)
    annotation (Placement(transformation(extent={{384,6},{404,26}})));
  Modelica.Blocks.Math.Division division
    annotation (Placement(transformation(extent={{434,12},{454,32}})));
initial equation

equation
  connect(vHz_Limiter.u1, DWMAQ)
    annotation (Line(points={{-28,0},{-74,0},{-74,-2},{-120,-2}},
                                                      color={0,0,127}));
  connect(underexcitation.u1, EQ) annotation (Line(points={{-33.8,-64},{
          -76,-64},{-76,-60},{-120,-60}}, color={0,0,127}));
  connect(overexcitation.Eq, EQ) annotation (Line(points={{-44,-30},{-44,
          -60},{-120,-60}}, color={0,0,127}));
  connect(main_AVR_loop.Q_elec, Q_elec) annotation (Line(points={{159.59,122.6},
          {27.795,122.6},{27.795,120},{-120,120}},        color={0,0,127}));
  connect(main_AVR_loop.Vt, Vt) annotation (Line(points={{160.031,79.4},{-44,79.4},
          {-44,80},{-82,80},{-82,60},{-120,60}}, color={0,0,127}));
  connect(main_AVR_loop.VHz, vHz_Limiter.out) annotation (Line(points={{197.518,
          68.6},{197.518,0},{-5,0}},         color={0,0,127}));
  connect(main_AVR_loop.Underexcitation, underexcitation.y1) annotation (
      Line(points={{220.451,68.6},{220.451,-64},{-11,-64}}, color={0,0,
          127}));
  connect(overexcitation.min_in, main_AVR_loop.Overexcitation)
    annotation (Line(points={{1.1,-29.9},{231.477,-29.9},{231.477,68.6}},
        color={0,0,127}));
  connect(main_AVR_loop.Vsad, Vsad) annotation (Line(points={{291.897,68.6},{291.897,
          -118},{292,-118}},                color={0,0,127}));
  connect(const.y, division.u2)
    annotation (Line(points={{405,16},{432,16}}, color={0,0,127}));
  connect(division.u1, scale) annotation (Line(points={{432,28},{418,28},
          {418,-100},{446,-100}}, color={0,0,127}));
  connect(division.y, product.u2) annotation (Line(points={{455,22},{490,
          22},{490,14},{522,14}}, color={0,0,127}));
  connect(main_AVR_loop.Efd, Efd) annotation (Line(points={{338.205,101},{568.102,
          101},{568.102,20},{650,20}},          color={0,0,127}));
  connect(product.u1, Efd) annotation (Line(points={{522,26},{498,26},{
          498,101},{568.102,101},{568.102,20},{650,20}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -80},{640,140}})),
                          Diagram(coordinateSystem(preserveAspectRatio=false,
          extent={{-100,-80},{640,140}})));
end AVR_901;
