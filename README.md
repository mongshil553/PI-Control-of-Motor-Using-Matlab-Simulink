# PI-Control-of-motor-using-Matlab/Simulink
Using Matlab, design a control system for motor.

<hr>
<h2>Ciruit and Motor Free Body Diagrams</h3>
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab/assets/129606995/e15611d3-dc2c-4623-ab7d-79909740c14e" width="60%" height="60%" title="Free Body Diagram"> <br>
This is the circuit and motor free body diagram. Using this, we will calculate the transfer function of the plant. <br><br>

<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab/assets/129606995/65a62830-7aed-4f85-8c25-7be9d980f299" width="60%" height="60%" title="Plant Transfer Function"> <br>
After Calculation, the transfer function of the plant is equal to the equation above.

<hr>
<h2>Plant Step Response</h2>
<div align="center">
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab/assets/129606995/e057234a-53cb-4ecb-b08f-1346bc689ab8" width="30%" height="30%" title="Matlab Step Response">
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab/assets/129606995/bb9578fd-cb64-40b2-8915-f3c754cbd17a" width="42%" height="42%" title="Simulink Step Response">
</div>
<br> Steady State Error exists. Also, ziegler nichols method cannot be applied to this plant.<br>

<hr>
<h2>Root Locus</h2>
Using Matlab, we get the following Root Locus; <br>
<div align="center">
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab/assets/129606995/a56e248b-fa4a-42a5-b525-c8e73fd8b28e" width="60%" height="60%" title="Root Locus"> <br>
  When Kp=Ki <br><br>
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab/assets/129606995/e15f22bd-4d42-4a0c-8c6e-1d5ca27a5414" width="35%" height="35%" title="Root Locus"> <br>
  When Kp=10Ki
</div>
The dominant poles are located near the origin.

<hr>
<h2>Perfomance Index</h2>
Using Matlab StepInfo(), we can calculate the overshoot, rise time, etc w.r.t Step Reference. <br>
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab/assets/129606995/1cbfd252-3617-4511-b5ab-6e8be98e1566" width="70%" height="70%" title="StepInfo"> <br>
When Kp=1000, Ki=100, the feed back control showed the best performance.

<hr>
<h2>Simulink Simulation</h2>
<img src = "https://github.com/mongshil553/PI-Control-of-motor-using-Matlab-Simulink/assets/129606995/78633a68-2611-4499-80f4-7e967222ad89" width="70%" height="70%" title="StepInfo"> <br>

