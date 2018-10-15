

$('.sending').click(function() {
    var DOMstrings = {
        inputAmount : '#amount',
        inputQuantity : '#quantity',
        inputPercentage : '#percentage',
        inputFee : '#fixedFee'
    };

    if (document.querySelector(DOMstrings.inputAmount).value === '' || document.querySelector(DOMstrings.inputAmount).value === null) {
        console.log("error");
        document.querySelector(DOMstrings.inputAmount).style.boxShadow = "0 0 7px #cc0221";
    }

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