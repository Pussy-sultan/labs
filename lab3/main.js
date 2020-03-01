function generateTree(elem) {
    var child = elem.firstElementChild; //возвращает первый дочерний элемент
    var ul = document.createElement('ul');  //новый элемент с тегом ul
    console.log('Вошли в ' + elem.tagName);
    while(child) {
        var li = document.createElement('li');  //новый элемент с тегом li
        li.innerHTML = child.tagName; //получаем HTML-содержимое элемента и всю разметку = Возвращает HTML-тег // меняем тег на следющий дочерний
        var list = generateTree(child); //рекурсия
        li.appendChild(list); //Добавляет элемент в конец списка дочерних элементов родителя.
        ul.appendChild(li); //Добавляет элемент в конец списка дочерних элементов родителя.
        child = child.nextElementSibling;//возвращает следющий за указанным дочерним элемент
    }
    elem.appendChild(ul); //Добавляет элемент в конец списка дочерних элементов родителя.
    console.log('Вышли из ' + elem.tagName);
    return ul;
};
document.getElementById("result").innerHTML+=generateTree(document.documentElement);
