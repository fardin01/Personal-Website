//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap.min
//= require animsition.min
//= require_tree .


$(function () { 
	$(".animsition").animsition();

    $('a.load-more').click(function (e) {
        e.preventDefault();

        $('.load-more').hide();

        $('.loading-gif').show();

        var last_id = $('.panel').last().attr('data-id');

        $.ajax({
            type: "GET",

            url: $(this).attr('href'),

            data: {
                id: last_id
            },
            dataType: "script",

            success: function () {
                $('.loading-gif').hide();
                if ($("section#blog-gallery .panel").length === post_count) {
                    $('.load-more').hide();
                } else {
                    $('.load-more').show();
                }
            }
        });

    });
});