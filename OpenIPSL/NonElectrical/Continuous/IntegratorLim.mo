within OpenIPSL.NonElectrical.Continuous;
block IntegratorLim "Integrator with a non windup limiter"
 extends Modelica.Blocks.Interfaces.SISO;
 parameter Real K "Gain" annotation (Evaluate=false);
 parameter Real y_start "Output start value";
 parameter Real outMin "Output minimum limit";
 parameter Real outMax "Output maxmimum limit";
initial equation
 y = y_start;
equation
 assert(
   outMax > outMin,
   "Upper limit must be greater than lower limit",
   AssertionLevel.error);
 if y >= outMax and u > 0 then
   der(y) = 0;
 elseif y <= outMin and u < 0 then
   der(y) = 0;
 else
   der(y) = K*u;
 end if;
   annotation (Dialog(group="Initialization"),
   Icon(graphics={Line(points={{40,100},{60,140},{100,140}}, color={0,0,0}),
         Text(
         extent={{-20,68},{20,8}},
         lineColor={0,0,255},
         textString="K"),Line(
         points={{-80,0},{78,0}},
         color={0,0,255},
         smooth=Smooth.Bezier,
         thickness=0.5),Text(
         extent={{-70,-20},{70,-80}},
         lineColor={0,0,255},
         textString="s"),Line(points={{-100,-140},{-60,-140},{-40,-100}},
         color={0,0,0})}),
   Documentation);
end IntegratorLim;
