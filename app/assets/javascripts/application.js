// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
// require turbolinks
//= require jquery
//= require bootstrap-sprockets
//= require_tree .
// オプションを指定してSkipprの実行

// //ハンバーガーメニュー
$(function() {
  $('.menu-trigger').on('click', function(event) {
    $(this).toggleClass('active');
    $('#sp-menu').fadeToggle(1000);
    event.preventDefault();
  });
});

$(function() {
  // 一旦hide()で隠してフェードインさせる
  $('.main-visual__text').hide().fadeIn(4000);
  $('.main-visual__texts').hide().fadeIn(6000);
});
//テキストのフェードイン
$(function(){
	$(window).scroll(function (){
			$('.main-visual__sub-text, .down-to-top').each(function(){
					var elemPos = $(this).offset().top;
					var scroll = $(window).scrollTop();
					var windowHeight = $(window).height();
					if (scroll > elemPos - windowHeight + 150){
							$(this).addClass('scrollin');
					}
			});
	});
});

$(function(){
	$(window).scroll(function (){
			$('.fadein').each(function(){
					var position = $(this).offset().top;
					var scroll = $(window).scrollTop();
					var windowHeight = $(window).height();
					if (scroll > position - windowHeight + 2300){
						$(this).addClass('active');
					}
			});
	});
});

//画像のプレビュー
$(function () {
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function (e) {
        $('.img_prev').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }

  $('.img_field').change(function () {
    readURL(this);
  });
});

//link idへのスクロール
$(function(){
	$('a[href^="#"]').click(function(){
		var target = $($(this).attr('href')).offset().top;
		target -= -140;
		$('html, body').animate({scrollTop: target}, 1000);
		return false;
	});
});

$(window).scroll(function(){
		if ($(window).scrollTop() > 100) {
			$('.service-left').addClass('startwd');
		} else {
			$('.service-left').removeClass('startwd');
		}
	});
	
	$(window).scroll(function(){
		if ($(window).scrollTop() > 200) {
			$('.service-right').addClass('startwd');
		} else {
			$('.service-right').removeClass('startwd');
		}
	});

	$(window).scroll(function(){
		if ($(window).scrollTop() > 500) {
			$('.service-lefts').addClass('start');
		} else {
			$('.service-lefts').removeClass('start');
		}
	});

