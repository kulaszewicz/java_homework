

$('.sending').click(function() {

    var correct = true;

    var DOMstrings = {
        inputAmount : '#amount',
        inputQuantity : '#quantity',
        inputPercentage : '#percentage',
        inputFee : '#fixedFee'
    };

    for (var key in DOMstrings) {
        document.querySelector(DOMstrings[key]).classList.remove("error");
        if(DOMstrings.hasOwnProperty(key)){
            if (document.querySelector(DOMstrings[key]).value === '' || document.querySelector(DOMstrings[key]).value === null || document.querySelector(DOMstrings[key]).value.match(/[a-z]/i) || document.querySelector(DOMstrings[key]).value.match( /[\s-!$%^&*()_+|~=`{}\[\]:";'<>?\/]/)) {
                correct = false;
                console.log("error");
                document.querySelector(DOMstrings[key]).classList.add("error");
                document.querySelector('#err-js').innerHTML="Error";
                $('#err-js').addClass("animated shake");
                setTimeout(function () {
                    $('#err-js').removeClass("animated shake");
                }, 3000)
            }


        }
    }

    if (correct){
        document.getElementById("myForm").submit();
    }
});
/*
    if (document.querySelector(DOMstrings.inputQuantity).value === '' || document.querySelector(DOMstrings.inputQuantity).value === null) {
        console.log("error");
        document.querySelector(DOMstrings.inputQuantity).style.boxShadow = "0 0 7px #cc0221";
    }

    if (document.querySelector(DOMstrings.inputPercentage).value === '' || document.querySelector(DOMstrings.inputPercentage).value === null) {
        console.log("error");
        document.querySelector(DOMstrings.inputPercentage).style.boxShadow = "0 0 7px #cc0221";
    }

    if (document.querySelector(DOMstrings.inputFee).value === '' || document.querySelector(DOMstrings.inputFee).value === null) {
        console.log("error");
        document.querySelector(DOMstrings.inputFee).style.boxShadow = "0 0 7px #cc0221";
    }
});
 */