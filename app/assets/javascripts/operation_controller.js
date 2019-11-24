function show_search_result(data, area) {
    area.innerHTML = data.word + data.description;
    return;
}    

document.addEventListener('DOMContentLoaded', function () {
    const main_page = document.querySelector('#main_page');
    const search_btn = document.querySelector('#search_btn');
    const word_description = document.querySelector('#word_description');
    const word = document.querySelector('#word');
    const show_description_link = document.querySelectorAll('.show_description_link');
 
Array.from(show_description_link).forEach(function(element) {
      element.addEventListener('ajax:success', function(evt) {
        [data, status, xhr] = evt.detail;
            console.log(data)
           // alert("success");
            if (data.word.length!=0)
	    word.innerHTML = data.word; 
	    word_description.innerHTML = data.word_description;

    });
    });

search_btn.addEventListener('click', function() {
            jQuery('html,body').animate({scrollTop:(main_page).offsetTop},1000);
        });
});

