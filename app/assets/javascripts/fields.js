$(function() {
    $(document).on("focus",".pole", function() {
        $('.pole').autocomplete({
            source: $('.pole').data('autocomplete-source')
        }); 
    });
})