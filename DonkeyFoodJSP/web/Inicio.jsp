<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
  <head>
    <link rel="icon" href="assets/images/DonkeyFood.png">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="assets/css/LogInStyle.css" />

    <title>Iniciar Sesion</title>
  </head>
  <body>
    <div class="parent">
      <div class="div3">
        <a href="javascript:history.back()">
        <button class="learn-more" >
          <span class="circle" aria-hidden="true">
          <span class="icon arrow"></span>
          </span>
            <span class="button-text">Volver</span> 
        </button>
        </a>
      </div>
      <div class="div2" style="position: relative; top: 50px;"> 
        <!--Waves Container-->
        <div>
          <div>
          <svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
          viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
          <defs>
          <path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
          </defs>
          <g class="parallax">
          <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7)" />
          <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
          <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
          <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
          </g>
          </svg>
          </div>
          </div>
          <!--Waves end-->
        </div>
      </div>
  </body>
</html>
