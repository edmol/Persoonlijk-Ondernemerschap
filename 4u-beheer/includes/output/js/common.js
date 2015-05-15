// Consider placing your common Javascript routines below.

// For documentation popup links in ./inc/generator.menu.php

function openWinDocs(theURL,winName,features) {
   w=window.open(theURL,winName,features);
   w.focus();
}

// For extended Help popup ./popup.php

function openWinHelp(URL){
   open(URL,"_blank","left=150,top=150,width=640,height=480,scrollbars=yes,resizable=yes");
}

