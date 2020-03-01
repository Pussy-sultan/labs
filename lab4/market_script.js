var kol_1 = 0;
var kol_2 = 0;

function sumUp(){
    let rows = document.getElementById('basket').rows;
    let sum = 0;
    for(i = 1; i < rows.length; i++){
        row = rows[i];
        sum += parseInt(row.cells[2].textContent);
    }
    text = document.createTextNode(sum);
    sumres = document.getElementById("summary");
    if(sumres.firstChild!=null){
        sumres.firstChild.remove();
    }
    sumres.appendChild(text);
}

function mouseOut(){
    this.style.backgroundColor = "";
}

function mouseOver(){
    this.style.backgroundColor="#404CFF"
}

function addToCart(){
    let add = this.cloneNode(true);
    add.style.backgroundColor = "";
    add.onclick = function Delete(){
        kol_2 -= 1;
        let rows = document.getElementById('basket').rows;
        let temp = add.cells[0].textContent;
        for(i = temp; i < rows.length; i++){
            rows[i].cells[0].textContent -= 1;
        }
        this.remove();
        sumUp();
    }
    kol_2 += 1;
    add.cells[0].textContent = kol_2;
    add.addEventListener("mouseover", mouseOver);
    add.addEventListener("mouseout", mouseOut);
    let cart = document.getElementById("basket");
    cart.appendChild(add);
    sumUp();
}

function add(){
    let form = document.getElementById("main_form");
    let name = document.getElementById("name");
    let price = document.getElementById("price");
    let table = document.getElementById("market");
    if((name.value != 0) && (price.value != 0)){
        let rows = document.getElementById('market').rows;
        let check = true;
        for(i = 1; i < rows.length && check; i++){
            if ((name.value == rows[i].cells[1].textContent) && (price.value == rows[i].cells[2].textContent)){
                check = false
            }
        }
        if (check){
            kol_1 += 1;
            NewRow(table, [kol_1, name.value, price.value])
        }
        else{
            alert("Данный товар уже существует!")
        }
    }
    else{
        alert("Заполните все поля!")
    }
    name.value='';
    price.value='';
}

function NewRow(table, values){
    row = table.insertRow();
    for (i = 0; i < 3; i++){
        var td = document.createElement("td");
        row.addEventListener("mouseover", mouseOver);
        row.addEventListener("mouseout", mouseOut);
        row.addEventListener("click", addToCart)
        text = document.createTextNode(values[i]);
        td.appendChild(text);
        row.appendChild(td);
    }
}