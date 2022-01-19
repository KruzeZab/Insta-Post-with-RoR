# $ ->
#   if $('.pagination').length && $('#infinite-scrolling').length
#     $(window).scroll ->
#       console.log("Loading more posts...!!!!!");
#       url = $('.pagination .next_page').attr('href')
#       console.log(url);
#       if url && $(window).scrollTop() > $(document).height() - $(window).height() - 60
#         $('.pagination').text("Loading more posts...");
#         $.getScript(url)
          

#       return
#     return