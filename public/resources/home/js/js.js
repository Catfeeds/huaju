$(document).ready(function () {
    if($(window).width()>1180){
        $(".seconed").each(function(){
            if($(this).find('dl').length>0){
                var width = 0;
                $(this).find('dl').each(function(){
                    width += parseInt($(this).outerWidth())
                })
                $(this).css("min-width",width+1)
            }
        })
    }

    
    $(window).scroll(function() {
        if($(window).scrollTop()>200&&document.body.scrollWidth>=1180){
            $(".header-feixd").addClass("mini");
        }else{
            $(".header-feixd").removeClass("mini");
        }
    });
    $('.fo-item').each(function () {
        var _this = $(this)
        $(this).children('.f-title').click(function () {
            if ($(window).width() > 1180) {
                return false;
            } else {
                if(_this.children('.td').is(":hidden")){
                    _this.siblings('').children('.f-title').find('i').html('&#xe605;')
                    $(this).find('i').html('&#xe6d3;')
                    _this.children('.td').slideDown()
                    _this.siblings('').children('.td').slideUp()
                }else{
                    _this.children('.td').slideUp()
                }
            }
        })
    })

    $(".mCustomScrollbar").mCustomScrollbar({
        axis:"y",
        // scrollInertia: 100,
        scrollButtons:{
            enable: false,
            scrollSpeed: 20
        },
        theme:"dark",
        scrollbarPosition:"outside",
        // autoHideScrollbar:true,
    });
    $(".mCustomScrollbar2").mCustomScrollbar({
        axis:"y",
        // scrollInertia: 100,
        scrollButtons:{
            enable: false,
            scrollSpeed: 20
        },
        theme:"dark",
        // autoHideScrollbar:true,
    });
    $(".nav ul li").hover(function(){
        if(document.body.scrollWidth>=1180){
            $(this).find(".seconed").show();
        }
    },function(){
        if(document.body.scrollWidth>=1180){
            $(this).find(".seconed").hide();
        }
    })
    $(".nav ul li").hover(function(){
        if(document.body.scrollWidth>=1180){
            $(this).find(".seconed").show();
        }
    },function(){
        if(document.body.scrollWidth>=1180){
            $(this).find(".seconed").hide();
        }
    })
    $(".nav ul li span a").click(function(){
        if(document.body.scrollWidth<1180){
            if($(this).parents("li").find(".seconed").length){
                if($(this).parents("li").find(".seconed").is(":hidden")){
                    $(this).parents("li").find(".seconed").show();
                }else{
                    $(this).parents("li").find(".seconed").hide();
                }
                return false;
            }
        }
    })
    $('.hsebtn dd').click(function(){
        $(this).addClass('active').siblings().removeClass();
        $('.join').hide().eq($(this).index()).show()
    })
    var set_tops='';
    $(window).scroll(function() {
        if(document.body.scrollWidth<1180){
            $('#toTop').addClass("on");
            clearTimeout(set_tops);
            set_tops = setTimeout(function(){
                $('#toTop').removeClass("on");
            },3000)
        }
    });
    $('#tops').click(function () {
        $('body,html').animate({
            'scrollTop': '0'
        })
        return false
    })

    $('#toTop .no_click').click(function (e) {
         if($(window).width()<1200){
            $('.sa').hide().eq($(this).attr('index')).show()
              e.stopPropagation()
        }
       
    })

    $('body,html').click(function(e){
        if($(window).width()<1200){
        $('.sa').hide()
        e.stopPropagation()
    }
    })
    // $('#toTop').mouseleave(function () {
    //     $('.sa').hide()
    // })
    
    // $('#toTop a').mouseenter(function(){
        
    //     $('.sa').hide().eq($(this).attr('index')).show()
    // }).mouseleave(function(){
    //      $('.sa').hide()
    // })

    //社会招聘
    $(".hseui_h").hover(function(){
        if($(window).width()>1180){
            $(this).addClass("on");
        }
    },function(){
        if($(window).width()>1180){
            $(this).removeClass("on");
        }
    })
    $(".hseui_h").click(function(){
        $(this).siblings().removeClass("on");
        $(this).addClass("on");
    })
    $(".hseui_h .tc2").click(function(){
        $(".hseui_h").removeClass("on");
        return false;
    })
    $(".hseui_h .icon-close").click(function(){
        $(".hseui_h").removeClass("on");
        return false;
    })

    //实习招聘
    $(".shixi .box").click(function(){
        $(this).siblings().removeClass("on");
        $(this).addClass("on");
    })
    $(".shixi .box").mouseleave(function(){
        if($(window).width()>1180){
            $(".shixi .box").removeClass("on");
        }
    })
    $(".shixi .tc2").click(function(){
        $(".shixi .box").removeClass("on");
        return false;
    })
    $(".shixi .icon-close").click(function(){
        $(".shixi .box").removeClass("on");
        return false;
    })


    // $(".serv-box .text,.caseys ul li .text .txt").dotdotdot({
    //     watch: "window",
    // });
    // $(".stand li .text .txt").dotdotdot({
    //     watch: "window",
    // });
    $('.cliset').slick({
        dots: false,
        slidesToShow: 3,
        autoplay: true,
        responsive: [{
                breakpoint: 1180,
                settings: {
                    slidesToShow: 2,

                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    });
    $('.bdlist dl').slick({
        dots: false,
        slidesToShow: 3,
        autoplay: true,
        responsive: [{
                breakpoint: 1180,
                settings: {
                    slidesToShow: 2,

                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    });
    $('.nwslick .slics').slick({
        dots: true,
        autoplay: true,
        infinite: false,
        arrows:false
    })
    $('.scenariolist').slick({
        dots: false,
        infinite: false,
        speed: 300,
        slidesToShow: 4,
        autoplay: true,
        responsive: [{
                breakpoint: 1180,
                settings: {
                    slidesToShow: 3,

                }
            },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 2,
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    });

    var bool = true
    $('.searchBtn').click(function (e) {
        if (bool) {
            $('.serach').addClass('active')
            $('.fade').fadeIn()
            bool = false
        } else {
            $('.serach').removeClass('active')
            $('.fade').fadeOut()
            bool = true
        }
        e.stopPropagation()
    })
    $('body').click(function (e) {
        $('.serach').removeClass('active')
         $('.sbtn').show()

        $('.fade').fadeOut()
        bool = true
         e.stopPropagation()
    })

    $('.serach .text').click(function(e){
        e.stopPropagation()
    })

    $('.msbtn ').click(function(e){
         $('.serach').addClass('active')
         $('.fade').show()
          e.stopPropagation()
    })

    $('.sbtn').click(function(e){
        $('.serach').addClass('active')
        $(this).hide()
        e.stopPropagation()
     
    })
    $('.msbtn').click(function(){
        $('.serach').addClass('active')
    })

    $('.nav>ul>li>span>i').click(function () {
        if ($(this).parents('li').children('.seconed  ').is(":hidden")) {
            $(this).addClass('on')
            $(this).parents('li').children('.seconed  ').slideDown()
            $(this).parents('li').siblings().children('.seconed').slideUp()
        } else {
            $(this).removeClass('on')
            $(this).parents('li').children('.seconed  ').slideUp()
        }
    })

    $('.m-nav').click(function () {
        if ($(this).hasClass('active')) {
            $(this).removeClass('active')
            $('.nav').slideUp()
        } else {
            $(this).addClass('active')
            $('.nav').slideDown()
        }
    })
    
    // $('.nav>ul>li>span>i').click(function () {
    //     if ($(this).parents('li').children('.seconed  ').is(":hidden")) {
    //         $(this).addClass('on')
    //         $(this).parents('li').children('.seconed  ').slideDown()
    //         $(this).parents('li').siblings().children('.seconed').slideUp()
    //     } else {
    //         $(this).removeClass('on')
    //         $(this).parents('li').children('.seconed  ').slideUp()
    //     }
    // })
    // $(".nav ul").mCustomScrollbar({
    //     axis:"y",
    //     scrollInertia: 100,
    //     scrollButtons:{
    //         enable: true,
    //         scrollSpeed: 20
    //     },
    //     theme:"3d",
    //     scrollbarPosition:"outside"
    // });

    // $('.m-nav').click(function () {
    //     if ($(this).hasClass('active')) {
    //         $(this).removeClass('active')
    //         $('.nav').slideUp()
    //     } else {
    //         $(this).addClass('active')
    //         $('.nav').slideDown()
    //     }
    // })


    $('.devlist ul li').each(function(index){
        if(index > 10){
            $(this).addClass('hide')
            $(this).removeClass('wow')
            $(this).removeClass('fadeInLeftBig')
        }
    })
    $('.devlist a').click(function(){
        $(this).toggleClass("on");
        if($(this).is(".on")){
            $(this).html('隐藏更多历程');
            $('.devlist ul li').removeClass('hide')
        }else{
            $(this).html('查看更多历程');
            $('.devlist ul li').eq(10).nextAll().addClass("hide");
        }
        
        
        return false
    })

    $('.stop').slick({
        dots: false,
        slidesToShow:2,
        autoplay: true,
        responsive: [
            {
              breakpoint: 768,
              settings: {
                slidesToShow: 2,
                slidesToScroll: 2
              }
            }
          ]
    });
//     $('.stop').slick({
//         dots: false,
//         slidesToShow:2,
//         responsive: [
//             {
//               breakpoint: 768,
//               settings: {
//                 slidesToShow: 2,
//                 slidesToScroll: 2
//               }
//             },
//             {
//               breakpoint: 460,
//               settings: {
//                 slidesToShow: 1,
//                 slidesToScroll: 1
//               }
//             }
//           ]
//     });
    $('.srt').slick({
        dots: false,
        slidesToShow:2,
        autoplay: true,
        responsive: [
            {
              breakpoint: 768,
              settings: {
                slidesToShow:1,
                slidesToScroll: 1
              }
            },
            {
              breakpoint: 460,
              settings: {
                slidesToShow: 1,
                slidesToScroll: 1
              }
            }
          ]
    });
    $('.sbot').slick({
        dots: false,
        slidesToShow:3,
        autoplay: true,
        responsive: [
            {
              breakpoint: 768,
              settings: {
                slidesToShow: 2,
                slidesToScroll: 2
              }
            },
            {
              breakpoint: 460,
              settings: {
                slidesToShow: 1,
                slidesToScroll: 1
              }
            }
          ]
    });

    $('.btsou').click(function(){
        $(this).parents(".goods").find(".btsou").removeClass("active");
        $(this).addClass("active");
        $('.tdas').hide()
        $('.tdas').eq($(this).attr('index')).show()
    })

    
    $('.slideslick').slick({
        dots: true,
        arrows:false,
        autoplay: true,
    })

    if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))){
        new WOW().init();
    };
    
    // if ($(window).width() > 1200) {
    //     showmod();
    // } else {
    //     $('.animated').addClass('on')
    // }
});

function showmod() {
    function setshow(obj) {
        var t=$(window).scrollTop();
        if(t<obj.attr('data-tops')&&t>obj.attr('data-topb')){
            return true;
        }else{
            return false;
        }
    }
    var win=$(window);
    var el=$('.animated');
    el.each(function () {
    var that=$(this);
    var time=$(this).attr('data-time');
    that.attr('data-topb',that.offset().top-win.height()-that.outerHeight()*.2);
    that.attr('data-tops',that.offset().top+that.outerHeight());
        if(setshow(that)){
            setTimeout(function(){
                 that.addClass('on');

            },time)
        }
    });
    if(el){
        var yesno=true;
        win.scroll(function () {
            if(yesno){
                yesno=false;
                setTimeout(function () {
                    el.each(function () {
                    var that=$(this);
                    var time=$(this).attr('data-time');
                    if(!that.hasClass('on')&&setshow(that)){
                        setTimeout(function(){
                            that.addClass('on');
                               
                        },time)
                    }
                });
                    if($('.animated.on').length==el.length){
                        yesno=false;
                    }else{
                        yesno=true;
                    }
                },250);
            }
        })
    }
}
