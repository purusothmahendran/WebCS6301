<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Slider.ascx.cs" Inherits="Control_Slider" %>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="img/pic1.png" alt="Image Caption 1">
      <div class="carousel-caption">
        Image Caption 1
      </div>
    </div>
    <div class="item">
      <img src="img/pic2.png" alt="Image Caption 2">
      <div class="carousel-caption">
        Image Caption 2
      </div>
    </div>
    <div class="item">
      <img src="img/pic3.png" alt="Image Caption 3">
      <div class="carousel-caption">
        Image Caption 3
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div>

