<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="otoringo.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<a href="iletisim.aspx"="%# %></a>
  <div role="main" class="main">
			<section class="page-header page-header-modern page-header-background page-header-background-sm m-0" style="background-color: #d80d07; background-size: cover; background-position: center; ">
				<div class="container">
					<div class="row">
						<div class="col-md-8 order-2 order-md-1 align-self-center p-static">
							<h1 class="font-weight-bold text-8 mb-0">İletişim</h1>
						</div>
						<div class="col-md-4 order-1 order-md-2 align-self-center">
							<ul class="breadcrumb breadcrumb-light d-block text-md-end text-4 mb-0">
								<li><a href="/Anasayfa" class="text-decoration-none">ANASAYFA</a></li>
								<li class="active">İLETİŞİM</li>
							</ul>
						</div>
					</div>
				</div>
			</section>
	  <div id="map_canvas" class="google-map mt-0" style="height: 500px;"></div>
		<script>
            function initialize() {
                var searchItemMap = new google.maps.Map(
                    document.getElementById("map_canvas"), {
                    center: new google.maps.LatLng(37.4419, -122.1419),
                    zoom: 13,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                });
                var bounds = new google.maps.LatLngBounds();

                for (var i = 0; i < locations.length; i++) {
                    var marker = new google.maps.Marker({
                        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                        map: searchItemMap
                    });
                    bounds.extend(marker.getPosition());
                    marker._infowindow = new google.maps.InfoWindow({
                        content: locations[i][0]
                    });

                    google.maps.event.addListener(marker, 'click', function () {
                        this._infowindow.open(searchItemMap, this);
                    });
                    // open marker on load
                    google.maps.event.trigger(marker, 'click');
                }
                searchItemMap.fitBounds(bounds);

            }
            google.maps.event.addDomListener(window, "load", initialize);

            var locations = [
                ['Ankara Otoringo', 39.91230868316012, 32.79606181139392],
            ];

        </script>
  		<div class="container py-5 my-4" ">
				<div class="row">
					<div class="col-lg-6 mb-5 mb-lg-0">
						<h2 class="font-weight-bold text-transform-none text-8 pb-2 mb-4">Bize Ulaşın</h2>
						<div class="row">
							<div class="col">
								<div class="feature-box feature-box-style-5">
									<div class="feature-box-icon">
										<img class="icon-animated" width="42" src="images/icons/icon-location.svg" alt="" data-icon data-plugin-options="{'onlySVG': true, 'extraClass': 'svg-fill-color-primary'}" />
									</div>
									<div class="feature-box-info">
										<h3 class="text-transform-none font-weight-bold custom-font-size-1 mb-3">Adres</h3>
										<div class="d-flex flex-column flex-md-row">
											<ul class="list list-unstyled pe-5 mb-md-0">
												<li class="mb-0"><strong class="text-color-dark custom-font-size-3">Samsun Ofis</strong></li>
												<li class="mb-0">Şabanoğlu mahallesi</li>
												<li class="mb-0">1884 .sokak no:1</li>
												<li class="mb-0">Tekkeköy /Samsun</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row py-3 my-4">
							<div class="col">
								<div class="feature-box feature-box-style-5">
									<div class="feature-box-icon">
										<img class="icon-animated" width="42" src="images/icons/icon-mail.svg" alt="" data-icon data-plugin-options="{'onlySVG': true, 'extraClass': 'svg-fill-color-primary position-relative bottom-5'}" />
									</div>
									<div class="feature-box-info">
										<h3 class="text-transform-none font-weight-bold custom-font-size-1 pb-1 mb-2">E-Posta</h3>
										<ul class="list list-unstyled pe-5 mb-0">
											<li class="mb-0"><a href="mailto:email@domain.com" class="text-color-default text-color-hover-primary text-decoration-none">info@otoringo.com</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<div class="feature-box feature-box-style-5">
									<div class="feature-box-icon">
										<img class="icon-animated" width="42" src="images/icons/icon-phone.svg" alt="" data-icon data-plugin-options="{'onlySVG': true, 'extraClass': 'svg-fill-color-primary'}" />
									</div>
									<div class="feature-box-info">
										<h3 class="text-transform-none font-weight-bold custom-font-size-1 pb-1 mb-2">Telefon</h3>
										<ul class="list list-unstyled pe-5 mb-0">
											<li class="mb-0"><a href="tel:0 850 840 06 55" class="text-color-default text-color-hover-primary text-decoration-none"> 0 850 840 06 55</a></li>
											<li class="mb-0"><a href="tel:+90 531 735 17 07" class="text-color-default text-color-hover-primary text-decoration-none"> +90 531 735 17 07</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<h2 class="font-weight-bold text-transform-none text-8 pb-2 mb-4">İletişim Formu</h2>
						<form class="contact-form custom-form-style-1" action="php/contact-form.php" method="POST">
							<div class="contact-form-success alert alert-success d-none mt-4">
								<strong>Başarılı!</strong> Mesajınız bize gönderildi.
							</div>
							<div class="contact-form-error alert alert-danger d-none mt-4">
								<strong>Hata!</strong> Mesajınız gönderilirken bir hata oluştu.
								<span class="mail-error-message text-1 d-block"></span>
							</div>
							<div class="row">
								<div class="form-group col">
									<input type="text" value="" data-msg-required="Please enter your name." maxlength="100" class="form-control" name="name" placeholder="Ad Soyad" required>
								</div>
							</div>
							<div class="row">
								<div class="form-group col">
									<input type="email" value="" data-msg-required="Please enter your email address." data-msg-email="Please enter a valid email address." maxlength="100" class="form-control" name="email" placeholder="E-mail" required>
								</div>
							</div>
							<div class="row">
								<div class="form-group col">
									<textarea maxlength="5000" data-msg-required="Please enter your message." rows="6" class="form-control" name="message" placeholder="Mesaj" required></textarea>
								</div>
							</div>
							<div class="row">
								<div class="form-group col">
									<button type="submit" class="btn custom-svg-btn-style-1 custom-svg-btn-style-1-solid text-color-light text-uppercase" data-loading-text="Loading...">
										<svg class="custom-svg-btn-background" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 210 70" preserveAspectRatio="none">
											<polygon fill="none" stroke="#D4D4D4" stroke-width="2" stroke-miterlimit="10" points="7,5 185,5 205,34 186,63 7,63 " />
										</svg>
										Gönder
									</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
</asp:Content>
