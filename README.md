# PI-Control-of-Motor-Using-Matlab/Simulink
Using Matlab, design a PI control system for motor. <br>

Target Performance Specification: 1. Overshoot ≤ 10%, 2. Rise Time ≤ 3s, 3.Settling Time ≤ 15s, 4. Steady State Error ≤ 1%

<hr>
<h2>Ciruit and Motor Free Body Diagrams</h3>
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab/assets/129606995/e15611d3-dc2c-4623-ab7d-79909740c14e" width="50%" height="50%" title="Free Body Diagram"> <br>
This is the circuit and motor free body diagram. Using this, we will calculate the transfer function of the plant. <br><br>

<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab/assets/129606995/65a62830-7aed-4f85-8c25-7be9d980f299" width="60%" height="60%" title="Plant Transfer Function"> <br>
After Calculation, the transfer function of the plant is equal to the equation above.

<hr>
<h2>Plant Step Response</h2>
<!--<div align="center">-->
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab/assets/129606995/e057234a-53cb-4ecb-b08f-1346bc689ab8" width="30%" height="30%" title="Matlab Step Response">
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab/assets/129606995/bb9578fd-cb64-40b2-8915-f3c754cbd17a" width="42%" height="42%" title="Simulink Step Response">
<!--</div>-->
<br> Steady State Error exists. Also, ziegler nichols method cannot be applied to this plant.<br>

<hr>
<h2>Root Locus</h2>
Using Matlab, we get the following Root Locus; <br><br>
<!--<div align="center">-->
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab/assets/129606995/a56e248b-fa4a-42a5-b525-c8e73fd8b28e" width="60%" height="60%" title="Root Locus"> <br>
  When Kp=Ki <br><br>
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab/assets/129606995/e15f22bd-4d42-4a0c-8c6e-1d5ca27a5414" width="35%" height="35%" title="Root Locus"> <br>
  When Kp=10Ki
<!--</div>-->
The dominant poles are located near the origin.

<hr>
<h2>Perfomance Index</h2>
Using Matlab StepInfo(), we can calculate the overshoot, rise time, etc w.r.t Step Reference. <br>
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab/assets/129606995/1cbfd252-3617-4511-b5ab-6e8be98e1566" width="70%" height="70%" title="StepInfo"> <br>
When Kp=1000, Ki=100, the feed back control showed the best performance.

<hr>
<h2>Step Reference Tracking</h2>
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab-Simulink/assets/129606995/78633a68-2611-4499-80f4-7e967222ad89" width="80%" height="80%" title="Design"> <br>
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab-Simulink/assets/129606995/2a0d7b82-1a59-4d8e-8d59-5e800ba5e2b2" width="80%" height="80%" title="case i), ii)">
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab-Simulink/assets/129606995/6bb0ce23-d70b-4c0a-80e4-ebe2df6c3fbb" width="80%" height="80%" title="case iii), iv)">
<br>
Correspondingly, Kp=1000, Ki=100 showed the best performance at tracking Step reference.

<hr>
<h2>Disturbance Rejection</h2>
<!--<div align="center">-->
  System Model with Disturbance: <br>
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab-Simulink/assets/129606995/641c4fa2-dbb6-40ad-81f0-76d4cb0ea38a" width="70%" height="70%" title="Design">
<!--</div>-->

<br>
Sine Disturbance: <br>
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab-Simulink/assets/129606995/6589171b-20e0-43b8-832e-2290b31b4798" width="72%" height="72%" title="Sine Disturbance">
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab-Simulink/assets/129606995/0f9ecc1a-3b96-48ab-a96c-0240e4c51081" width="26%" height="26%" title="Sine Disturbance">
<br><br>

Step Disturbance: <br>
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab-Simulink/assets/129606995/87d21ea1-4f00-48a1-a9df-5b355f60e34f" width="100%" height="100%" title="Step Disturbance">
<br><br>

Ramp Disturbance: <br>
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab-Simulink/assets/129606995/71b2c723-9ea9-4ced-b4e9-d033f770ba4e" width="72%" height="72%" title="Ramp Disturbance">
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab-Simulink/assets/129606995/5721b148-1e4d-4a9c-906e-8749ab5d25be" width="26%" height="26%" title="Ramp Disturbance">
<br><br>

Parabola Disturbance: <br>
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab-Simulink/assets/129606995/29ca80e2-2d74-4338-b75b-e5b33e713141" width="100%" height="100%" title="Parabola Disturbance">
<br><br>

<hr>
<h2>User Defined Reference Tracking</h2>
The following is the signal defined which will be a reference. <br>
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab-Simulink/assets/129606995/83e7b40c-1ece-4597-8e8f-2cec3ce5a8ea" width="55%" height="55%" title="User Defined Reference">

<br><br>

The following is the system model. <br>
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab-Simulink/assets/129606995/10e92144-a3b2-4f04-9c22-7f0355d4a043" width="100%" height="100%" title="Model">

<br><br>
Result(Left) and Error(Right): <br>
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab-Simulink/assets/129606995/581f1066-31cd-4525-9306-4eafdf0ed808" width="100%" height="100%" title="Simulation Result">

The error is very minimal.
