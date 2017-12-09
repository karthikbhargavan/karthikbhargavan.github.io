window.addEventListener('load', function() {
    smoothScroll.init();
});

window.currentMode = "normal"
window.currentTarget = "collection";
window.prevTarget = "collection";
function switchDiv(mode,target) {
    if (window.currentMode !== mode) {
	document.getElementById(window.currentMode).style.display='none';
	document.getElementById(mode).style.display='block';
	window.currentMode = mode;
    }
    if (window.currentTarget !== target) {
	document.getElementById(window.currentTarget).style.display='none';
	document.getElementById(target).style.display='block';
	window.prevTarget = window.currentTarget;
	window.currentTarget = target;
    }
    let w = window,
	d = document,
	e = d.documentElement,
	g = d.getElementsByTagName('body')[0],
	x = w.innerWidth || e.clientWidth || g.clientWidth,
	y = w.innerHeight|| e.clientHeight|| g.clientHeight;
    if (x <= 800) document.getElementById("view").scrollIntoView();
}

function switchViewPic(id,target,src) {
    document.getElementById(target).src = src;
    document.getElementById(currentPic).className = "";
    document.getElementById(id).className = "currentPic";
    window.currentPic = id;
}

function switchFullPic(src) {
    document.getElementById('currentFullPic').src = src.replace("smaller","images");
    switchDiv('full','fullpic');
}

function displayMenu(piece,picsDir,picsList) {
    let m = document.getElementById(piece+"-menu");
    for (p in picsList) {
        let a = document.createElement('a');
        a.href="#";
        let i = document.createElement('img');
        let thumbfile = picsDir+"/thumb-"+piece+picsList[p].num+".jpg";
        let picfile = picsDir+"/"+piece+picsList[p].num+".jpg";
        i.src = "/thumbs/"+thumbfile;
        i.id = piece+p;
	let caption = picsList[p].caption;
        i.onclick = function(){switchViewPic(i.id,piece+"-img","/smaller/"+picfile);
	                       document.getElementById(piece+"-caption").innerHTML=caption;};
        if (p == 0) i.className = "currentPic";
        a.appendChild(i);
        m.appendChild(a);
    }
}

window.currentPiece = "";
function switchPiece(id,piece) {
    switchDiv('normal',piece);
    if (window.currentText != "") {
        document.getElementById(window.currentText+"-menu").className="";     
    }
    window.currentText = "";
    if (window.currentPiece != "") {
        document.getElementById(window.currentPiece).className = "";
    }
    document.getElementById(id).className="currentPiece";
    window.currentPiece = id;
    window.currentPic = piece+0;
}

window.currentText = "";
function switchText(piece) {
    switchDiv('normal',piece);
    if (window.currentPiece != "") {
        document.getElementById(window.currentPiece).className = "";
    }
    window.currentPiece = "";

    if (window.currentText != "") {
        document.getElementById(window.currentText+"-menu").className="";     
    }
    window.currentText = piece;
    document.getElementById(piece+"-menu").className="active";     
}

function switchLang(lang,path) {
    if (lang == "en" && path.startsWith("/fr")) {
	window.location.pathname = path.replace("/fr","");
    } else
	if (lang == "fr" && !path.startsWith("/fr")) {
	window.location.pathname = "/fr"+path;
    }      
}
