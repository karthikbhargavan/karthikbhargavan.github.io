window.addEventListener('load', function () {
	smoothScroll.init();
});

window.currentMode = "normal"
window.currentTarget = "invitation";
window.prevTarget = "invitation";
window.currentView = "view";
window.currentPic = "plate0";
window.menuToggled = false;

function switchDiv(mode, target) {
	if (window.currentMode !== mode) {
		document.getElementById(window.currentMode).style.display = 'none';
		document.getElementById(mode).style.display = 'block';
		window.currentMode = mode;
	}
	if (window.currentTarget !== target) {
		document.getElementById(window.currentTarget).style.display = 'none';
		document.getElementById(target).style.display = 'block';
		window.prevTarget = window.currentTarget;
		window.currentTarget = target;
	}
	let w = window,
		d = document,
		e = d.documentElement,
		g = d.getElementsByTagName('body')[0],
		x = w.innerWidth || e.clientWidth || g.clientWidth,
		y = w.innerHeight || e.clientHeight || g.clientHeight;
	if (x <= 800) document.getElementById("view").scrollIntoView();
}

function switchViewPic(piece, id, target, src) {
	if (currentView == "vidview") {
		document.getElementById(piece + "-vidview").style.display = "none";
		document.getElementById(piece + "-view").style.display = "block";
		currentView = "view";
	}
	document.getElementById(target).src = src;
	let pic = document.getElementById(window.currentPic);
	if (pic) pic.className = "";
	let vid = document.getElementById(window.currentVid);
	if (pic) pic.className = "";
	document.getElementById(id).className = "currentPic";
	window.currentPic = id;
	window.currentVid = 0;
}

function switchViewVid(piece, id) {
	if (currentView == "view") {
		document.getElementById(piece + "-view").style.display = "none";
		document.getElementById(piece + "-vidview").style.display = "block";
		currentView = "vidview";
	}
	let pic = document.getElementById(currentPic);
	if (pic) pic.className = "";
	let vid = document.getElementById(currentVid);
	if (pic) pic.className = "";
	document.getElementById(id).className = "currentVid";
	window.currentPic = 0;
	window.currentVid = id;
}

function switchFullPic(src) {
	document.getElementById('currentFullPic').src = src.replace("smaller", "images");
	switchDiv('full', 'fullpic');
}

function displayMenu(piece, picsDir, picsList) {
	let m = document.getElementById(piece + "-menu");
	for (p in picsList) {
		let a = document.createElement('a');
		a.href = "#";
		let i = document.createElement('img');
		let thumbfile = picsDir + "/thumb-" + piece + picsList[p].num + ".jpg";
		let picfile = picsDir + "/" + piece + picsList[p].num + ".jpg";
		i.src = "/thumbs/" + thumbfile;
		i.id = piece + p;
		let caption = picsList[p].caption;
		i.onclick = function () {
			switchViewPic(piece, i.id, piece + "-img", "/smaller/" + picfile);
			document.getElementById(piece + "-caption").innerHTML = caption;
		};
		if (p == 0) i.className = "currentPic";
		a.appendChild(i);
		m.appendChild(a);
	}
}

window.currentPiece = "";

function switchPiece(id, piece) {
	switchDiv('normal', piece);
//	if (window.currentText != "") {
//		document.getElementById(window.currentText + "-menu").className = "";
//	}
//	window.currentText = "";
	if (window.currentPiece != "") {
		document.getElementById(window.currentPiece).className = "";
	}
	document.getElementById(id).className = "currentPiece";
	let pic = document.getElementById(currentPic);
	if (pic) pic.className = "";
	window.currentPiece = id;
	window.currentPic = piece + 0;
	window.currentVid = 0;
	pic = document.getElementById(currentPic);
	if (pic) pic.onclick();
}

window.currentText = "";

function switchText(piece) {
	switchDiv('normal', piece);
	if (window.currentPiece != "") {
		document.getElementById(window.currentPiece).className = "";
	}
	window.currentPiece = "";

	if (window.currentText != "") {
		document.getElementById(window.currentText + "-menu").className = "";
	}
	window.currentText = piece;
	document.getElementById(piece + "-menu").className = "active";
}

function switchLang(lang, path) {
	if (lang == "en" && path.endsWith("/fr")) {
		window.location.pathname = path.replace("/fr", "");
	} else
	if (lang == "fr" && !path.endsWith("/fr")) {
		window.location.pathname = path + "/fr";
	}
}

function toggleMenu() {
	let bigMenu = document.getElementsByClassName('bigmenu')[0];
	let lang = document.getElementsByClassName('lang')[0];
	let bigMenuLinks = bigMenu.getElementsByTagName('a');
	console.log(bigMenuLinks);
	if (menuToggled) {
		setTimeout(function() {
		    bigMenu.style['max-height'] = '0px';
		    //    bigMenu.style['display'] = 'none';
		}, 100);
		for (let i = 0; i < bigMenuLinks.length; i++) {
			bigMenuLinks[i].style.opacity = '0';
		}
//		lang.style.opacity = '0';
		window.menuToggled = false;
	}
	else {
	    bigMenu.style['max-height'] = '200px';
//	    bigMenu.style['display'] = 'block';
		for (let i = 0; i < bigMenuLinks.length; i++) {
			bigMenuLinks[i].style.opacity = '1';
		}
//		lang.style.opacity = '1';
		window.menuToggled = true;
	}
}
