within OpenIPSL.Examples.Controls.ANATEM;
package User_Defined_Data

 package Records
      record MachineData
      extends Modelica.Icons.Record;
        replaceable record Machine =
          OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDGen
        constrainedby
        OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDGen;
      Machine Gen1;
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
      end MachineData;

  record UDGen
    parameter Real Xd = 1.6698;
    parameter Real R_a = 0.0011;
    parameter Real H = 2.588;
    parameter Real D = 0.999;
    parameter Real Xpd = 0.663;
    parameter Real Xppd;
    parameter Real Xppq;
    parameter Real Xq;
    parameter Real Tpd0;
    parameter Real Tppd0;
    parameter Real Tppq0;
    parameter Real Xl;
    parameter Real S10;
    parameter Real S12;
    //powerflow parameters
    parameter Real V_0 = 0.9973;
    parameter Real A_0 = 1.155;
    parameter Real P_0 = 623.3;
    parameter Real Q_0 = 22.655;

    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end UDGen;

  record UDAVR
    parameter Real Xd = 1.6698;
    parameter Real R_a = 0.0011;
    parameter Real H = 2.588;
    parameter Real D = 0.999;
    parameter Real Xpd = 0.663;
    parameter Real Xppd;
    parameter Real Xppq;
    parameter Real Xq;
    parameter Real Tpd0;
    parameter Real Tppd0;
    parameter Real Tppq0;
    parameter Real Xl;
    parameter Real S10;
    parameter Real S12;
    //powerflow parameters
    parameter Real V_0 = 0.9973;
    parameter Real A_0 = 1.155;
    parameter Real P_0 = 623.3;
    parameter Real Q_0 = 22.655;
    //AVR parameters
    parameter Real X_c = 0;
    parameter Real Eith = 2.153;
    parameter Real Eipl = 3.05;
    parameter Real Eimin = 0.1166;
    parameter Real K_v = 9.1319;
    parameter Real K_ei = 2.175;
    parameter Real Kmin = 8.6;
    parameter Real K_point = 0.95274;
    parameter Real K1 = -0.415;
    parameter Real Ti = -0.715;
    parameter Real T_a = 1.46;
    parameter Real T_b = 0.0535;
    parameter Real Tai = 0.183;
    parameter Real T1 = 0.015;
    parameter Real T2 = 0.022;

    //DO NOT CHANGE THESE PARAMETERS. THEY JUST ARE HERE FOR FUN I GUESS!!
    parameter Real Big = 10000;
    parameter Real NBig = -10000;
    parameter Real N87_94 = -87.94;
    parameter Real X16 = 1;
    parameter Real Lmin = -13.53;
    parameter Real Lmin1 = -16.23;
    parameter Real Lmax1 = 0;
    parameter Real Lmax2 = 18.53;
    parameter Real Lmin2 = -18.53;
    parameter Real Fnom = 60;
    parameter Real ModIf = 1;
    parameter Real V_p = 6.55;
    parameter Real V0 = 10;
    parameter Real Vf0 = -0.04726;
    parameter Real V0i = 10;
    parameter Real Vinf = 10.6;
    parameter Real VR_min = -8.523;
    parameter Real VR_max = 8.523;
    parameter Real Vpi = 4.163;
    parameter Real V_ref = 1.05;
    parameter Real VHz = 0;
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end UDAVR;

  record UDPSS
    parameter Real Xd = 1.6698;
    parameter Real R_a = 0.0011;
    parameter Real H = 2.588;
    parameter Real D = 0.999;
    parameter Real Xpd = 0.663;
    parameter Real Xppd;
    parameter Real Xppq;
    parameter Real Xq;
    parameter Real Tpd0;
    parameter Real Tppd0;
    parameter Real Tppq0;
    parameter Real Xl;
    parameter Real S10;
    parameter Real S12;
    //powerflow parameters
    parameter Real V_0 = 0.9973;
    parameter Real A_0 = 1.155;
    parameter Real P_0 = 623.3;
    parameter Real Q_0 = 22.655;
    //AVR parameters
    parameter Real X_c = 0;
    parameter Real Eith = 2.153;
    parameter Real Eipl = 3.05;
    parameter Real Eimin = 0.1166;
    parameter Real K_v = 9.1319;
    parameter Real K_ei = 2.175;
    parameter Real Kmin = 8.6;
    parameter Real K_point = 0.95274;
    parameter Real K1_AVR = -0.415;
    parameter Real Ti = -0.715;
    parameter Real T_a = 1.46;
    parameter Real T_b = 0.0535;
    parameter Real Tai = 0.183;
    parameter Real T1_AVR = 0.015;
    parameter Real T2_AVR = 0.022;

    //DO NOT CHANGE THESE PARAMETERS. THEY JUST ARE HERE FOR FUN I GUESS!!

    parameter Real Big = 10000;
    parameter Real NBig = -10000;
    parameter Real N87_94 = -87.94;
    parameter Real X16 = 1;
    parameter Real Lmin = -13.53;
    parameter Real Lmin1 = -16.23;
    parameter Real Lmax1 = 0;
    parameter Real Lmax2 = 18.53;
    parameter Real Lmin2 = -18.53;
    parameter Real Fnom = 60;
    parameter Real ModIf = 1;
    parameter Real V_p = 6.55;
    parameter Real V0 = 10;
    parameter Real Vf0 = -0.04726;
    parameter Real V0i = 10;
    parameter Real Vinf = 10.6;
    parameter Real VR_min = -8.523;
    parameter Real VR_max = 8.523;
    parameter Real Vpi = 4.163;
    parameter Real V_ref = 1.05;
    parameter Real VHz = 0;

    //PSS Parameters to CHANGE

    parameter Real Kf = 0.9;
    parameter Real Kf1 = 1.15;
    parameter Real Kp = 2.8;
    parameter Real K1_PSS = 6.7642;
    parameter Real T1_PSS = 0.03;
    parameter Real K2 = 137.46;
    parameter Real T2_PSS = 0.04;
    parameter Real K_out = 1/100;
    parameter Real Tf = 1.5;
    parameter Real Tp = 1.5;
    //THESE PARAMETERS ARE CONSTANT
    parameter Real Dfmax = 0.0333333333333;
    parameter Real Dfig = 0.01666666666666;
    parameter Real Pemin = 0.3;
    parameter Real Vpmax = 5.4115;
    parameter Real Vpmin = -5.4115;
    parameter Real Vtmax = 1.2;
    parameter Real Vtmin = 0.7;

    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end UDPSS;

   record UDTG "User defined model for turbine governor model"
     parameter Real k=1;
     parameter Real Xd = 1.6698;
     parameter Real R_a = 0.0011;
     parameter Real H = 2.588;
     parameter Real D = 0.999;
     parameter Real Xpd = 0.663;
     parameter Real Xppd;
     parameter Real Xppq;
     parameter Real Xq;
     parameter Real Tpd0;
     parameter Real Tppd0;
     parameter Real Tppq0;
     parameter Real Xl;
     parameter Real S10;
     parameter Real S12;
     //powerflow parameters
     parameter Real V_0 = 0.9973;
     parameter Real A_0 = 1.155;
     parameter Real P_0 = 623.3;
     parameter Real Q_0 = 22.655;
     //AVR parameters
     parameter Real X_c = 0;
     parameter Real K_v = 9.1319;
     parameter Real K_ei = 2.175;
     parameter Real Kmin = 8.6;
     parameter Real K_point = 0.95274;
     parameter Real K1_AVR = -0.415;
     parameter Real Ti = -0.715;
     parameter Real T_a = 1.46;
     parameter Real T_b = 0.0535;
     parameter Real Tai = 0.183;
     parameter Real T1_AVR = 0.015;
     parameter Real T2_AVR = 0.022;

     //DO NOT CHANGE THESE PARAMETERS. THEY JUST ARE HERE FOR FUN I GUESS!!
     parameter Real Eith = 2.153;
     parameter Real Eipl = 3.05;
     parameter Real Eimin = 0.1166;
     parameter Real Big = 10000;
     parameter Real NBig = -10000;
     parameter Real N87_94 = -87.94;
     parameter Real X16 = 1;
     parameter Real Lmin = -13.53;
     parameter Real Lmin1 = -16.23;
     parameter Real Lmax1 = 0;
     parameter Real Lmax2 = 18.53;
     parameter Real Lmin2 = -18.53;
     parameter Real Fnom = 60;
     parameter Real ModIf = 1;
     parameter Real V_p = 6.55;
     parameter Real V0 = 10;
     parameter Real Vf0 = -0.04726;
     parameter Real V0i = 10;
     parameter Real Vinf = 10.6;
     parameter Real VR_min = -8.523;
     parameter Real VR_max = 8.523;
     parameter Real Vpi = 4.163;
     parameter Real V_ref = 1.05;
     parameter Real VHz = 0;

     //PSS Parameters to CHANGE
     parameter Real Dfmax = 0.0333333333333;
     parameter Real Dfig = 0.01666666666666;
     parameter Real Kf = 0.9;
     parameter Real Kf1 = 1.15;
     parameter Real Kp = 2.8;
     parameter Real K1_PSS = 6.7642;
     parameter Real T1_PSS = 0.03;
     parameter Real K2 = 137.46;
     parameter Real T2_PSS = 0.04;
     parameter Real K_out = 1/100;
     parameter Real Tf = 1.5;
     parameter Real Tp = 1.5;
     //THESE PARAMETERS ARE CONSTANT
     parameter Real Pemin = 0.3;
     parameter Real Vpmax = 5.4115;
     parameter Real Vpmin = -5.4115;
     parameter Real Vtmax = 1.2;
     parameter Real Vtmin = 0.7;

     //TG parameters
     //DO NOT CHANGE THESE PARAMETERS
     parameter Real PB_maq = 737;
     parameter Real PB_turb = 740;
     parameter Real Pe0 = 1;
     //Parameters to change
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
     parameter Real Pmech_old = -0.0560792;

     parameter Real LP_PELEC = 0.2;
     parameter Real PE_HB = 1.5;

     parameter Real HB_m = 1;
     parameter Real HB_y = -120;
     parameter Real str1_m = 0.0125;
     parameter Real str1_b = 1;
     parameter Real str2_m = 0.0056;
     parameter Real str2_b = 1;
     parameter Real str3_m = 1;
     parameter Real str3_b = -0.15;
     parameter Real str4_m = 1;
     parameter Real str4_b = -0.17;
     parameter Real str5_m = 0.85;
     parameter Real str5_b = 0.05;
     parameter Real str6_m = 1;
     parameter Real str6_b = 0.04;
     parameter Real g4 = 0.4;
     parameter Real g8 = 3;
     parameter Real g14 = 1.16;
     parameter Real g15 = 1.7;
     parameter Real g16 = 0.6;
     annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
           coordinateSystem(preserveAspectRatio=false)));
   end UDTG;

   record UDTG_HYGOV "User defined model for turbine governor model"
     parameter Real k=1;
     parameter Real Xd = 1.6698;
     parameter Real R_a = 0.0011;
     parameter Real H = 2.588;
     parameter Real D = 0.999;
     parameter Real Xpd = 0.663;
     parameter Real Xppd;
     parameter Real Xppq;
     parameter Real Xq;
     parameter Real Tpd0;
     parameter Real Tppd0;
     parameter Real Tppq0;
     parameter Real Xl;
     parameter Real S10;
     parameter Real S12;
     //powerflow parameters
     parameter Real V_0 = 0.9973;
     parameter Real A_0 = 1.155;
     parameter Real P_0 = 623.3;
     parameter Real Q_0 = 22.655;
     //AVR parameters
     parameter Real X_c = 0;
     parameter Real K_v = 9.1319;
     parameter Real K_ei = 2.175;
     parameter Real Kmin = 8.6;
     parameter Real K_point = 0.95274;
     parameter Real K1_AVR = -0.415;
     parameter Real Ti = -0.715;
     parameter Real T_a = 1.46;
     parameter Real T_b = 0.0535;
     parameter Real Tai = 0.183;
     parameter Real T1_AVR = 0.015;
     parameter Real T2_AVR = 0.022;

     //DO NOT CHANGE THESE PARAMETERS. THEY JUST ARE HERE FOR FUN I GUESS!!
     parameter Real Eith = 2.153;
     parameter Real Eipl = 3.05;
     parameter Real Eimin = 0.1166;
     parameter Real Big = 10000;
     parameter Real NBig = -10000;
     parameter Real N87_94 = -87.94;
     parameter Real X16 = 1;
     parameter Real Lmin = -13.53;
     parameter Real Lmin1 = -16.23;
     parameter Real Lmax1 = 0;
     parameter Real Lmax2 = 18.53;
     parameter Real Lmin2 = -18.53;
     parameter Real Fnom = 60;
     parameter Real ModIf = 1;
     parameter Real V_p = 6.55;
     parameter Real V0 = 10;
     parameter Real Vf0 = -0.04726;
     parameter Real V0i = 10;
     parameter Real Vinf = 10.6;
     parameter Real VR_min = -8.523;
     parameter Real VR_max = 8.523;
     parameter Real Vpi = 4.163;
     parameter Real V_ref = 1.05;
     parameter Real VHz = 0;

     //PSS Parameters to CHANGE
     parameter Real Dfmax = 0.0333333333333;
     parameter Real Dfig = 0.01666666666666;
     parameter Real Kf = 0.9;
     parameter Real Kf1 = 1.15;
     parameter Real Kp = 2.8;
     parameter Real K1_PSS = 6.7642;
     parameter Real T1_PSS = 0.03;
     parameter Real K2 = 137.46;
     parameter Real T2_PSS = 0.04;
     parameter Real K_out = 1/100;
     parameter Real Tf = 1.5;
     parameter Real Tp = 1.5;
     //THESE PARAMETERS ARE CONSTANT
     parameter Real Pemin = 0.3;
     parameter Real Vpmax = 5.4115;
     parameter Real Vpmin = -5.4115;
     parameter Real Vtmax = 1.2;
     parameter Real Vtmin = 0.7;

     //TG parameters
     //DO NOT CHANGE THESE PARAMETERS
     parameter Real R;
     parameter Real r;
     parameter Real T_r;
     parameter Real T_f;
     parameter Real T_g;
     parameter Real VELM;
     parameter Real G_MAX;
     parameter Real G_MIN;
     parameter Real T_w;
     parameter Real A_t;
     parameter Real D_turb;
     parameter Real q_NL;
     annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
           coordinateSystem(preserveAspectRatio=false)));
   end UDTG_HYGOV;
 end Records;

  package ParameterData
    package Records_2015_09_22

      //PSS Parameters to CHANGE

      package AVR
        record PSO_2015_09_22 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=0.53257,
            H=2.8756,
            D=0.53319,
            Xd=1.4408,
            R_a=0.020912,
            Xppd=0.16556,
            Xppq=1.3078,
            Xq=1.7061,
            Xpd=1.2874,
            Tpd0=4.2382,
            Tppd0=0.53354,
            Tppq0=1.9943,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.986,
            A_0=0,
            P_0=623.51475193,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=1.045,
            K_ei=5.3983,
            Kmin=5.332,
            K_point=1.2608,
            K1_AVR=-0.57095,
            Ti=-0.36021,
            T_a=1.6113,
            T_b=1.1498,
            Tai=0.49837,
            T1_AVR=0.68807,
            T2_AVR=0.57471,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.7621,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);
      record fmincon_2015_09_22_init =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.002283096313477,
            H=3.83353115364838,
            D=0.454436545910596,
            Xd=1.66387,
            R_a=0.027183,
            Xppd=0.202241577936589,
            Xppq=1.15502217265951,
            Xq=1.6379074899141,
            Xpd=1.48868837268512,
            Tpd0=3.91429042980244,
            Tppd0=0.825648998009575,
            Tppq0=1.5750466664961,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.986,
            A_0=0,
            P_0=623.51475193,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=9.15384365613976,
            K_ei=5.75413685456147,
            Kmin=6.3984101545657,
            K_point=1.25496384461877,
            K1_AVR=-0.614389425140685,
            Ti=-0.520411928516953,
            T_a=1.79092624352312,
            T_b=0.686626599120026,
            Tai=0.535857199307619,
            T1_AVR=0.698552388413094,
            T2_AVR=0.46109150129624,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.7621,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2015_09_22_Kv =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            H=2.9103,
            D=0.9963,
            Xd=1.1078,
            R_a=0.0101,
            Xppd=0.1394,
            Xppq=1.9986,
            Xq=1.9995,
            Xpd=1.7999,
            Tpd0=10.9196,
            Tppd0=2.4772,
            Tppq0=1.6095,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.986,
            A_0=0,
            P_0=623.51475193,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=0.83,
            K_ei=5.3983,
            Kmin=5.332,
            K_point=1.2608,
            K1_AVR=-0.57095,
            Ti=-0.36021,
            T_a=1.6113,
            T_b=1.1498,
            Tai=0.49837,
            T1_AVR=0.68807,
            T2_AVR=0.57471,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.7621,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2015_09_22_Kei =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            H=2.9115,
            D=0.9908,
            Xd=1.1077,
            R_a=0.0104,
            Xppd=0.1405,
            Xppq=1.9938,
            Xq=1.9972,
            Xpd=1.8006,
            Tpd0=9.9122,
            Tppd0=2.4770,
            Tppq0=1.6121,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.986,
            A_0=0,
            P_0=623.51475193,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=0.8044,
            K_ei=5.3998,
            Kmin=5.332,
            K_point=1.2608,
            K1_AVR=-0.57095,
            Ti=-0.36021,
            T_a=1.6113,
            T_b=1.1498,
            Tai=0.49837,
            T1_AVR=0.68807,
            T2_AVR=0.57471,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.7621,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

         record fmincon_2015_09_22_Kmin =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.002626419067383,
            D=0.9908,
            Xd=1.1077,
            R_a=0.0104,
            Xppd=0.1405,
            Xppq=1.9938,
            Xq=1.9972,
            Xpd=1.8006,
            Tpd0=9.9122,
            Tppd0=2.4770,
            Tppq0=1.6121,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.986,
            A_0=0,
            P_0=623.51475193,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=0.8044,
            K_ei=5.3998,
            Kmin=5.332,
            K_point=1.2608,
            K1_AVR=-0.57095,
            Ti=-0.36021,
            T_a=1.6113,
            T_b=1.1498,
            Tai=0.49837,
            T1_AVR=0.68807,
            T2_AVR=0.57471,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.7621,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

         record fmincon_2015_09_22_Kpoint =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.002626419067383,
            H=2.8104,
            D=0.6989,
            Xd=0.6520,
            R_a=0.0147,
            Xppd=0.1317,
            Xppq=1.8917,
            Xq=1.9566,
            Xpd=1.0636,
            Tpd0=18.3515,
            Tppd0=2.2756,
            Tppq0=1.8132,
            Xl=0.13,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0.988435305548050,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=1.4336,
            K_ei=5.3656,
            Kmin=5.5299,
            K_point=0.9766,
            K1_AVR=-0.57095,
            Ti=-0.36021,
            T_a=1.6113,
            T_b=1.1498,
            Tai=0.49837,
            T1_AVR=0.68807,
            T2_AVR=0.57471,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=0.9,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3);

      record fmincon_2015_09_22_K1_AVR =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.002626419067383,
            H=2.8104,
            D=0.6989,
            Xd=0.6520,
            R_a=0.0147,
            Xppd=0.1317,
            Xppq=1.8917,
            Xq=1.9566,
            Xpd=1.0636,
            Tpd0=18.3515,
            Tppd0=2.2756,
            Tppq0=1.8132,
            Xl=0.13,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0.988435305548050,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=1.4336,
            K_ei=5.3656,
            Kmin=5.5299,
            K_point=0.9766,
            K1_AVR=-0.57095,
            Ti=-0.36021,
            T_a=1.6113,
            T_b=1.1498,
            Tai=0.49837,
            T1_AVR=0.68807,
            T2_AVR=0.57471,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=0.9,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3);

      record fmincon_2015_09_22_T_a =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            H=2.8104,
            D=0.6989,
            Xd=0.6520,
            R_a=0.0147,
            Xppd=0.1317,
            Xppq=1.8917,
            Xq=1.9566,
            Xpd=1.0636,
            Tpd0=18.3515,
            Tppd0=2.2756,
            Tppq0=1.8132,
            Xl=0.13,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0.988435305548050,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=1.4336,
            K_ei=5.3656,
            Kmin=5.5299,
            K_point=0.9766,
            K1_AVR=-0.57095,
            Ti=-0.36021,
            T_a=1.6113,
            T_b=1.1498,
            Tai=0.49837,
            T1_AVR=0.68807,
            T2_AVR=0.57471,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=0.9,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3);

      record fmincon_2015_09_22_T_b =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            H=2.8104,
            D=0.6989,
            Xd=0.6520,
            R_a=0.0147,
            Xppd=0.1317,
            Xppq=1.8917,
            Xq=1.9566,
            Xpd=1.0636,
            Tpd0=18.3515,
            Tppd0=2.2756,
            Tppq0=1.8132,
            Xl=0.13,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0.988435305548050,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=1.4336,
            K_ei=5.3656,
            Kmin=5.5299,
            K_point=0.9766,
            K1_AVR=-0.57095,
            Ti=-0.36021,
            T_a=1.6113,
            T_b=1.1498,
            Tai=0.49837,
            T1_AVR=0.68807,
            T2_AVR=0.57471,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=0.9,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3);

      record fmincon_2015_09_22_T1_AVR =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.002626419067383,
            H=2.8104,
            D=0.6989,
            Xd=0.6520,
            R_a=0.0147,
            Xppd=0.1317,
            Xppq=1.8917,
            Xq=1.9566,
            Xpd=1.0636,
            Tpd0=18.3515,
            Tppd0=2.2756,
            Tppq0=1.8132,
            Xl=0.13,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0.988435305548050,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=1.4336,
            K_ei=5.3656,
            Kmin=5.5299,
            K_point=0.9766,
            K1_AVR=-0.57095,
            Ti=-0.36021,
            T_a=1.6113,
            T_b=1.1498,
            Tai=0.4941,
            T1_AVR=0.68807,
            T2_AVR=0.57471,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=0.9,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2015_09_22_T2_AVR =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.002626419067383,
            H=2.8104,
            D=0.6989,
            Xd=0.6520,
            R_a=0.0147,
            Xppd=0.1317,
            Xppq=1.8917,
            Xq=1.9566,
            Xpd=1.0636,
            Tpd0=18.3515,
            Tppd0=2.2756,
            Tppq0=1.8132,
            Xl=0.13,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0.988435305548050,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=1.486,
            K_ei=5.3656,
            Kmin=5.5299,
            K_point=0.9766,
            K1_AVR=-0.57095,
            Ti=-0.36021,
            T_a=1.6113,
            T_b=1.1498,
            Tai=0.4941,
            T1_AVR=0.47524,
            T2_AVR=0.523,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=0.9,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record total_2015_09_22 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=1,
            H=2.8756,
            D=0.53319,
            Xd=1.4408,
            R_a=0.020912,
            Xppd=0.16556,
            Xppq=1.3078,
            Xq=1.7061,
            Xpd=1.2874,
            Tpd0=4.2382,
            Tppd0=0.53354,
            Tppq0=1.9943,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.986,
            A_0=0,
            P_0=623.51475193,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=1.045,
            K_ei=5.3983,
            Kmin=5.332,
            K_point=1.2608,
            K1_AVR=-0.57095,
            Ti=-0.36021,
            T_a=1.6113,
            T_b=1.1498,
            Tai=0.49837,
            T1_AVR=0.68807,
            T2_AVR=0.57471,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.7621,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);
      end AVR;

      package PSS
        record PSO_2015_09_22_PSS_init =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            H=2.9104,
            D=0.6989,
            Xd=1.0520,
            R_a=0.147,
            Xppd=0.1317,
            Xppq=1.8917,
            Xq=1.8566,
            Xpd=1.0636,
            Tpd0=10.3515,
            Tppd0=0.7756,
            Tppq0=2.8132,
            Xl=0.01,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=1.44,
            K_ei=5.3656,
            Kmin=5.5299,
            K_point=1.2001,
            K1_AVR=-0.57095,
            Ti=-0.36021,
            T_a=1.6113,
            T_b=1.1498,
            Tai=0.49837,
            T1_AVR=0.68807,
            T2_AVR=0.57471,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=0.705308,
            Kf1=0.952259,
            Kp=1.729445,
            K1_PSS=6.551129,
            T1_PSS=0.053985,
            K2=789.9087,
            T2_PSS=0.376499,
            K_out=1/100,
            Tf=1.44519,
            Tp=1.427425,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2015_09_22_Kf =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            H=2.8085,
            D=0.6989,
            Xd=1.0520,
            R_a=0.016,
            Xppd=0.1335,
            Xppq=1.8706,
            Xq=1.8566,
            Xpd=0.9878,
            Tpd0=4.0046,
            Tppd0=2.2938,
            Tppq0=1.8169,
            Xl=0.01,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=1.3937,
            K_ei=5.3669,
            Kmin=5.5299,
            K_point=1.36889,
            K1_AVR=-0.5671,
            Ti=-0.3682,
            T_a=1.6105,
            T_b=1.1094,
            Tai=0.4987,
            T1_AVR=0.68807,
            T2_AVR=0.5706,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.0708,
            Kf1=0.952259,
            Kp=1.729445,
            K1_PSS=6.551129,
            T1_PSS=0.053985,
            K2=789.9087,
            T2_PSS=0.376499,
            K_out=1/100,
            Tf=1.44519,
            Tp=1.427425,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2015_09_22_Kf1 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.002626419067383,
            H=2.6828,
            D=0.6352,
            Xd=0.9948,
            R_a=0.0237,
            Xppd=0.1481,
            Xppq=1.7296,
            Xq=1.8938,
            Xpd=1.1002,
            Tpd0=3.9443,
            Tppd0=2.505,
            Tppq0=1.8441,
            Xl=0.01,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=1.0259,
            K_ei=5.3762,
            Kmin=5.5296,
            K_point=1.5073,
            K1_AVR=-0.5412,
            Ti=-0.4212,
            T_a=1.6047,
            T_b=1.0907,
            Tai=0.5011,
            T1_AVR=0.6026,
            T2_AVR=0.5433,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.0669,
            Kf1=1.036,
            Kp=1.729445,
            K1_PSS=6.551129,
            T1_PSS=0.053985,
            K2=789.9087,
            T2_PSS=0.376499,
            K_out=1/100,
            Tf=1.44519,
            Tp=1.427425,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2015_09_22_Kp =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.002626419067383,
            H=2.3667,
            D=0.5531,
            Xd=1.0213,
            R_a=0.0354,
            Xppd=0.1818,
            Xppq=1.6694,
            Xq=1.786,
            Xpd=0.9961,
            Tpd0=3.5326,
            Tppd0=2.3879,
            Tppq0=2.0728,
            Xl=0.01,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=0.8822,
            K_ei=5.4714,
            Kmin=5.5261,
            K_point=1.3624,
            K1_AVR=-0.484,
            Ti=-0.5314,
            T_a=1.5603,
            T_b=1.0763,
            Tai=0.5065,
            T1_AVR=0.4582,
            T2_AVR=0.4831,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.0459,
            Kf1=1.0534,
            Kp=2.328,
            K1_PSS=6.551129,
            T1_PSS=0.053985,
            K2=789.9087,
            T2_PSS=0.376499,
            K_out=1/100,
            Tf=1.44519,
            Tp=1.427425,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2015_09_22_K1_PSS =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.002626419067383,
            H=2.3667,
            D=0.5531,
            Xd=1.0213,
            R_a=0.0354,
            Xppd=0.1818,
            Xppq=1.6694,
            Xq=1.786,
            Xpd=0.9961,
            Tpd0=3.5326,
            Tppd0=2.3879,
            Tppq0=2.0728,
            Xl=0.01,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=0.8822,
            K_ei=5.4714,
            Kmin=5.5261,
            K_point=1.3624,
            K1_AVR=-0.484,
            Ti=-0.5314,
            T_a=1.5603,
            T_b=1.0763,
            Tai=0.5065,
            T1_AVR=0.4582,
            T2_AVR=0.4831,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.0459,
            Kf1=1.0534,
            Kp=2.328,
            K1_PSS=6.5889,
            T1_PSS=0.053985,
            K2=789.9087,
            T2_PSS=0.376499,
            K_out=1/100,
            Tf=1.44519,
            Tp=1.427425,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2015_09_22_T1_PSS =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.002626419067383,
            H=2.57,
            D=0.869,
            Xd=0.617,
            R_a=0.00425,
            Xppd=0.145,
            Xppq=1.98,
            Xq=1.99,
            Xpd=1.66,
            Tpd0=3.61,
            Tppd0=3.58,
            Tppq0=2.5,
            Xl=0.01,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=0.1622,
            K_ei=5.72,
            Kmin=5.52,
            K_point=1.70,
            K1_AVR=-0.499,
            Ti=-0.501,
            T_a=1.54,
            T_b=1.07,
            Tai=0.505,
            T1_AVR=0.498,
            T2_AVR=0.499,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.05,
            Kf1=1.05,
            Kp=2.56,
            K1_PSS=6.73,
            T1_PSS=0.05,
            K2=789.9087,
            T2_PSS=0.376499,
            K_out=1/100,
            Tf=1.44519,
            Tp=1.427425,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2015_09_22_K2 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.002626419067383,
            H=2.3542,
            D=0.5949,
            Xd=1.2594,
            R_a=0.0129,
            Xppd=0.1746,
            Xppq=1.6977,
            Xq=1.8055,
            Xpd=1.3145,
            Tpd0=3.5603,
            Tppd0=2.7449,
            Tppq0=2.5177,
            Xl=0.13,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=0.9623,
            K_ei=6.2989,
            Kmin=5.4814,
            K_point=1.4982,
            K1_AVR=-0.5,
            Ti=-0.5001,
            T_a=1.5511,
            T_b=1.1102,
            Tai=0.5050,
            T1_AVR=0.4999,
            T2_AVR=0.5000,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.0494,
            Kf1=1.0505,
            Kp=2.5514,
            K1_PSS=7.9205,
            T1_PSS=0.05,
            K2=480.1345,
            T2_PSS=0.3764987,
            K_out=1/100,
            Tf=1.445193,
            Tp=1.426425,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2015_09_22_T2_PSS =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.002626419067383,
            H=2.7204,
            D=0.9797,
            Xd=1.8106,
            R_a=0.0006,
            Xppd=0.1498,
            Xppq=1.2628,
            Xq=1.9918,
            Xpd=1.9887,
            Tpd0=4.8975,
            Tppd0=2.9279,
            Tppq0=2.6298,
            Xl=0.13,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0.988435305548050,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=0.0183,
            K_ei=6.3315,
            Kmin=5.4797,
            K_point=1.5543,
            K1_AVR=-0.5,
            Ti=-0.5,
            T_a=1.5511,
            T_b=1.1381,
            Tai=0.5050,
            T1_AVR=0.5,
            T2_AVR=0.5,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.0498,
            Kf1=1.0501,
            Kp=2.5517,
            K1_PSS=7.9336,
            T1_PSS=0.05,
            K2=480.1831,
            T2_PSS=0.5163,
            K_out=1/100,
            Tf=1,
            Tp=1.426425,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2015_09_22_Tf =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.002626419067383,
            H=3.9025,
            D=0.43,
            Xd=0.6058,
            R_a=0.0108,
            Xppd=0.1982,
            Xppq=1.3405,
            Xq=1.3307,
            Xpd=1.2644,
            Tpd0=4.292,
            Tppd0=0.5626,
            Tppq0=2.7336,
            Xl=0.13,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0.988435305548050,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=17.3409,
            K_ei=4.1086,
            Kmin=11.0933,
            K_point=1.0285,
            K1_AVR=-0.5443,
            Ti=-0.4776,
            T_a=1.4217,
            T_b=0.9662,
            Tai=0.5153,
            T1_AVR=0.485,
            T2_AVR=0.484,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.0713,
            Kf1=1.0328,
            Kp=2.1985,
            K1_PSS=6.5889,
            T1_PSS=0.0475,
            K2=789.9086,
            T2_PSS=0.36,
            K_out=1/100,
            Tf=1,
            Tp=1.426425,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2015_09_22_Tp =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.002626419067383,
            H=2.7204,
            D=0.9797,
            Xd=1.8106,
            R_a=0.0006,
            Xppd=0.1498,
            Xppq=1.2628,
            Xq=1.9918,
            Xpd=1.9887,
            Tpd0=4.8975,
            Tppd0=2.9279,
            Tppq0=2.6298,
            Xl=0.13,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=0.0183,
            K_ei=6.3315,
            Kmin=5.4797,
            K_point=1.5699,
            K1_AVR=-0.5,
            Ti=-0.5,
            T_a=1.5511,
            T_b=1.1381,
            Tai=0.5050,
            T1_AVR=0.5,
            T2_AVR=0.5,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.0498,
            Kf1=1.0501,
            Kp=2.5517,
            K1_PSS=7.9336,
            T1_PSS=0.05,
            K2=480.1831,
            T2_PSS=0.5163,
            K_out=1/100,
            Tf=1.9,
            Tp=1.427425,
            Bp=0.05,
            Bt=0.6,
            ASX=0.5,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4,
            Pmech_old=-0.0878022);

      end PSS;

      package TG
        record PSO_2015_09_22_TG =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=0.556,
            H=4.08105,
            D=0.364774,
            Xd=1.57123,
            R_a=0.334308,
            Xppd=0.876285,
            Xppq=1.03415,
            Xq=1.45117,
            Xpd=1.92346,
            Tpd0=2.52949,
            Tppd0=0.425008,
            Tppq0=2.91547,
            Xl=0.003,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=9.9532,
            K_ei=3.2517,
            Kmin=3.6934,
            K_point=1.3329,
            K1_AVR=-0.6611,
            Ti=-0.54738,
            T_a=1.8834,
            T_b=1.1733,
            Tai=0.42987,
            T1_AVR=0.3418,
            T2_AVR=0.67609,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=0.9,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.25,
            LP=1.035,
            LA=0.92,
            HB=117.4,
            G0=400,
            Tn=0.425008,
            NTv=2.91547,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.0851648,
            Tw=4.33231,
            Tya=19.4119,
            Pmech_old=-0.06918);
      record fmincon_2015_09_22_Tn =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=4.9226,
            D=0.8936,
            Xd=1.9911,
            R_a=0.0017,
            Xppd=0.3135,
            Xppq=1.9983,
            Xq=1.0173,
            Xpd=1.9987,
            Tpd0=3.4779,
            Tppd0=0.6569,
            Tppq0=2.3674,
            Xl=0.25,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0.988435305548050,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.4440,
            NTv=3.69399,
            Td=10.6773,
            Tf1=3.80506,
            Tf2=6.90791,
            Tv=0.0798201,
            Tw=1.21325,
            Tya=16.8393,
            Pmech_old=-0.0877259);

      record fmincon_2015_09_22_NTv =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=4.9029,
            D=0.8725,
            Xd=1.974,
            R_a=0.0053,
            Xppd=0.3166,
            Xppq=1.9749,
            Xq=1.0097,
            Xpd=1.995,
            Tpd0=3.4837,
            Tppd0=0.6659,
            Tppq0=2.3851,
            Xl=0.75,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.4925,
            NTv=3.6926,
            Td=10.6773,
            Tf1=3.80506,
            Tf2=6.90791,
            Tv=0.0798201,
            Tw=1.21325,
            Tya=16.8393,
            Pmech_old=-0.0877259);

      record fmincon_2015_09_22_Td =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=4.7356,
            D=0.9378,
            Xd=1.9651,
            R_a=0.0004,
            Xppd=0.3191,
            Xppq=1.9533,
            Xq=1.0483,
            Xpd=1.9823,
            Tpd0=3.4498,
            Tppd0=0.5952,
            Tppq0=2.3557,
            Xl=0.75,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=1.2492,
            NTv=4.1226,
            Td=9.8913,
            Tf1=3.80506,
            Tf2=6.90791,
            Tv=0.0798201,
            Tw=1.21325,
            Tya=16.8393,
            Pmech_old=-0.0877259);

      record fmincon_2015_09_22_Tf1 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=4.9115,
            D=0.7438,
            Xd=1.9618,
            R_a=0.0087,
            Xppd=0.3190,
            Xppq=1.9847,
            Xq=1.1902,
            Xpd=1.9936,
            Tpd0=3.4929,
            Tppd0=0.5728,
            Tppq0=0.8824,
            Xl=0.75,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=1.1517,
            NTv=4.3051,
            Td=9.4629,
            Tf1=4.0672,
            Tf2=6.90791,
            Tv=0.0798201,
            Tw=1.21325,
            Tya=16.8393,
            Pmech_old=-0.0877259);

      record fmincon_2015_09_22_Tf2 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=4.8813,
            D=0.7418,
            Xd=1.9519,
            R_a=0.002,
            Xppd=0.3156,
            Xppq=1.9967,
            Xq=1.1917,
            Xpd=1.9987,
            Tpd0=3.4927,
            Tppd0=0.568,
            Tppq0=0.8777,
            Xl=0.75,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=1.1326,
            NTv=4.3034,
            Td=9.4644,
            Tf1=4.065,
            Tf2=6.9077,
            Tv=0.0798201,
            Tw=1.21325,
            Tya=16.8393,
            Pmech_old=-0.0877259);

      record fmincon_2015_09_22_Tv =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=3.9245,
            D=0.9069,
            Xd=1.2886,
            R_a=0.0022,
            Xppd=0.1148,
            Xppq=1.5973,
            Xq=1.2917,
            Xpd=1.2987,
            Tpd0=3.4748,
            Tppd0=0.5728,
            Tppq0=0.8808,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=1.0912,
            NTv=4.2971,
            Td=9.4638,
            Tf1=4.0531,
            Tf2=6.8984,
            Tv=0.0498,
            Tw=1.21325,
            Tya=16.8393,
            Pmech_old=-0.0877259);

      record fmincon_2015_09_22_Tw =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=3.9245,
            D=0.9069,
            Xd=1.2886,
            R_a=0.0022,
            Xppd=0.1148,
            Xppq=1.5973,
            Xq=1.2917,
            Xpd=1.2987,
            Tpd0=3.4748,
            Tppd0=0.5728,
            Tppq0=0.8808,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=1.0912,
            NTv=4.2971,
            Td=9.4638,
            Tf1=4.0531,
            Tf2=6.8984,
            Tv=0.0498,
            Tw=1.21325,
            Tya=16.8393,
            Pmech_old=-0.0877259);

      record fmincon_2015_09_22_Tya =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=4.9245,
            D=0.9838,
            Xd=1.8479,
            R_a=0.0005,
            Xppd=0.2148,
            Xppq=1.4995,
            Xq=1.2267,
            Xpd=1.9998,
            Tpd0=4.9269,
            Tppd0=0.5655,
            Tppq0=0.8454,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=1.0626,
            NTv=4.2971,
            Td=9.6176,
            Tf1=5.0213,
            Tf2=7.3886,
            Tv=0.0503,
            Tw=0.9196,
            Tya=17.2409,
            Pmech_old=-0.0894134);

      end TG;

      package All
        record PSO_2015_09_22_all =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=0.556,
            H=2.7797,
            D=0.8762,
            Xd=1.573,
            R_a=0.0649,
            Xppd=0.2663,
            Xppq=1.8066,
            Xq=1.705,
            Xpd=1.7183,
            Tpd0=4.6417,
            Tppd0=2.7965,
            Tppq0=2.5882,
            Xl=0.13,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=0.9406,
            K_ei=6.2148,
            Kmin=5.5846,
            K_point=1.3791,
            K1_AVR=-0.4653,
            Ti=-0.5058,
            T_a=1.5750,
            T_b=1.1611,
            Tai=0.5320,
            T1_AVR=0.5145,
            T2_AVR=0.4544,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.0464,
            Kf1=1.1343,
            Kp=2.5237,
            K1_PSS=8.0406,
            T1_PSS=0.0532,
            K2=430.4151,
            T2_PSS=0.5193,
            K_out=1/100,
            Tf=1.9168,
            Tp=1.6311,
            Bp=0.05,
            Bt=0.6,
            ASX=0.5,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=1.1301,
            NTv=13.1542,
            Td=10.113,
            Tf1=8.1972,
            Tf2=8.0612,
            Tv=0.0747,
            Tw=3.2342,
            Tya=17.1505,
            Pmech_old=-0.084081);
      record fmincon_2015_09_22_Tn =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=2.7797,
            D=0.8762,
            Xd=1.573,
            R_a=0.0649,
            Xppd=0.2663,
            Xppq=1.8066,
            Xq=1.705,
            Xpd=1.7183,
            Tpd0=4.6417,
            Tppd0=2.7965,
            Tppq0=2.5882,
            Xl=0.13,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=0.9406,
            K_ei=6.2148,
            Kmin=5.5846,
            K_point=1.3791,
            K1_AVR=-0.4653,
            Ti=-0.5058,
            T_a=1.5750,
            T_b=1.1611,
            Tai=0.5320,
            T1_AVR=0.5145,
            T2_AVR=0.4544,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.0464,
            Kf1=1.1343,
            Kp=2.5237,
            K1_PSS=8.0406,
            T1_PSS=0.0532,
            K2=430.4151,
            T2_PSS=0.5193,
            K_out=1/100,
            Tf=1.9168,
            Tp=1.6311,
            Bp=0.05,
            Bt=0.6,
            ASX=0.5,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=1.1301,
            NTv=13.1542,
            Td=10.113,
            Tf1=8.1972,
            Tf2=8.0612,
            Tv=0.0747,
            Tw=3.2342,
            Tya=17.1505,
            Pmech_old=-0.0877259);

      record fmincon_2015_09_22_NTv =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=2.7797,
            D=0.8762,
            Xd=1.573,
            R_a=0.0649,
            Xppd=0.2663,
            Xppq=1.8066,
            Xq=1.705,
            Xpd=1.7183,
            Tpd0=4.6417,
            Tppd0=2.7965,
            Tppq0=2.5882,
            Xl=0.13,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=0.9406,
            K_ei=6.2148,
            Kmin=5.5846,
            K_point=1.3791,
            K1_AVR=-0.4653,
            Ti=-0.5058,
            T_a=1.5750,
            T_b=1.1611,
            Tai=0.5320,
            T1_AVR=0.5145,
            T2_AVR=0.4544,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.0464,
            Kf1=1.1343,
            Kp=2.5237,
            K1_PSS=8.0406,
            T1_PSS=0.0532,
            K2=430.4151,
            T2_PSS=0.5193,
            K_out=1/100,
            Tf=1.9168,
            Tp=1.6311,
            Bp=0.05,
            Bt=0.6,
            ASX=0.5,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=1.1301,
            NTv=13.1542,
            Td=10.113,
            Tf1=8.1972,
            Tf2=8.0612,
            Tv=0.0747,
            Tw=3.2342,
            Tya=17.1505,
            Pmech_old=-0.0877259);

      record fmincon_2015_09_22_Td =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=3.0737,
            D=0.4129,
            Xd=1.0182,
            R_a=0.0818,
            Xppd=0.6784,
            Xppq=1.5118,
            Xq=1.6020,
            Xpd=1.1586,
            Tpd0=4.2702,
            Tppd0=2.2531,
            Tppq0=2.5851,
            Xl=0.13,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=0.8007,
            K_ei=6.2081,
            Kmin=5.5825,
            K_point=1.0932,
            K1_AVR=-0.4938,
            Ti=-0.5011,
            T_a=1.5698,
            T_b=1.1580,
            Tai=0.5097,
            T1_AVR=0.5026,
            T2_AVR=0.4918,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.0479,
            Kf1=1.0999,
            Kp=2.5285,
            K1_PSS=8.0361,
            T1_PSS=0.05,
            K2=430.4121,
            T2_PSS=0.5035,
            K_out=1/100,
            Tf=1.9483,
            Tp=1.7822,
            Bp=0.05,
            Bt=0.6,
            ASX=0.5,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.6965,
            NTv=13.1327,
            Td=10.1809,
            Tf1=8.1972,
            Tf2=8.0612,
            Tv=0.0747,
            Tw=3.2342,
            Tya=17.1505,
            Pmech_old=-0.0877259);

      record fmincon_2015_09_22_Tf1 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=4.9115,
            D=0.7438,
            Xd=1.9618,
            R_a=0.0087,
            Xppd=0.3190,
            Xppq=1.9847,
            Xq=1.1902,
            Xpd=1.9936,
            Tpd0=3.4929,
            Tppd0=0.5728,
            Tppq0=0.8824,
            Xl=0.75,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=1.1517,
            NTv=4.3051,
            Td=9.4629,
            Tf1=4.0672,
            Tf2=6.90791,
            Tv=0.0798201,
            Tw=1.21325,
            Tya=16.8393,
            Pmech_old=-0.0877259);

      record fmincon_2015_09_22_Tf2 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=4.8813,
            D=0.7418,
            Xd=1.9519,
            R_a=0.002,
            Xppd=0.3156,
            Xppq=1.9967,
            Xq=1.1917,
            Xpd=1.9987,
            Tpd0=3.4927,
            Tppd0=0.568,
            Tppq0=0.8777,
            Xl=0.75,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=1.1326,
            NTv=4.3034,
            Td=9.4644,
            Tf1=4.065,
            Tf2=6.9077,
            Tv=0.0798201,
            Tw=1.21325,
            Tya=16.8393,
            Pmech_old=-0.0877259);

      record fmincon_2015_09_22_Tv =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=3.9245,
            D=0.9069,
            Xd=1.2886,
            R_a=0.0022,
            Xppd=0.1148,
            Xppq=1.5973,
            Xq=1.2917,
            Xpd=1.2987,
            Tpd0=3.4748,
            Tppd0=0.5728,
            Tppq0=0.8808,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=1.0912,
            NTv=4.2971,
            Td=9.4638,
            Tf1=4.0531,
            Tf2=6.8984,
            Tv=0.0498,
            Tw=1.21325,
            Tya=16.8393,
            Pmech_old=-0.0877259);

      record fmincon_2015_09_22_Tw =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=3.9245,
            D=0.9069,
            Xd=1.2886,
            R_a=0.0022,
            Xppd=0.1148,
            Xppq=1.5973,
            Xq=1.2917,
            Xpd=1.2987,
            Tpd0=3.4748,
            Tppd0=0.5728,
            Tppq0=0.8808,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=1.0912,
            NTv=4.2971,
            Td=9.4638,
            Tf1=4.0531,
            Tf2=6.8984,
            Tv=0.0498,
            Tw=1.21325,
            Tya=16.8393,
            Pmech_old=-0.0877259);

      record fmincon_2015_09_22_Tya =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=3.3791,
            D=0.5064,
            Xd=0.9411,
            R_a=0.046,
            Xppd=0.4342,
            Xppq=1.5829,
            Xq=1.7060,
            Xpd=1.0610,
            Tpd0=3.6314,
            Tppd0=1.7321,
            Tppq0=2.5564,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.986042385440012,
            A_0=0,
            P_0=623.514751930000,
            Q_0=22.51972016,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=0.654,
            K_ei=6.0461,
            Kmin=5.5263,
            K_point=1.5944,
            K1_AVR=-0.5,
            Ti=-0.5,
            T_a=1.55,
            T_b=1.0784,
            Tai=0.505,
            T1_AVR=0.5,
            T2_AVR=0.5,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.05,
            Kf1=1.05,
            Kp=2.5506,
            K1_PSS=7.8790,
            T1_PSS=0.05,
            K2=430.2863,
            T2_PSS=0.5,
            K_out=0.01,
            Tf=2,
            Tp=2,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=1.1622,
            NTv=12.4892,
            Td=11.7664,
            Tf1=8.7037,
            Tf2=8.8446,
            Tv=0.0505,
            Tw=1.5071,
            Tya=17.3223,
            Pmech_old=-0.0854);

      end All;
    end Records_2015_09_22;

    package Records_2016_11_02

    record PSO_2016_11_02_TG =
          OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
          k=8.0590944284428,
          H=3.4844,
          D=0.56748,
          Xd=1.3432,
          R_a=0.178049,
          Xppd=0.14955,
          Xppq=1.7069,
          Xq=0.67684,
          Xpd=1.5154,
          Tpd0=2.4618,
          Tppd0=0.73622,
          Tppq0=2.9921,
          Xl=0.025,
          S10=1,
          S12=1,
          V_0=0.993,
          A_0=0,
          P_0=662.924262210000,
          Q_0=64.7441954600000,
          X_c=0,
          Eith=2.153,
          Eipl=3.05,
          Eimin=0.1166,
          K_v=6.626099,
          K_ei=2.613277,
          Kmin=6.776345,
          K_point=0.9420712,
          K1_AVR=-0.36799,
          Ti=-0.50963,
          T_a=1.003768,
          T_b=1.363924,
          Tai=0.2435624,
          T1_AVR=0.7016219,
          T2_AVR=0.6195334,
          VHz=0,
          Dfmax=0.0333333333333,
          Dfig=0.01666666666666,
          Kf=1.722878,
          Kf1=1.168047,
          Kp=2.451881,
          K1_PSS=5.91569,
          T1_PSS=0.06147679,
          K2=187.5623,
          T2_PSS=0.7290847,
          K_out=0.01,
          Tf=2.344888,
          Tp=1.695904,
          Bp=0.05,
          Bt=0.6,
          ASX=0.2,
          LP=1.035,
          LA=1.92,
          HB=117.4,
          G0=400,
          Tn=0.792843,
          NTv=9.98,
          Td=11.6529,
          Tf1=10.9014,
          Tf2=13.8838,
          Tv=0.0206531,
          Tw=2.01834,
          Tya=20.0654,
          Pmech_old=-0.0877259);
    record PSO_2016_11_02_all =
          OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
          k=8.0590944284428,
          H=3.5993,
          D=0.4513,
          Xd=1.5172,
          R_a=0.4158,
          Xppd=0.6718,
          Xppq=0.9549,
          Xq=1.3973,
          Xpd=1.1293,
          Tpd0=3.5039,
          Tppd0=1.1178,
          Tppq0=2.7248,
          Xl=0.25,
          S10=1,
          S12=1,
          V_0=0.993,
          A_0=0,
          P_0=662.924262210000,
          Q_0=64.7441954600000,
          X_c=0,
          Eith=2.153,
          Eipl=3.05,
          Eimin=0.1166,
          K_v=9.6448,
          K_ei=2.9031,
          Kmin=7.1538,
          K_point=0.9741,
          K1_AVR=-0.6278,
          Ti=-0.4249,
          T_a=1.5767,
          T_b=0.9517,
          Tai=0.3737,
          T1_AVR=0.3520,
          T2_AVR=0.5811,
          VHz=0,
          Dfmax=0.0333333333333,
          Dfig=0.01666666666666,
          Kf=1.0063,
          Kf1=1.3068,
          Kp=2.7895,
          K1_PSS=8.4238,
          T1_PSS=0.0288,
          K2=640.9944,
          T2_PSS=0.6353,
          K_out=0.01,
          Tf=1.8398,
          Tp=1.7349,
          Bp=0.05,
          Bt=0.6,
          ASX=0.25,
          LP=1.035,
          LA=0.92,
          HB=117.4,
          G0=100,
          Tn=0.9028,
          NTv=8.6655,
          Td=10.3592,
          Tf1=11.3343,
          Tf2=11.9872,
          Tv=0.0480,
          Tw=0.6626,
          Tya=17.2105,
          Pmech_old=-0.092782,
          LP_PELEC=0.5,
          PE_HB=1.16,
          HB_m=1,
          HB_y=-115,
          str1_m=0.0125,
          str1_b=1,
          str2_m=0.0056,
          str2_b=1,
          str3_m=1,
          str3_b=-0.15,
          str4_m=1,
          str4_b=-0.17,
          str5_m=0.85,
          str5_b=0.05,
          str6_m=1,
          str6_b=0.04,
          g4=0.4,
          g8=3,
          g14=1.16,
          g15=1.7,
          g16=0.6);
      package HYGOV
      record fmincon_2016_11_02_R =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG_HYGOV
            (
            k=8.0590944284428,
            H=3.0407,
            D=0.4845,
            Xd=1.3289,
            R_a=0.03,
            Xppd=0.2499,
            Xppq=1.9403,
            Xq=0.731,
            Xpd=1.8188,
            Tpd0=7.4142,
            Tppd0=0.7558,
            Tppq0=1.3716,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=4.7416,
            K_ei=9.3152,
            Kmin=8.8881,
            K_point=0.3205,
            K1_AVR=-0.8938,
            Ti=-0.8186,
            T_a=2.6366,
            T_b=1.6897,
            Tai=0.0758,
            T1_AVR=0.1114,
            T2_AVR=0.202,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.7653,
            Kf1=1.6830,
            Kp=4.5407,
            K1_PSS=10.6352,
            T1_PSS=0.0966,
            K2=312.5877,
            T2_PSS=0.1778,
            K_out=0.01,
            Tf=2.6744,
            Tp=1.1802,
            R=1.761,
            r=0.163666,
            T_r=3.50913,
            T_f=4.81271,
            T_g=8.48172,
            VELM=9.95336,
            G_MAX=0.9,
            G_MIN=0,
            T_w=8.02647,
            A_t=10.456839,
            D_turb=0.85325,
            q_NL=0.08);

      record PSO_2016_11_02_all_2 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG_HYGOV
            (
            k=8.0590944284428,
            H=2.87094,
            D=0.44371,
            Xd=0.95121,
            R_a=0.0000633115,
            Xppd=0.1081,
            Xppq=1.05601,
            Xq=0.911939,
            Xpd=1.78871,
            Tpd0=7.437846,
            Tppd0=0.3047796,
            Tppq0=1.36666,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.45042,
            K_ei=8.75981,
            Kmin=7.41582,
            K_point=0.132393,
            K1_AVR=-0.753904,
            Ti=-0.607692,
            T_a=2.79932,
            T_b=0.246891,
            Tai=0.576151,
            T1_AVR=0.658639,
            T2_AVR=0.161525,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.7653,
            Kf1=1.6830,
            Kp=4.5407,
            K1_PSS=10.6352,
            T1_PSS=0.0966,
            K2=312.5877,
            T2_PSS=0.1778,
            K_out=0.01,
            Tf=2.6744,
            Tp=1.1802,
            R=1.8567,
            r=0.163666,
            T_r=3.50913,
            T_f=4.81271,
            T_g=8.48172,
            VELM=9.95336,
            G_MAX=0.9,
            G_MIN=0,
            T_w=8.02647,
            A_t=10.456839,
            D_turb=0.85325,
            q_NL=0.08);

      record fmincon_2016_11_02_r =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG_HYGOV
            (
            k=8.0590944284428,
            H=3.0407,
            D=0.4845,
            Xd=1.3289,
            R_a=0.03,
            Xppd=0.2499,
            Xppq=1.9403,
            Xq=0.731,
            Xpd=1.8188,
            Tpd0=7.4142,
            Tppd0=0.7558,
            Tppq0=1.3716,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=4.7416,
            K_ei=9.3152,
            Kmin=8.8881,
            K_point=0.3205,
            K1_AVR=-0.8938,
            Ti=-0.8186,
            T_a=2.6366,
            T_b=1.6897,
            Tai=0.0758,
            T1_AVR=0.1114,
            T2_AVR=0.202,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.7653,
            Kf1=1.6830,
            Kp=4.5407,
            K1_PSS=10.6352,
            T1_PSS=0.0966,
            K2=312.5877,
            T2_PSS=0.1778,
            K_out=0.01,
            Tf=2.6744,
            Tp=1.1802,
            R=1.761,
            r=0.163666,
            T_r=3.50913,
            T_f=4.81271,
            T_g=8.48172,
            VELM=9.95336,
            G_MAX=0.9,
            G_MIN=0,
            T_w=8.02647,
            A_t=10.456839,
            D_turb=0.85325,
            q_NL=0.08);

      record fmincon_2016_11_02_Tr =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG_HYGOV
            (
            k=8.0590944284428,
            H=3.0407,
            D=0.4845,
            Xd=1.3289,
            R_a=0.03,
            Xppd=0.2499,
            Xppq=1.9403,
            Xq=0.731,
            Xpd=1.8188,
            Tpd0=7.4142,
            Tppd0=0.7558,
            Tppq0=1.3716,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=4.7416,
            K_ei=9.3152,
            Kmin=8.8881,
            K_point=0.3205,
            K1_AVR=-0.8938,
            Ti=-0.8186,
            T_a=2.6366,
            T_b=1.6897,
            Tai=0.0758,
            T1_AVR=0.1114,
            T2_AVR=0.202,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.7653,
            Kf1=1.6830,
            Kp=4.5407,
            K1_PSS=10.6352,
            T1_PSS=0.0966,
            K2=312.5877,
            T2_PSS=0.1778,
            K_out=0.01,
            Tf=2.6744,
            Tp=1.1802,
            R=1.761,
            r=0.163666,
            T_r=3.50913,
            T_f=4.81271,
            T_g=8.48172,
            VELM=9.95336,
            G_MAX=0.9,
            G_MIN=0,
            T_w=8.02647,
            A_t=10.456839,
            D_turb=0.85325,
            q_NL=0.08);

      record fmincon_2016_11_02_Tf =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG_HYGOV
            (
            k=8.0590944284428,
            H=3.0649,
            D=0.5039,
            Xd=1.0235,
            R_a=0.0023,
            Xppd=0.2305,
            Xppq=1.9615,
            Xq=0.7447,
            Xpd=1.8226,
            Tpd0=7.4042,
            Tppd0=0.3999,
            Tppq0=1.3822,
            Xl=0.5,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=4.7417,
            K_ei=9.3142,
            Kmin=8.8875,
            K_point=0.3225,
            K1_AVR=-0.8912,
            Ti=-0.817,
            T_a=2.6352,
            T_b=1.6882,
            Tai=0.0794,
            T1_AVR=0.1139,
            T2_AVR=0.2034,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.7634,
            Kf1=1.6816,
            Kp=4.5394,
            K1_PSS=10.6351,
            T1_PSS=0.0957,
            K2=312.5877,
            T2_PSS=0.1795,
            K_out=0.01,
            Tf=2.673,
            Tp=1.1826,
            R=1.7591,
            r=1.6783,
            T_r=4.538,
            T_f=9.0093,
            T_g=8.48172,
            VELM=9.95336,
            G_MAX=0.9,
            G_MIN=0,
            T_w=8.02647,
            A_t=10.456839,
            D_turb=0.85325,
            q_NL=0.08);

      end HYGOV;

      package TG
      record PSO_2016_11_02_TG =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=3.1222,
            D=0.5849,
            Xd=1.6707,
            R_a=0.4281,
            Xppd=0.9237,
            Xppq=1.5384,
            Xq=0.9820,
            Xpd=1.7240,
            Tpd0=4.2053,
            Tppd0=1.0223,
            Tppq0=1.2474,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.4210,
            NTv=5.5997,
            Td=5.1342,
            Tf1=8.7882,
            Tf2=9.8981,
            Tv=0.0733,
            Tw=0.9751,
            Tya=18.0637,
            Pmech_old=-0.0877259);
      record fmincon_2016_11_02_Tn =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=4.9226,
            D=0.8936,
            Xd=1.9911,
            R_a=0.0017,
            Xppd=0.3135,
            Xppq=1.9983,
            Xq=1.0173,
            Xpd=1.9987,
            Tpd0=3.4779,
            Tppd0=0.6569,
            Tppq0=2.3674,
            Xl=0.25,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.4440,
            NTv=3.69399,
            Td=10.6773,
            Tf1=3.80506,
            Tf2=6.90791,
            Tv=0.0798201,
            Tw=1.21325,
            Tya=16.8393,
            Pmech_old=-0.0877259);

      record fmincon_2016_11_02_NTv =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=4.9029,
            D=0.8725,
            Xd=1.974,
            R_a=0.0053,
            Xppd=0.3166,
            Xppq=1.9749,
            Xq=1.0097,
            Xpd=1.995,
            Tpd0=3.4837,
            Tppd0=0.6659,
            Tppq0=2.3851,
            Xl=0.75,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.4925,
            NTv=3.6926,
            Td=10.6773,
            Tf1=3.80506,
            Tf2=6.90791,
            Tv=0.0798201,
            Tw=1.21325,
            Tya=16.8393,
            Pmech_old=-0.0877259);

      record fmincon_2016_11_02_Td =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=4.7356,
            D=0.9378,
            Xd=1.9651,
            R_a=0.0004,
            Xppd=0.3191,
            Xppq=1.9533,
            Xq=1.0483,
            Xpd=1.9823,
            Tpd0=3.4498,
            Tppd0=0.5952,
            Tppq0=2.3557,
            Xl=0.75,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=1.2492,
            NTv=4.1226,
            Td=9.8913,
            Tf1=3.80506,
            Tf2=6.90791,
            Tv=0.0798201,
            Tw=1.21325,
            Tya=16.8393,
            Pmech_old=-0.0877259);

      record fmincon_2016_11_02_Tf1 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=4.9115,
            D=0.7438,
            Xd=1.9618,
            R_a=0.0087,
            Xppd=0.3190,
            Xppq=1.9847,
            Xq=1.1902,
            Xpd=1.9936,
            Tpd0=3.4929,
            Tppd0=0.5728,
            Tppq0=0.8824,
            Xl=0.75,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=1.1517,
            NTv=4.3051,
            Td=9.4629,
            Tf1=4.0672,
            Tf2=6.90791,
            Tv=0.0798201,
            Tw=1.21325,
            Tya=16.8393,
            Pmech_old=-0.0877259);

      record fmincon_2016_11_02_Tf2 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=4.8813,
            D=0.7418,
            Xd=1.9519,
            R_a=0.002,
            Xppd=0.3156,
            Xppq=1.9967,
            Xq=1.1917,
            Xpd=1.9987,
            Tpd0=3.4927,
            Tppd0=0.568,
            Tppq0=0.8777,
            Xl=0.75,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=1.1326,
            NTv=4.3034,
            Td=9.4644,
            Tf1=4.065,
            Tf2=6.9077,
            Tv=0.0798201,
            Tw=1.21325,
            Tya=16.8393,
            Pmech_old=-0.0877259);

      record fmincon_2016_11_02_Tv =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=3.9245,
            D=0.9069,
            Xd=1.2886,
            R_a=0.0022,
            Xppd=0.1148,
            Xppq=1.5973,
            Xq=1.2917,
            Xpd=1.2987,
            Tpd0=3.4748,
            Tppd0=0.5728,
            Tppq0=0.8808,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=1.0912,
            NTv=4.2971,
            Td=9.4638,
            Tf1=4.0531,
            Tf2=6.8984,
            Tv=0.0498,
            Tw=1.21325,
            Tya=16.8393,
            Pmech_old=-0.0877259);

      record fmincon_2016_11_02_Tw =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=3.9245,
            D=0.9069,
            Xd=1.2886,
            R_a=0.0022,
            Xppd=0.1148,
            Xppq=1.5973,
            Xq=1.2917,
            Xpd=1.2987,
            Tpd0=3.4748,
            Tppd0=0.5728,
            Tppq0=0.8808,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=1.0912,
            NTv=4.2971,
            Td=9.4638,
            Tf1=4.0531,
            Tf2=6.8984,
            Tv=0.0498,
            Tw=1.21325,
            Tya=16.8393,
            Pmech_old=-0.0877259);

      record fmincon_2016_11_02_Tya =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=2.68942,
            H=4.9245,
            D=0.9838,
            Xd=1.8479,
            R_a=0.0005,
            Xppd=0.2148,
            Xppq=1.4995,
            Xq=1.2267,
            Xpd=1.9998,
            Tpd0=4.9269,
            Tppd0=0.5655,
            Tppq0=0.8454,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=7.776345,
            K_point=1.4520712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.2,
            LP=1.035,
            LA=0.92,
            HB=117.4,
            G0=400,
            Tn=1.0626,
            NTv=4.2971,
            Td=9.6176,
            Tf1=5.0213,
            Tf2=7.3886,
            Tv=0.0503,
            Tw=0.9196,
            Tya=17.2409,
            Pmech_old=-0.0894134);

      end TG;

      package All
      record PSO_2016_11_02_all_init =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=3.953252,
            D=0.6830302,
            Xd=1.820725,
            R_a=0.1157751,
            Xppd=0.168046,
            Xppq=1.375655,
            Xq=0.9065176,
            Xpd=1.578231,
            Tpd0=2.632843,
            Tppd0=0.1867858,
            Tppq0=3.136693,
            Xl=1.5,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.626099,
            K_ei=2.613277,
            Kmin=6.776345,
            K_point=0.9420712,
            K1_AVR=-0.36799,
            Ti=-0.50963,
            T_a=1.003768,
            T_b=1.363924,
            Tai=0.2435624,
            T1_AVR=0.7016219,
            T2_AVR=0.6195334,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.722878,
            Kf1=1.168047,
            Kp=2.451881,
            K1_PSS=5.91569,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.25,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4,
            Pmech_old=-0.0856146);

      end All;

      package AVR
        record PSO_2016_11_02 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=1.0824,
            H=3.64553,
            D=0.2131,
            Xd=1.287296,
            R_a=0.2515283,
            Xppd=0.8605,
            Xppq=0.9764,
            Xq=1.5815,
            Xpd=1.8838,
            Tpd0=3.7165,
            Tppd0=0.9439,
            Tppq0=1.2543,
            Xl=0.25,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_ei=8.0178,
            Kmin=9.2806,
            K1_AVR=-0.0054,
            Ti=-0.4958,
            T_a=1.3878,
            T_b=0.0217,
            Tai=0.0249,
            T1_AVR=0.0959,
            T2_AVR=0.787,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.7621,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

       record fmincon_2016_11_02_Kv =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=1.13224,
            H=3.4844,
            D=0.56748,
            Xd=1.3432,
            R_a=0.1728,
            Xppd=0.2675,
            Xppq=1.345,
            Xq=1.243,
            Xpd=1.5154,
            Tpd0=3.9299,
            Tppd0=0.9439,
            Tppq0=1.2543,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_ei=7.6272,
            Kmin=8.1852,
            K_point=1.0647,
            K1_AVR=-0.5039,
            Ti=-0.4958,
            T_a=1.3878,
            T_b=0.9057,
            Tai=0.5087,
            T1_AVR=0.5153,
            T2_AVR=0.57607,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.7621,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2016_11_02_Kei =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=1.1077995,
            H=3.4844,
            D=0.5675,
            Xd=1.3432,
            R_a=0.178049,
            Xppd=0.14955,
            Xppq=1.7069,
            Xq=0.67684,
            Xpd=1.5159,
            Tpd0=2.4618,
            Tppd0=0.73622,
            Tppq0=2.9921,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=4.0515,
            K_ei=2.6361,
            Kmin=7.6402,
            K_point=0.53114,
            K1_AVR=-0.68259,
            Ti=-0.71154,
            T_a=1.2841,
            T_b=0.18748,
            Tai=0.3667,
            T1_AVR=0.82257,
            T2_AVR=0.14296,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.7621,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2016_11_02_Kmin =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=1.1077995,
            H=3.4844,
            D=0.5675,
            Xd=1.3432,
            R_a=0.178049,
            Xppd=0.14955,
            Xppq=1.7069,
            Xq=0.67684,
            Xpd=1.5159,
            Tpd0=2.4618,
            Tppd0=0.73622,
            Tppq0=2.9921,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=4.0515,
            K_ei=3.6361,
            Kmin=7.6402,
            K_point=0.53114,
            K1_AVR=-0.68259,
            Ti=-0.71154,
            T_a=1.2841,
            T_b=0.18748,
            Tai=0.3667,
            T1_AVR=0.82257,
            T2_AVR=0.14296,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.7621,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2016_11_02_Kpoint =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=1.1077995,
            H=3.4844,
            D=0.5675,
            Xd=1.3432,
            R_a=0.178049,
            Xppd=0.14955,
            Xppq=1.7071,
            Xq=0.67684,
            Xpd=1.5164,
            Tpd0=2.4618,
            Tppd0=0.7362,
            Tppq0=2.9921,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=4.0515,
            K_ei=3.6375,
            Kmin=7.6402,
            K_point=0.5311,
            K1_AVR=-0.68259,
            Ti=-0.71154,
            T_a=1.2841,
            T_b=0.18748,
            Tai=0.3667,
            T1_AVR=0.82257,
            T2_AVR=0.14296,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.7621,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2016_11_02_K1_AVR =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=1.1077995,
            H=3.624,
            D=0.6232,
            Xd=1.0468,
            R_a=0.158049,
            Xppd=0.1062,
            Xppq=1.8921,
            Xq=0.6641,
            Xpd=1.689,
            Tpd0=2.4023,
            Tppd0=0.7285,
            Tppq0=3.0091,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=4.052,
            K_ei=3.6372,
            Kmin=7.6397,
            K_point=0.5335,
            K1_AVR=-0.6807,
            Ti=-0.71154,
            T_a=1.2841,
            T_b=0.18748,
            Tai=0.3667,
            T1_AVR=0.82257,
            T2_AVR=0.14296,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.7621,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

        record fmincon_2016_11_02_Ti =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=1.1077995,
            H=3.296,
            D=0.74815,
            Xd=1.0468,
            R_a=0.157318,
            Xppd=0.11986,
            Xppq=1.9162,
            Xq=0.57443,
            Xpd=1.6573,
            Tpd0=1.5993,
            Tppd0=0.87786,
            Tppq0=3.1878,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=4.5013,
            K_ei=3.4266,
            Kmin=7.1529,
            K_point=1.0748,
            K1_AVR=-0.49533,
            Ti=-0.49501,
            T_a=1.2841,
            T_b=0.18748,
            Tai=0.3667,
            T1_AVR=0.82257,
            T2_AVR=0.14296,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.7621,
            Kf1=1.15,
            Kp=2.8,
            K1_PSS=6.7642,
            T1_PSS=0.03,
            K2=137.46,
            T2_PSS=0.04,
            K_out=1/100,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2016_11_02_T_a =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=1.1077995,
            H=3.2889,
            D=0.75437,
            Xd=1.4605,
            R_a=0.162866,
            Xppd=0.23803,
            Xppq=1.1619,
            Xq=0.73038,
            Xpd=1.6496,
            Tpd0=3.7876,
            Tppd0=0.87829,
            Tppq0=3.231,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=5.4179,
            K_ei=4.7387,
            Kmin=7.3444,
            K_point=1.1044,
            K1_AVR=-0.46908,
            Ti=-0.53333,
            T_a=1.2567,
            T_b=0.27076,
            Tai=0.47672,
            T1_AVR=0.38913,
            T2_AVR=0.57607,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=0.898,
            Kf1=1.16,
            Kp=2.81,
            K1_PSS=6.73,
            T1_PSS=0.0295,
            K2=141,
            T2_PSS=0.0421,
            K_out=0.01,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2016_11_02_T_b =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=3.2889,
            D=0.7544,
            Xd=1.4422,
            R_a=0.1629,
            Xppd=0.23803,
            Xppq=1.1619,
            Xq=0.7304,
            Xpd=1.6496,
            Tpd0=1.7876,
            Tppd0=0.8783,
            Tppq0=3.231,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=5.4179,
            K_ei=4.7387,
            Kmin=7.3444,
            K_point=1.1044,
            K1_AVR=-0.46908,
            Ti=-0.53333,
            T_a=1.2567,
            T_b=0.2708,
            Tai=0.47672,
            T1_AVR=0.38913,
            T2_AVR=0.57607,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=0.898,
            Kf1=1.16,
            Kp=2.81,
            K1_PSS=6.73,
            T1_PSS=0.0295,
            K2=141,
            T2_PSS=0.0421,
            K_out=0.01,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4,
            Pmech_old=-0.0560792);

      record fmincon_2016_11_02_Tai =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=2.9965,
            D=0.8152,
            Xd=1.5464,
            R_a=0.15106,
            Xppd=0.1007,
            Xppq=1.7904,
            Xq=0.7372,
            Xpd=1.9151,
            Tpd0=1.7444,
            Tppd0=0.4976,
            Tppq0=3.237,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=5.4181,
            K_ei=4.7384,
            Kmin=7.344,
            K_point=1.1042,
            K1_AVR=-0.4694,
            Ti=-0.533,
            T_a=1.2572,
            T_b=0.275,
            Tai=0.477,
            T1_AVR=0.38913,
            T2_AVR=0.57607,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=0.898,
            Kf1=1.16,
            Kp=2.81,
            K1_PSS=6.73,
            T1_PSS=0.0295,
            K2=141,
            T2_PSS=0.0421,
            K_out=0.01,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2016_11_02_T1_AVR =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=1.1077995,
            H=3.1303,
            D=0.6165,
            Xd=1.5464,
            R_a=0.15106,
            Xppd=0.1202,
            Xppq=1.8589,
            Xq=0.672,
            Xpd=0.8436,
            Tpd0=9.7444,
            Tppd0=0.2671,
            Tppq0=3.0438,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=5.509,
            K_ei=4.6272,
            Kmin=7.1852,
            K_point=1.0647,
            K1_AVR=-0.5039,
            Ti=-0.4958,
            T_a=1.3878,
            T_b=0.9057,
            Tai=0.5087,
            T1_AVR=0.5153,
            T2_AVR=0.57607,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=0.898,
            Kf1=1.16,
            Kp=2.81,
            K1_PSS=6.73,
            T1_PSS=0.0295,
            K2=141,
            T2_PSS=0.0421,
            K_out=0.01,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2016_11_02_T2_AVR =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=1.1077995,
            H=3.1299,
            D=0.6165,
            Xd=1.5464,
            R_a=0.15106,
            Xppd=0.1202,
            Xppq=1.859,
            Xq=0.6715,
            Xpd=1.8434,
            Tpd0=9.7192,
            Tppd0=0.2671,
            Tppq0=3.0438,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=5.509,
            K_ei=4.6272,
            Kmin=7.1852,
            K_point=4.9047,
            K1_AVR=-0.5039,
            Ti=-0.4958,
            T_a=1.3878,
            T_b=0.9057,
            Tai=0.5087,
            T1_AVR=0.5153,
            T2_AVR=0.5761,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=0.898,
            Kf1=1.16,
            Kp=2.81,
            K1_PSS=6.73,
            T1_PSS=0.0295,
            K2=141,
            T2_PSS=0.0421,
            K_out=0.01,
            Tf=3,
            Tp=3,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4,
            Pe0=1);

      end AVR;

      package PSS
        record total_2016_11_02 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=1.1077995,
            H=3.1299,
            D=0.6165,
            Xd=1.5464,
            R_a=0.15106,
            Xppd=0.1202,
            Xppq=1.859,
            Xq=0.6715,
            Xpd=1.8132,
            Tpd0=2.7192,
            Tppd0=0.2671,
            Tppq0=3.0438,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.1852,
            K_ei=2.6272,
            Kmin=6.76554,
            K_point=1.0351,
            K1_AVR=-0.5015,
            Ti=-0.4999,
            T_a=1.3313,
            T_b=1.0616,
            Tai=0.5074,
            T1_AVR=0.4979,
            T2_AVR=0.4987,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.1343,
            Kf1=1.0663,
            Kp=2.4779,
            K1_PSS=5.9726,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);
        //PSS Parameters to CHANGE

      record PSO_2016_11_02_PSS_init =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=1.92744,
            H=2.6136,
            D=0.7581,
            Xd=1.6518,
            R_a=0.2138,
            Xppd=0.1627,
            Xppq=1.6965,
            Xq=0.6626,
            Xpd=1.3248,
            Tpd0=3.2989,
            Tppd0=3.4299,
            Tppq0=1.5888,
            Xl=0.5,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=1.6732,
            K_ei=4.6732,
            Kmin=3.4094,
            K_point=1.1520712,
            K1_AVR=-0.4141,
            Ti=-0.7141,
            T_a=1.7659,
            T_b=1.202025,
            Tai=0.3956,
            T1_AVR=0.4711,
            T2_AVR=0.3565,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=0.5049,
            Kf1=0.8085,
            Kp=2.1553,
            K1_PSS=5.8161,
            T1_PSS=0.0638,
            K2=360.8076,
            T2_PSS=0.4424,
            K_out=0.01,
            Tf=2.6336,
            Tp=2.0036,
            Bp=0.05,
            Bt=0.6,
            ASX=0.25,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4,
            Pmech_old=-0.0856146);

      record fmincon_2016_11_02_Kf =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=1.7245,
            D=0.6223,
            Xd=1.0486,
            R_a=0.1765,
            Xppd=0.2288,
            Xppq=1.5785,
            Xq=1.4697,
            Xpd=0.6801,
            Tpd0=4.0758,
            Tppd0=3.6633,
            Tppq0=2.9304,
            Xl=0.5,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=2.770,
            K_ei=4.9703,
            Kmin=5.8645,
            K_point=1.02565,
            K1_AVR=-0.4737,
            Ti=-0.5613,
            T_a=1.5766,
            T_b=1.202025,
            Tai=0.4716,
            T1_AVR=0.491,
            T2_AVR=0.4570,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.049,
            Kf1=0.8085,
            Kp=2.1553,
            K1_PSS=5.8161,
            T1_PSS=0.0638,
            K2=360.8076,
            T2_PSS=0.4424,
            K_out=0.01,
            Tf=2.6336,
            Tp=2.0036,
            Bp=0.05,
            Bt=0.6,
            ASX=0.25,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2016_11_02_Kf1 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=1.7245,
            D=0.6223,
            Xd=1.0486,
            R_a=0.1765,
            Xppd=0.2288,
            Xppq=1.5785,
            Xq=1.4697,
            Xpd=0.6801,
            Tpd0=4.0758,
            Tppd0=3.6633,
            Tppq0=2.9304,
            Xl=0.5,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=2.770,
            K_ei=4.9703,
            Kmin=5.8645,
            K_point=1.02565,
            K1_AVR=-0.4737,
            Ti=-0.5613,
            T_a=1.5766,
            T_b=1.202025,
            Tai=0.4716,
            T1_AVR=0.491,
            T2_AVR=0.4570,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.049,
            Kf1=0.8085,
            Kp=2.1553,
            K1_PSS=5.8161,
            T1_PSS=0.0638,
            K2=360.8076,
            T2_PSS=0.4424,
            K_out=0.01,
            Tf=2.6336,
            Tp=2.0036,
            Bp=0.05,
            Bt=0.6,
            ASX=0.25,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2016_11_02_Kp =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=1.6583,
            D=0.6465,
            Xd=1.3954,
            R_a=0.1617,
            Xppd=0.2202,
            Xppq=1.6120,
            Xq=1.5181,
            Xpd=1.3368,
            Tpd0=3.2140,
            Tppd0=3.4049,
            Tppq0=2.3863,
            Xl=0.5,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=3.29036,
            K_ei=4.9711,
            Kmin=6.5541,
            K_point=1.6518,
            K1_AVR=-0.4744,
            Ti=-0.5595,
            T_a=1.5765,
            T_b=1.1605,
            Tai=0.4726,
            T1_AVR=0.4913,
            T2_AVR=0.4582,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.0421,
            Kf1=0.8077,
            Kp=2.2007,
            K1_PSS=5.8161,
            T1_PSS=0.0638,
            K2=360.8076,
            T2_PSS=0.4424,
            K_out=0.01,
            Tf=2.6336,
            Tp=2.0036,
            Bp=0.05,
            Bt=0.6,
            ASX=0.25,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2016_11_02_K1_PSS =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=3.5472,
            D=0.7431,
            Xd=1.6868,
            R_a=0.0671,
            Xppd=0.1199,
            Xppq=1.9154,
            Xq=0.843,
            Xpd=1.8157,
            Tpd0=2.4218,
            Tppd0=0.8942,
            Tppq0=3.0754,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.67973,
            K_ei=2.8399,
            Kmin=6.76554,
            K_point=1.0351,
            K1_AVR=-0.5015,
            Ti=-0.4999,
            T_a=1.3313,
            T_b=1.0616,
            Tai=0.5074,
            T1_AVR=0.4979,
            T2_AVR=0.4987,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.1343,
            Kf1=1.0663,
            Kp=2.4779,
            K1_PSS=5.9726,
            T1_PSS=0.06147679,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2016_11_02_T1_PSS =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=3.5472,
            D=0.9999,
            Xd=1.2893,
            R_a=0.0307,
            Xppd=0.1,
            Xppq=1.9154,
            Xq=0.843,
            Xpd=1.8157,
            Tpd0=2.4218,
            Tppd0=0.6439,
            Tppq0=3.0879,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.7514,
            K_ei=3.1066,
            Kmin=9.9996,
            K_point=1.0494,
            K1_AVR=-0.5002,
            Ti=-0.5,
            T_a=1.4835,
            T_b=1.0083,
            Tai=0.5053,
            T1_AVR=0.4998,
            T2_AVR=0.4999,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.0532,
            Kf1=1.0507,
            Kp=2.5584,
            K1_PSS=6.0792,
            T1_PSS=0.0951,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2016_11_02_K2 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=3.5472,
            D=0.9999,
            Xd=1.2893,
            R_a=0.0307,
            Xppd=0.105,
            Xppq=1.345,
            Xq=0.843,
            Xpd=1.945,
            Tpd0=3.9299,
            Tppd0=0.6439,
            Tppq0=3.0879,
            Xl=0.025,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.7514,
            K_ei=3.1066,
            Kmin=9.9996,
            K_point=1.0494,
            K1_AVR=-0.5002,
            Ti=-0.5,
            T_a=1.4835,
            T_b=1.0083,
            Tai=0.5053,
            T1_AVR=0.4998,
            T2_AVR=0.4999,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.0532,
            Kf1=1.0507,
            Kp=2.5584,
            K1_PSS=6.0792,
            T1_PSS=0.0951,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.005,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4);

      record fmincon_2016_11_02_T2_PSS =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.UDTG (
            k=8.0590944284428,
            H=3.5472,
            D=0.9999,
            Xd=1.2893,
            R_a=0.0257,
            Xppd=0.0675,
            Xppq=1.345,
            Xq=0.843,
            Xpd=1.945,
            Tpd0=3.9299,
            Tppd0=0.9439,
            Tppq0=3.179,
            Xl=0.25,
            S10=1,
            S12=1,
            V_0=0.993,
            A_0=0,
            P_0=662.924262210000,
            Q_0=64.7441954600000,
            X_c=0,
            Eith=2.153,
            Eipl=3.05,
            Eimin=0.1166,
            K_v=6.7514,
            K_ei=3.8066,
            Kmin=9.9996,
            K_point=3.6794,
            K1_AVR=-0.5002,
            Ti=-0.5,
            T_a=1.4835,
            T_b=1.0083,
            Tai=0.5053,
            T1_AVR=0.4998,
            T2_AVR=0.4999,
            VHz=0,
            Dfmax=0.0333333333333,
            Dfig=0.01666666666666,
            Kf=1.0532,
            Kf1=1.0507,
            Kp=2.5584,
            K1_PSS=6.0792,
            T1_PSS=0.0951,
            K2=187.5623,
            T2_PSS=0.7290847,
            K_out=0.01,
            Tf=2.344888,
            Tp=1.695904,
            Bp=0.05,
            Bt=0.6,
            ASX=0.25,
            LP=1.035,
            LA=1.92,
            HB=117.4,
            G0=400,
            Tn=0.5,
            NTv=10,
            Td=8,
            Tf1=8.5,
            Tf2=17.8,
            Tv=0.014,
            Tw=1.77,
            Tya=15.4,
            Pmech_old=-0.0560792);

      end PSS;
    end Records_2016_11_02;

  end ParameterData;

  package OptimizationData

    package Data_2015_09_22

      package AVR
        record total_2015_09_22 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.AVR.total_2015_09_22)
              "Total parameter Calibration";

         record PSO_2015_09_22 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.AVR.PSO_2015_09_22)
           "Total parameter Calibration";

         record fmincon_2015_09_22_init =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.AVR.fmincon_2015_09_22_init)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Kv =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.AVR.fmincon_2015_09_22_Kv)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Kei =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.AVR.fmincon_2015_09_22_Kei)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Kmin =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.AVR.fmincon_2015_09_22_Kmin)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Kpoint =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.AVR.fmincon_2015_09_22_Kpoint)
           "Total parameter Calibration";

         record fmincon_2015_09_22_K1_AVR =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.AVR.fmincon_2015_09_22_K1_AVR)
           "Total parameter Calibration";

         record fmincon_2015_09_22_T_a =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.AVR.fmincon_2015_09_22_T_a)
           "Total parameter Calibration";

         record fmincon_2015_09_22_T_b =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.AVR.fmincon_2015_09_22_T_b)
           "Total parameter Calibration";

         record fmincon_2015_09_22_T1_AVR =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.AVR.fmincon_2015_09_22_T1_AVR)
           "Total parameter Calibration";

         record fmincon_2015_09_22_T2_AVR =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.AVR.fmincon_2015_09_22_T2_AVR)
           "Total parameter Calibration";

      end AVR;

      package PSS
        record PSO_2015_09_22_PSS_init =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.PSS.PSO_2015_09_22_PSS_init)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Kf =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.PSS.fmincon_2015_09_22_Kf)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Kf1 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.PSS.fmincon_2015_09_22_Kf1)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Kp =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.PSS.fmincon_2015_09_22_Kp)
           "Total parameter Calibration";

         record fmincon_2015_09_22_K1_PSS =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.PSS.fmincon_2015_09_22_K1_PSS)
           "Total parameter Calibration";

         record fmincon_2015_09_22_T1_PSS =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.PSS.fmincon_2015_09_22_T1_PSS)
           "Total parameter Calibration";

         record fmincon_2015_09_22_K2 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.PSS.fmincon_2015_09_22_K2)
           "Total parameter Calibration";

         record fmincon_2015_09_22_T2_PSS =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.PSS.fmincon_2015_09_22_T2_PSS)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Tf =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.PSS.fmincon_2015_09_22_Tf)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Tp =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.PSS.fmincon_2015_09_22_Tp)
           "Total parameter Calibration";

      end PSS;

      package All
       record PSO_2015_09_22_all =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.All.PSO_2015_09_22_all)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Tn =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.All.fmincon_2015_09_22_Tn)
           "Total parameter Calibration";

         record fmincon_2015_09_22_NTv =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.All.fmincon_2015_09_22_NTv)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Td =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.All.fmincon_2015_09_22_Td)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Tf1 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.All.fmincon_2015_09_22_Tf1)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Tf2 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.All.fmincon_2015_09_22_Tf2)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Tv =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.All.fmincon_2015_09_22_Tv)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Tw =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.All.fmincon_2015_09_22_Tw)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Tya =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.All.fmincon_2015_09_22_Tya)
           "Total parameter Calibration";

      end All;

      package TG
         record PSO_2015_09_22_TG =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.TG.PSO_2015_09_22_TG)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Tn =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.TG.fmincon_2015_09_22_Tn)
           "Total parameter Calibration";

         record fmincon_2015_09_22_NTv =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.TG.fmincon_2015_09_22_NTv)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Td =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.TG.fmincon_2015_09_22_Td)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Tf1 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.TG.fmincon_2015_09_22_Tf1)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Tf2 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.TG.fmincon_2015_09_22_Tf2)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Tv =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.TG.fmincon_2015_09_22_Tv)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Tw =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.TG.fmincon_2015_09_22_Tw)
           "Total parameter Calibration";

         record fmincon_2015_09_22_Tya =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2015_09_22.TG.fmincon_2015_09_22_Tya)
           "Total parameter Calibration";

      end TG;
    end Data_2015_09_22;

    package Data_2016_11_02

       record PSO_2016_11_02_TG =
          OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
          (redeclare replaceable record Machine =
              OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.PSO_2016_11_02_TG)
         "Total parameter Calibration";

       record PSO_2016_11_02_all =
          OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
          (redeclare replaceable record Machine =
              OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.PSO_2016_11_02_all)
         "Total parameter Calibration";

      package HYGOV
         record fmincon_2016_11_02_R =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.HYGOV.fmincon_2016_11_02_R)
           "Total parameter Calibration";

         record fmincon_2016_11_02_r =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.HYGOV.fmincon_2016_11_02_r)
           "Total parameter Calibration";

         record fmincon_2016_11_02_Tr =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.HYGOV.fmincon_2016_11_02_Tr)
           "Total parameter Calibration";

         record fmincon_2016_11_02_Tf =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.HYGOV.fmincon_2016_11_02_Tf)
           "Total parameter Calibration";

         record PSO_2016_11_02_all_2 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.HYGOV.PSO_2016_11_02_all_2)
          "Total parameter Calibration";
      end HYGOV;

      package TG
         record PSO_2016_11_02_TG =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.TG.PSO_2016_11_02_TG)
           "Total parameter Calibration";

         record fmincon_2016_11_02_Tn =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.TG.fmincon_2016_11_02_Tn)
           "Total parameter Calibration";

         record fmincon_2016_11_02_NTv =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.TG.fmincon_2016_11_02_NTv)
           "Total parameter Calibration";

         record fmincon_2016_11_02_Td =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.TG.fmincon_2016_11_02_Td)
           "Total parameter Calibration";

         record fmincon_2016_11_02_Tf1 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.TG.fmincon_2016_11_02_Tf1)
           "Total parameter Calibration";

         record fmincon_2016_11_02_Tf2 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.TG.fmincon_2016_11_02_Tf2)
           "Total parameter Calibration";

         record fmincon_2016_11_02_Tv =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.TG.fmincon_2016_11_02_Tv)
           "Total parameter Calibration";

         record fmincon_2016_11_02_Tw =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.TG.fmincon_2016_11_02_Tw)
           "Total parameter Calibration";

         record fmincon_2016_11_02_Tya =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.TG.fmincon_2016_11_02_Tya)
           "Total parameter Calibration";

      end TG;

      package All
         record PSO_2016_11_02_all =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.All.PSO_2016_11_02_all_init)
           "Total parameter Calibration";

      end All;

      package AVR
        record PSO_2016_11_02 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.AVR.PSO_2016_11_02)
           "Total parameter Calibration";

            record fmincon_2016_11_02_Kv =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.AVR.fmincon_2016_11_02_Kv)
          "Total parameter Calibration";

          record fmincon_2016_11_02_Kei =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.AVR.fmincon_2016_11_02_Kei)
          "Total parameter Calibration";

         record fmincon_2016_11_02_Kmin =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.AVR.fmincon_2016_11_02_Kmin)
          "Total parameter Calibration";

         record fmincon_2016_11_02_Kpoint =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.AVR.fmincon_2016_11_02_Kpoint)
          "Total parameter Calibration";

         record fmincon_2016_11_02_K1_AVR =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.AVR.fmincon_2016_11_02_K1_AVR)
           "Total parameter Calibration";

         record fmincon_2016_11_02_Ti =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.AVR.fmincon_2016_11_02_Ti)
           "Total parameter Calibration";

         record fmincon_2016_11_02_T_a =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.AVR.fmincon_2016_11_02_T_a)
           "Total parameter Calibration";

         record fmincon_2016_11_02_T_b =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.AVR.fmincon_2016_11_02_T_b)
           "Total parameter Calibration";

         record fmincon_2016_11_02_T1_AVR =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.AVR.fmincon_2016_11_02_T1_AVR)
           "Total parameter Calibration";

         record fmincon_2016_11_02_T2_AVR =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.AVR.fmincon_2016_11_02_T2_AVR)
           "Total parameter Calibration";

      end AVR;

      package PSS
        record total_2016_11_02 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.PSS.total_2016_11_02)
              "Total parameter Calibration";

         record PSO_2016_11_02_PSS_init =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.PSS.PSO_2016_11_02_PSS_init)
           "Total parameter Calibration";

         record fmincon_2016_11_02_Kf =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.PSS.fmincon_2016_11_02_Kf)
           "Total parameter Calibration";

         record fmincon_2016_11_02_Kf1 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.PSS.fmincon_2016_11_02_Kf1)
           "Total parameter Calibration";

         record fmincon_2016_11_02_Kp =
           OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.PSS.fmincon_2016_11_02_Kp)
           "Total parameter Calibration";
         record fmincon_2016_11_02_K1_PSS =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.PSS.fmincon_2016_11_02_K1_PSS)
           "Total parameter Calibration";

         record fmincon_2016_11_02_T1_PSS =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.PSS.fmincon_2016_11_02_T1_PSS)
           "Total parameter Calibration";

         record fmincon_2016_11_02_K2 =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.PSS.fmincon_2016_11_02_K2)
           "Total parameter Calibration";

         record fmincon_2016_11_02_T2_PSS =
            OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.Records.MachineData
            (redeclare replaceable record Machine =
                OpenIPSL.Examples.Controls.ANATEM.User_Defined_Data.ParameterData.Records_2016_11_02.PSS.fmincon_2016_11_02_T2_PSS)
           "Total parameter Calibration";

      end PSS;
    end Data_2016_11_02;

  end OptimizationData;
end User_Defined_Data;
