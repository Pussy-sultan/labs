function generateTree(elem){
			temp=elem.tagName;
			console.log('Вошли в ' + elem.tagName);
			if (elem.childElementCount>0){
				temp+="<ul>";
				for(var i=0; i<elem.children.length; i++)
					temp+="<li>"+generateTree(elem.children[i])+"<\/li>";
				temp+="<\/ul>";
				}
			console.log('Вышли из ' + elem.tagName);
			return temp;
		}
	document.getElementById("result").innerHTML+=generateTree(document.documentElement);
