if(!Array.prototype.push){
	Array.prototype.push=function(){
		var startLength=this.length;
		for(var i=0;i<arguments.length;i++)
			this[startLength+i]=arguments[i];
		return this.length
	}
};

function G(){
	var elements=new Array();
	for(var i=0;i<arguments.length;i++){
		var element=arguments[i];
		if(typeof element=='string')
			element=document.getElementById(element);
		if(arguments.length==1)
			return element;
		elements.push(element)
	};
	return elements
};

function F( iframeIdName, shadowOffset ){
	var e = document.getElementById( iframeIdName );
	if (e && (e.src.length>0) ){
		var theHeight = 0;
		var theWidth = 0;
		if (e.contentDocument && e.contentDocument.body.offsetHeight){
			theHeight = parseInt(e.contentDocument.body.offsetHeight);
			theWidth = parseInt(e.contentDocument.body.offsetWidth);
		}else if(e.Document && e.Document.body.scrollHeight){
			theHeight = parseInt(e.Document.body.scrollHeight);
			theWidth = parseInt(e.Document.body.scrollWidth);
		}
		if( theHeight < 60 ) theHeight = 60;
		e.height = theHeight;
		var oDialog=G('dialogBody');
		oDialog.style.height = theHeight+"px";
		
		//middle;
		var sClientWidth=document.documentElement.clientWidth || document.body.clientWidth;
		var sClientHeight=document.documentElement.clientHeight || document.body.clientHeight;
		var sScrollTop=document.documentElement.scrollTop || document.body.scrollTop;
		var sleft=(document.documentElement.clientWidth/2)-(theWidth/2);
		var sTop=(sClientHeight/2+sScrollTop)-(theHeight/2);
		if(sTop<1)sTop="20";
		if(sleft<1)sleft="20";
		var oDialogBox=G('dialogBox');
		oDialogBox['style']['left']=sleft+"px";oDialogBox['style']['top']=sTop+"px";
		
		//shadow;
		var oShadow=G('dialogBoxShadow');
		oShadow['style']['top']=(sTop+shadowOffset)+"px";
		oShadow['style']['left']=(sleft+shadowOffset)+"px";
		oShadow['style']['width']=theWidth+"px";

		var isTitle = G('dialogBoxTitle');
		var titleHeight = isTitle==null? 26:40;
		oShadow['style']['height'] = (theHeight+titleHeight)+"px";
	}
}

Function.prototype.bind=function(object){
	var __method=this;
	return function(){
		__method.apply(object,arguments)
	}
};

Function.prototype.bindAsEventListener=function(object){
	var __method=this;
	return function(event){
		__method.call(object,event||window.event)
	}
};

Object.extend=function(destination,source){
	for(property in source){
		destination[property]=source[property]
	};
	return destination
};
	
if(!window.Event){
	var Event=new Object()
};
	
Object.extend(Event,{
	observers:false,
	element:function(event){
		return event.target||event.srcElement
	},
	isLeftClick:function(event){
		return(((event.which)&&(event.which==1))||((event.button)&&(event.button==1)))
	},
	pointerX:function(event){
		return event.pageX||(event.clientX+(document.documentElement.scrollLeft||document.body.scrollLeft))
	},
	pointerY:function(event){
		return event.pageY||(event.clientY+(document.documentElement.scrollTop||document.body.scrollTop))
	},
	stop:function(event){
		if(event.preventDefault){
			event.preventDefault();
			event.stopPropagation()
		}else{
			event.returnValue=false;
			event.cancelBubble=true
		}
	},
	findElement:function(event,tagName){
		var element=Event.element(event);
		while(element.parentNode&&(!element.tagName||(element.tagName.toUpperCase()!=tagName.toUpperCase())))
			element=element.parentNode;
		return element
	},
	_observeAndCache:function(element,name,observer,useCapture){
		if(!this.observers)
			this.observers=[];
		if(element.addEventListener){
			this.observers.push([element,name,observer,useCapture]);
			element.addEventListener(name,observer,useCapture)
		}else if(element.attachEvent){
			this.observers.push([element,name,observer,useCapture]);
			element.attachEvent('on'+name,observer)
		}
	},
	unloadCache:function(){
		if(!Event.observers)return;
		for(var i=0;i<Event.observers.length;i++){
			Event.stopObserving.apply(this,Event.observers[i]);
			Event.observers[i][0]=null
		};
		Event.observers=false
	},
	observe:function(element,name,observer,useCapture){
		var element=G(element);
		useCapture=useCapture||false;
		if(name=='keypress'&&(navigator.appVersion.match(/Konqueror|Safari|KHTML/)||element.attachEvent))
			name='keydown';
		this._observeAndCache(element,name,observer,useCapture)
	},
	stopObserving:function(element,name,observer,useCapture){
		var element=G(element);
		useCapture=useCapture||false;
		if(name=='keypress'&&(navigator.appVersion.match(/Konqueror|Safari|KHTML/)||element.detachEvent))
			name='keydown';
		if(element.removeEventListener){
			element.removeEventListener(name,observer,useCapture)
		}else if(element.detachEvent){
			element.detachEvent('on'+name,observer)
		}
	}
});

Event.observe(window,'unload',Event.unloadCache,false);

var Class=function(){
	var _class=function(){
		this.initialize.apply(this,arguments)
	};
	for(i=0;i<arguments.length;i++){
		superClass=arguments[i];
		for(member in superClass.prototype){
			_class.prototype[member]=superClass.prototype[member]
		}
	};
	_class.child=function(){
		return new Class(this)
	};
	_class.extend=function(f){
		for(property in f){
			_class.prototype[property]=f[property]
		}
	};
	return _class
};

function space(flag){
	if(flag=="begin"){
		var ele=document.getElementById("ft");
		if(typeof(ele)!="undefined"&&ele!=null)
			ele.id="ft_popup";
		ele=document.getElementById("usrbar");
		if(typeof(ele)!="undefined"&&ele!=null)
			ele.id="usrbar_popup"
		}
	else if(flag=="end"){
		var ele=document.getElementById("ft_popup");
		if(typeof(ele)!="undefined"&&ele!=null)
			ele.id="ft";
		ele=document.getElementById("usrbar_popup");
		if(typeof(ele)!="undefined"&&ele!=null)
			ele.id="usrbar"
	}
};
var Popup=new Class();

Popup.prototype={
	iframeIdName:'ifr_popup',
	initialize:function(config){
		this.config=Object.extend({
				contentType:1,		//1:iframe; 2: html code 3:confirm dialog 4:alert dialog
				isHaveTitle:true,//是否有标题头
				scrollType:'no',
				isBackgroundCanClick:false,  //是否需要遮罩,false为不能被点击需要遮罩
				isSupportDraging:true,       //是否允许被拖动，允许被拖动时isHaveTitle必须为true
				isShowShadow:true,            //是否有阴影
				isReloadOnClose:true,      //关闭弹出框后页面是否刷新
				isHaveWaiting:false,        //是否需要载入前的等待提示
				isAutoSize:false,             // contentType=1,iframe是否自适应高度
				baseUrl: '',
				imageFolder: '/plugins/popup/images/',
				myClose:false,          // contentType=2,定义关闭按钮id
				width:300,
				height:60,
				pMarLeft:0,
				myCloseId:'myClose'},
				config||{});
		this.info={
			shadowWidth:3,
			title:"信息",
			contentUrl:"",
			contentHtml:"",
			waitInfo:"",
			callBack:null,
			callBack2:null,
			parameter:null,
			confirmCon:"",
			confirmBtnName:"&nbsp;确 定&nbsp;",
			cancelBtnName:"取 消",
			alertCon:"",
			someHiddenTag:"object,embed",
			someDisabledBtn:"",
			someHiddenEle:"",
			overlay:0,
			bottomContent:"",
			coverOpacity:40};
		this.color={
			cColor:"#9FA1A3",
			bColor:"#FFFFFF",
			tColor:"#048F2F",
			wColor:"#FFFFFF"};
		this.dropClass=null;
		this.someToHidden=[];
		this.someToDisabled=[];
		if(!this.config.isHaveTitle)
			this.config.isSupportDraging=false;
		this.iniBuild()
	},
	setContent:function(arrt,val){
		if(val!=''){
			switch(arrt){
				case 'width':
					this.config.width=val;break;
				case 'height':
					this.config.height=val;break;
				case 'title':
					this.info.title=val;break;
				case 'contentUrl':
					this.info.contentUrl=val;break;
				case 'contentHtml':
					this.info.contentHtml=val;break;
				case 'waitInfo':
					this.info.waitInfo=val;break;
				case 'callBack':
					this.info.callBack=val;break;
				case 'callBack2':
					this.info.callBack2=val;break;
				case 'parameter':
					this.info.parameter=val;break;
				case 'confirmCon':
					this.info.confirmCon=val;break;
				case 'alertCon':
					this.info.alertCon=val;break;
				case 'someHiddenTag':
					this.info.someHiddenTag=val;break;
				case 'someHiddenEle':
					this.info.someHiddenEle=val;break;
				case 'someDisabledBtn':
					this.info.someDisabledBtn=val;break;
				case 'overlay':
					this.info.overlay=val;break;
				case 'confirmBtnName':
					this.info.confirmBtnName=val;break;
				case 'cancelBtnName':
					this.info.cancelBtnName=val;break;
				case 'bottomContent':
					this.info.bottomContent=val;break;
			}
		}
	},
	setColor:function(arrt,val){
		if(val!=''){
			switch(arrt){
			case 'cColor':
				this.color.cColor=val;break;
			case 'bColor':
				this.color.bColor=val;break;
			case 'tColor':
				this.color.tColor=val;break;
			case 'wColor':
				this.color.wColor=val
			}
		}
	},
	iniBuild:function(){
		G('dialogCase')?G('dialogCase').parentNode.removeChild(G('dialogCase')):function(){};
		var oDiv=document.createElement('span');
		oDiv.id='dialogCase';
		document.body.appendChild(oDiv);
		var path = this.config.baseUrl + this.config.imageFolder;
		var sStyleTxt='#confirmConTxt a{color:#205DA3;}\n#dialogOk{width:106px;height:29px;line-height:26px;cursor:pointer;color:#fff;background:url('+
			path+'btn.gif) no-repeat;}\n#dialogYES{width:106px;height:29px;line-height:26px;cursor:pointer;color:#fff;background:url('+
			path+'btn.gif) no-repeat;}\n#dialogCancel{width:106px;height:29px;line-height:26px;cursor:pointer;color:#205DA3;background:url('+
			path+'btn.gif) 0px bottom no-repeat;margin-left:10px;}';
		if (document.all) {
			var sheet = document.createStyleSheet();
			var css=sStyleTxt.split("\n");
			for(var atr in css){
				try {
					var attr=css[atr].split("{"); 
					sheet.addRule(attr[0],attr[1].replace(/}/ig,"")); 
				} catch (e) {
				}
			}
		}else{
			var oStyle=document.createElement('style');
			oStyle.type='text/css';
			oStyle.innerHTML=sStyleTxt;
			document.body.appendChild(oStyle);
		}
	},
	build:function(){
		var realHeight = this.config.height-(this.config.isHaveTitle?34:20);
		var baseZIndex=10001+this.info.overlay*10;
		var showZIndex=baseZIndex+2;
		this.iframeIdName='ifr_popup'+this.info.overlay;
		var path = this.config.baseUrl + this.config.imageFolder;
		var close='<img id="dialogBoxClose" src="'+
			path+'dialogBoxClose.gif" border="0" style="cursor:pointer;"  align="absmiddle" title="关闭"/>';
		var cB='filter: alpha(opacity='+this.info.coverOpacity+');opacity:'+this.info.coverOpacity/100+';';
		var cover='<div id="dialogBoxBG" style="position:absolute;top:0px;left:0px;width:100%;height:100%;z-index:'+
			baseZIndex+';'+cB+'background-color:'+this.color.cColor+';display:none;"></div>';
		var waitPanel = '<td id="waitBox" style="height:'+realHeight+
			';width:'+this.config.width+
			'px;display:none;text-align:center;"><div style="margin-top:'+(realHeight/2-10)+
			'px"><img src="'+path+
			'search_waiting.gif" align="absmiddle" />'+this.info.waitInfo+'</td>';
		var mainBox='<div id="dialogBox" style="border:2px solid '+this.color.tColor+
			';display:none;z-index:'+showZIndex+
			';position:relative;height:'+
			'auto;width:'+this.config.width+
			'px;"><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="'+this.color.bColor+
			'">';
		if(this.config.isHaveTitle){
			mainBox+='<tr><td><table style="-moz-user-select:none;height:32px;" width="100%" border="0" cellpadding="0" cellspacing="0" ><tr>'+
				'<td width="10" height="32"></td><td id="dialogBoxTitle" align="left"  style="line-height:32px;font-size:14px;font-weight:bold;border-bottom:1px solid #68BC83;">'+this.info.title+
				'&nbsp;</td>'+
				'<td id="dialogClose" width="20" style="border-bottom:1px solid #68BC83;vertical-align:middle;" align="right">'+close+
				'</td><td width="10"></td></tr></table></td></tr>'
		}else{
			if( !this.config.myClose ){
				mainBox+='<tr height="20"><td align="right" style="padding-right:5px">'+close+'</td></tr>'	
			}
		};
		mainBox+='<tr style="height:'+realHeight+
			'px" valign="top">';
		if(this.config.isHaveWaiting){
			mainBox+=waitPanel;
		}			
		mainBox+='<td id="dialogBody" style="position:relative;height:auto'+
			'"></td></tr></table></div>'+
			'<div id="dialogBoxShadow" style="display:none;z-index:'+baseZIndex+
			';"></div>';
			
		if(!this.config.isBackgroundCanClick){
			G('dialogCase').innerHTML=cover+mainBox;
			G('dialogBoxBG').style.height=document.documentElement.scrollHeight+"px";
		}else G('dialogCase').innerHTML=mainBox;

		if( !this.config.myClose ){
			Event.observe(G('dialogBoxClose'),"click",this.reset.bindAsEventListener(this),false);	
		}
		
		
		if(this.config.isSupportDraging){
			dropClass=new Dragdrop(this.config.width,this.config.height,this.info.shadowWidth,this.config.isSupportDraging,this.config.contentType);
			G("dialogBoxTitle").style.cursor="move"
		};
		this.lastBuild()
	},
	lastBuild:function(){
		var path = this.config.baseUrl + this.config.imageFolder;
		var realHeight = this.config.height-(this.config.isHaveTitle?34:20);
		var confirm='<div style="width:100%;height:100%;text-align:center;"><div id="confirmCon" style="margin:0px 20px 0 20px;padding-top:20px;font-size:14px;line-height:20px;color:#333333;"><span id="confirmConTxt" style="width:auto;text-align:left;display:inline-block;">'+
			this.info.confirmCon+
			'</span></div><div style="margin:20px 20px 30px 20px;"><input style="border:none;font-size:12px;" id="dialogOk" type="button" value="'+this.info.confirmBtnName+'"/>&nbsp;<input style="border:none;font-size:12px;" id="dialogCancel" type="button" value="'+this.info.cancelBtnName+'"/></div>'+
			this.info.bottomContent+'</div>';
		var alertM='<div style="width:100%;height:100%;text-align:center;"><div style="margin:0px 20px 0 20px;padding-top:20px;font-size:14px;line-height:20px;color:#333333;"><span id="confirmConTxt" style="width:auto;text-align:left;display:inline-block;">'+
			this.info.alertCon+
			'</span></div><div style="margin:20px 20px 30px 20px;"><input style="border:none;font-size:12px;" id="dialogYES" type="button" value="'+this.info.confirmBtnName+'"/></div></div>';
		var baseZIndex=10001+this.info.overlay*10;
		var coverIfZIndex=baseZIndex+4;
		
		if(this.config.contentType==1){
			var onloadAction = "onload='";
			onloadAction += (this.config.isHaveWaiting)?"G(\"dialogBody\").style.display = \"\";G(\"waitBox\").style.display = \"none\";":"";
			onloadAction += (this.config.isAutoSize)?"F(\""+this.iframeIdName+"\","+this.info.shadowWidth+");":"";
			onloadAction += "'";
			var openIframe="<iframe width='100%' height='"+realHeight+"px' name='"+this.iframeIdName+
				"' id='"+this.iframeIdName+
				"' src='"+this.info.contentUrl+
				"' frameborder='0' scrolling='"+this.config.scrollType+
				"' "+onloadAction+"></iframe>";
			var coverIframe="<div id='iframeBG' style='position:absolute;top:0px;left:0px;width:1px;height:1px;z-index:"+
				coverIfZIndex+
				";filter: alpha(opacity=00);opacity:0.00;background-color:#ffffff;'></div>";
			G("dialogBody").innerHTML=openIframe+coverIframe;
		}else if(this.config.contentType==2){
			G("dialogBody").innerHTML=this.info.contentHtml
			if(this.config.myClose){
				Event.observe(G(this.config.myCloseId),"click",this.reset.bindAsEventListener(this),false);	
			}
		}else if(this.config.contentType==3){
			G("dialogBody").innerHTML=confirm;
			Event.observe(G('dialogOk'),"click",this.forCallback.bindAsEventListener(this),false);
			Event.observe(G('dialogCancel'),"click",this.close.bindAsEventListener(this),false)
		}else if(this.config.contentType==4){
			G("dialogBody").innerHTML=alertM;
			if( this.info.callBack!=null ){
				Event.observe(G('dialogYES'),"click",this.forCallback.bindAsEventListener(this),false);
			}else{
				Event.observe(G('dialogYES'),"click",this.close.bindAsEventListener(this),false)
			}
		}else if(this.config.contentType==5){
			G("dialogBody").innerHTML=confirm;
			Event.observe(G('dialogOk'),"click",this.forCallback.bindAsEventListener(this),false);
			Event.observe(G('dialogCancel'),"click",this.forCallback2.bindAsEventListener(this),false)
		}
	},
	reBuild:function(){
		G('dialogBody').height=G('dialogBody').clientHeight;
		this.lastBuild()
	},
	show:function(){
		this.hiddenSome();
		this.middle();
		var self=this;
		if(this.config.isShowShadow)
			setTimeout(function(){self.shadow();},50)
	},
	forCallback:function(){
		return this.info.callBack(this.info.parameter)
	},
	forCallback2:function(){
		return this.info.callBack2(this.info.parameter)
	},
	shadow:function(){
		var oShadow=G('dialogBoxShadow');
		var oDialog=G('dialogBox');

		oShadow['style']['position']="absolute";
		oShadow['style']['background']="#000";
		oShadow['style']['display']="";
		oShadow['style']['opacity']="0.3";
		oShadow['style']['filter']="alpha(opacity=30)";
		oShadow['style']['top']=(oDialog.offsetTop+this.info.shadowWidth)+"px";
		oShadow['style']['left']=(oDialog.offsetLeft+this.info.shadowWidth)+"px";
		oShadow['style']['width']=oDialog.offsetWidth+"px";
		oShadow['style']['height']=oDialog.offsetHeight+"px";
	},
	middle:function(){
		if(!this.config.isBackgroundCanClick)
			G('dialogBoxBG').style.display='';
		var oDialog=G('dialogBox');
		oDialog['style']['position']="absolute";
		oDialog['style']['display']='';
		var sAvailWidth=document.documentElement.clientWidth;
		var sAvailHeight=document.documentElement.clientHeight;
		
		//var sAvailHeight=window.screen.availHeight;
		//var sAvailWidth=window.screen.availWidth;
		var sScrollTop=0,sScrollLeft=0;
		//alert(this.config.contentType);
		if( top==self || this.config.contentType!=1){
			sScrollTop=document.documentElement.scrollTop+document.body.scrollTop;
			sScrollLeft=document.documentElement.scrollLeft+document.body.scrollLeft;
		}else{
			sScrollTop=parent.document.documentElement.scrollTop+parent.document.body.scrollTop;
			sAvailHeight=sAvailHeight-440;
			sScrollLeft=parent.document.documentElement.scrollLeft+parent.document.body.scrollLeft;
			sAvailWidth=sAvailWidth-4;
		}
		//var sleft=(window.screen.availWidth/2)-(oDialog.offsetWidth/2);
		//var iTop=-80+(sClientHeight/2+sScrollTop)-(oDialog.offsetHeight/2);?? unknown code
		
		var sTop=Math.max((sAvailHeight-oDialog.offsetHeight)/2,0)+sScrollTop;
		var sleft=Math.max((sAvailWidth-oDialog.offsetWidth)/2,0)+sScrollLeft-this.config.pMarLeft;
		oDialog['style']['left']=sleft+"px";
		oDialog['style']['top']=sTop+"px";
	},
	reset:function(){
		if(this.config.isReloadOnClose)
			location.reload()
		this.close();
	},
	close:function(){
		G('dialogBox').style.display='none';
		if(!this.config.isBackgroundCanClick)
			G('dialogBoxBG').style.display='none';
		if(this.config.isShowShadow)
			G('dialogBoxShadow').style.display='none';
		G('dialogBody').innerHTML='';
		this.showSome();
	},
	hiddenSome:function(){
		var tag=this.info.someHiddenTag.split(",");
		if(tag.length==1&&tag[0]=="")
			tag.length=0;
		for(var i=0;i<tag.length;i++){
			this.hiddenTag(tag[i])
		};
		var ids=this.info.someHiddenEle.split(",");
		if(ids.length==1&&ids[0]=="")
			ids.length=0;
		for(var i=0;i<ids.length;i++){
			this.hiddenEle(ids[i])
		};
		var ids=this.info.someDisabledBtn.split(",");
		if(ids.length==1&&ids[0]=="")
			ids.length=0;
		for(var i=0;i<ids.length;i++){
			this.disabledBtn(ids[i])
		};
		space("begin")
	},
	disabledBtn:function(id){
		var ele=document.getElementById(id);
		if(typeof(ele)!="undefined"&&ele!=null&&ele.disabled==false){
			ele.disabled=true;
			this.someToDisabled.push(ele)
		}
	},
	hiddenTag:function(tagName){
		var ele=document.getElementsByTagName(tagName);
		if(ele!=null){
			for(var i=0;i<ele.length;i++){
				if(ele[i].style.display!="none"&&ele[i].style.visibility!='hidden'){
					ele[i].style.visibility='hidden';
					this.someToHidden.push(ele[i])
				}
			}
		}
	},
	hiddenEle:function(id){
		var ele=document.getElementById(id);
		if(typeof(ele)!="undefined"&&ele!=null){
			ele.style.visibility='hidden';
			this.someToHidden.push(ele)
		}
	},
	showSome:function(){
		for(var i=0;i<this.someToHidden.length;i++){
			this.someToHidden[i].style.visibility='visible'
		};
		for(var i=0;i<this.someToDisabled.length;i++){
			this.someToDisabled[i].disabled=false
		};
		space("end")
	},
	startWait:function(){
		if(this.config.isHaveWaiting){
			G('dialogBody').style.display = 'none';
			G('waitBox').style.display = '';
		}
	},
	finishWait:function(){
		if(this.config.isHaveWaiting){
			G('dialogBody').style.display = '';
			G('waitBox').style.display = 'none';
		}
	},
	fitSize:function(){
		if( this.config.contentType!=1 ) return;
	}
};

var Dragdrop=new Class();

Dragdrop.prototype={
	initialize:function(width,height,shadowWidth,showShadow,contentType){
		this.dragData=null;
		this.dragDataIn=null;
		this.backData=null;
		this.width=width;
		this.height=height;
		this.shadowWidth=shadowWidth;
		this.showShadow=showShadow;
		this.contentType=contentType;
		this.IsDraging=false;
		this.oObj=G('dialogBox');
		
		Event.observe(G('dialogBoxTitle'),"mousedown",this.moveStart.bindAsEventListener(this),false)
	},
	moveStart:function(event){
		this.IsDraging=true;
		if(this.contentType==1){
			G("iframeBG").style.display="";
			G("iframeBG").style.width=this.width;
			G("iframeBG").style.height=this.height
		};
		Event.observe(document,"mousemove",this.mousemove.bindAsEventListener(this),false);
		Event.observe(document,"mouseup",this.mouseup.bindAsEventListener(this),false);
		Event.observe(document,"selectstart",this.returnFalse,false);
		this.dragData={
			x:Event.pointerX(event),
			y:Event.pointerY(event)
		};
		this.backData={
			x:parseInt(this.oObj.style.left),
			y:parseInt(this.oObj.style.top)
		}
	},
	mousemove:function(event){
		if(!this.IsDraging)return;
		var iLeft=Event.pointerX(event)-this.dragData["x"]+parseInt(this.oObj.style.left);
		var iTop=Event.pointerY(event)-this.dragData["y"]+parseInt(this.oObj.style.top);
		if(this.dragData["y"]<parseInt(this.oObj.style.top))
			iTop=iTop-12;
		else if(this.dragData["y"]>parseInt(this.oObj.style.top)+25)
			iTop=iTop+12;
		this.oObj.style.left=iLeft+"px";
		this.oObj.style.top=iTop+"px";
		if(this.showShadow){
			G('dialogBoxShadow').style.left=iLeft+this.shadowWidth+"px";
			G('dialogBoxShadow').style.top=iTop+this.shadowWidth+"px"
		};
		this.dragData={
			x:Event.pointerX(event),
			y:Event.pointerY(event)
		};
		document.body.style.cursor="move"
	},
	mouseup:function(event){
		if(!this.IsDraging)return;
		if(this.contentType==1)
			G("iframeBG").style.display="none";
		document.onmousemove=null;
		document.onmouseup=null;
		
		var mousX=Event.pointerX(event)-(document.documentElement.scrollLeft||document.body.scrollLeft);
		var mousY=Event.pointerY(event)-(document.documentElement.scrollTop||document.body.scrollTop);
		
		if(mousX<1||mousY<1||mousX>document.body.clientWidth||mousY>document.body.clientHeight){
			this.oObj.style.left=this.backData["x"]+"px";
			this.oObj.style.top=this.backData["y"]+"px";
			if(this.showShadow){
				G('dialogBoxShadow').style.left=this.backData.x+this.shadowWidth+"px";
				G('dialogBoxShadow').style.top=this.backData.y+this.shadowWidth+"px";
			}
		};
		this.IsDraging=false;
		document.body.style.cursor="";
		Event.stopObserving(document,"selectstart",this.returnFalse,false)
	},
	returnFalse:function(){
		return false
	}
};