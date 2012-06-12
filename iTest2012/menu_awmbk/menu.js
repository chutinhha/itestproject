//----------DHTML Menu Created using AllWebMenus PRO ver 5.2-#798---------------
//C:\Users\KENVIN\Desktop\menutest01.awm
var awmMenuName='menu';
var awmLibraryBuild=798;
var awmLibraryPath='/awmdata';
var awmImagesPath='/awmdata/menu';
var awmSupported=(navigator.appName + navigator.appVersion.substring(0,1)=="Netscape5" || document.all || document.layers || navigator.userAgent.indexOf('Opera')>-1 || navigator.userAgent.indexOf('Konqueror')>-1)?1:0;
if (awmAltUrl!='' && !awmSupported) window.location.replace(awmAltUrl);
if (awmSupported){
var nua=navigator.userAgent,scriptNo=(nua.indexOf('Chrome')>-1)?2:((nua.indexOf('Safari')>-1)?7:(nua.indexOf('Gecko')>-1)?2:((document.layers)?3:((nua.indexOf('Opera')>-1)?4:((nua.indexOf('Mac')>-1)?5:1))));
var mpi=document.location,xt="";
var mpa=mpi.protocol+"//"+mpi.host;
var mpi=mpi.protocol+"//"+mpi.host+mpi.pathname;
if(scriptNo==1){oBC=document.all.tags("BASE");if(oBC && oBC.length) if(oBC[0].href) mpi=oBC[0].href;}
while (mpi.search(/\\/)>-1) mpi=mpi.replace("\\","/");
mpi=mpi.substring(0,mpi.lastIndexOf("/")+1);
var e=document.getElementsByTagName("SCRIPT");
for (var i=0;i<e.length;i++){if (e[i].src){if (e[i].src.indexOf(awmMenuName+".js")!=-1){xt=e[i].src.split("/");if (xt[xt.length-1]==awmMenuName+".js"){xt=e[i].src.substring(0,e[i].src.length-awmMenuName.length-3);if (e[i].src.indexOf("://")!=-1){mpi=xt;}else{if(xt.substring(0,1)=="/")mpi=mpa+xt; else mpi+=xt;}}}}}
while (mpi.search(/\/\.\//)>-1) {mpi=mpi.replace("/./","/");}
var awmMenuPath=mpi.substring(0,mpi.length-1);
while (awmMenuPath.search("'")>-1) {awmMenuPath=awmMenuPath.replace("'","%27");}
document.write("<SCRIPT SRC='"+awmMenuPath+awmLibraryPath+"/awmlib"+scriptNo+".js'><\/SCRIPT>");
var n=null;
awmzindex=1000;
}

var awmImageName='';
var awmPosID='awm_menu';
var awmSubmenusFrame='';
var awmSubmenusFrameOffset;
var awmOptimize=0;
var awmHash='RZBDYLTPHYZCJGSKXOXSDWBS';
var awmUseTrs=0;
var awmSepr=["0","","",""];
var awmMarg=[0,0,0,0];
function awmBuildMenu(){
if (awmSupported){
awmImagesColl=["v5_bullets_05.gif",10,10,"v5_bullets_06a.gif",11,10,"indicatorDown.gif",9,9,"menu_normal.png",10,31,"bg_linexanh.png",8,30];
awmCreateCSS(0,1,0,n,'#003300',n,n,n,'solid','1','#000000',0,0);
awmCreateCSS(1,2,1,'#7B7B7B',n,3,'bold 14px Tahoma',n,'none none none none','0px 0px 0px 0','#000000 #000000 #000000 #000000','0px 15px 1px 15',1);
awmCreateCSS(0,2,1,'#FFFFFF',n,4,'bold 14px Tahoma',n,'none none none none','0px 0px 0px 0','#000000 #000000 #000000 #000000','0px 15px 1px 15',1);
var s0=awmCreateMenu(0,0,0,0,1,0,0,0,0,10,31,0,1,0,1,1,1,n,n,100,1,0,0,0,100,-1,1,0,0,0,0,0,"0,0,0",n,n,n,n,n,n,n,n,0,0,0,0,1,0,0,0);
it=s0.addItemWithImages(1,2,2," &nbsp; Trang chủ &nbsp; ",n,n,"Đến trang chủ",n,n,n,3,3,3,n,n,n,"/Default.aspx",n,n,n,"/Default.aspx",n,150,0,2,n,n,n,n,4,4,0,0,0,0,0,n,n,n,0,0,0,0);
it=s0.addItemWithImages(1,2,2," &nbsp; Test Now &nbsp; ",n,n,"Bắt đầu làm bài thi trắc nghiệm",n,n,n,3,3,3,n,n,n,"/Test.aspx",n,n,n,"/Test.aspx",n,150,0,2,n,n,n,n,4,4,0,0,0,0,0,n,n,n,0,0,0,1);
s0.pm.buildMenu();
}}
