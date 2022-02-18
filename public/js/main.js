// Get the modal
const modal = document.getElementById("myModal");
// Get the button that opens the modal
const btn = document.getElementById("myBtn");
// Get the <span> element that closes the modal
const span = document.getElementsByClassName("close")[0];
const modalOk = document.getElementById("modal-ok");
const modalOrder = document.getElementById("modal-order");
// When the user clicks the button, open the modal
btn.onclick = function(e) {
    e.preventDefault();
    modal.style.display = "block";
    modalOk.style.display = "none";
    modalOrder.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
    modalOk.style.display = "block";
    modalOrder.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
        modalOk.style.display = "block";
        modalOrder.style.display = "none";
    }
}



async function order()
{
    const name = document.getElementById("name").value;
    const email = document.getElementById("email").value;
    const id = document.getElementById("id").value;
    const message = document.getElementById("message");

    const formData = new FormData();
    formData.append('name', name);
    formData.append('email', email);
    formData.append('products_id', id);
    try {
        const headers = {
            'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
        }
        let response = await fetch('/order', {
            method: 'POST',
            body: formData,
            headers: headers,
            credentials: "include"
        });

        const result = await response.json();
        if (result.result) {
            modalOk.style.display = "block";
            modalOrder.style.display = "none";
        } else {
            message.innerHTML = '<span style="color:red">' + result.error + '</span>';
        }
    } catch (e)
    {
        console.log(e.message)
        message.innerHTML = '<span style="color:red">' + e.message + '</span>';
    }

}
