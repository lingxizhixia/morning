	
		      
      
  		function setHomePage(obj, vrl){
		   try {   
		        obj.style.behavior = 'url(#default#homepage)';   
		        obj.setHomePage(vrl);   
		    } catch (e) {   
		        if (window.netscape) {   
		            try {   
		                netscape.security.PrivilegeManager   
		                        .enablePrivilege("UniversalXPConnect");   
		            } catch (e) {   
		                alert("此操作被浏览器拒绝！\n请在浏览器地址栏输入“about:config”并回车\n然后将 [signed.applets.codebase_principal_support]的值设置为'true',双击即可。");   
		            }   
		            var prefs = Components.classes['_40mozilla.org/preferences-service;1']   
		                    .getService(Components.interfaces.nsIPrefBranch);   
		            prefs.setCharPref('browser.startup.homepage', vrl);   
		        }   
		    }
		}
		  		
		function addFavorite(){
		   if (document.all){
		      window.external.addFavorite('./','全球电动车网');
		   }else if (window.sidebar){
		      window.sidebar.addPanel('全球电动车网', './', "");
		   }
		}
		
  
  		function login_yes(userName,link){
  			var div_login = document.getElementById("loginOFF");
  			div_login.style.display = "none";
  			
  			var span = document.getElementById("logined");
  			span.style.display = "block";
  			var off = "<a href='regnew.do@action=logout'>退出</a>";
  			span.innerHTML = userName+"&nbsp;已登陆&nbsp;<a href='"+link+"'>会员中心</a>&nbsp;"+off;
  		}
  		
  		
  		function loadYZT(){
		//检测用户是否登录
			if(window.XMLHttpRequest){
				http_request = new XMLHttpRequest();
				if (http_request.overrideMimeType) {
					http_request.overrideMimeType('text/xml');
				}
			} else if (window.ActiveXObject){ 
				try {
					http_request = new ActiveXObject("Msxml2.XMLHTTP");
				} catch (e) {
					try {
						http_request = new ActiveXObject("Microsoft.XMLHTTP");
					} catch (e) {}
				}
			}
			if (!http_request){
				window.alert("can't create XMLHttpRequest object.");
				return false;
			}
			
			url='EBBQyRegAction.do@action=login';
			http_request.open("GET", url, true);
			http_request.onreadystatechange = processRequest;
			http_request.send(null);
		}
		
		function processRequest() {
			if (http_request.readyState == 4) { 
				if (http_request.status == 200) {
					var loginText =http_request.responseText;
					if(loginText != ''){
						var arr = loginText.split(":");
						var name = arr[0];
						var url = arr[1];
						login_yes(name,url);
						//alert(name+url);
					}
				} 
			}
		}
  
  		function login_yes(userName,link){
  			var div_login = document.getElementById("loginOFF");
  			div_login.style.display = "none";
  			
  			var span = document.getElementById("logined");
  			span.style.display = "block";
  			var off = "<a href='regnew.do@action=logout'>退出</a>";
  			span.innerHTML = userName+"&nbsp;已登陆&nbsp;<a href='"+link+"'>会员中心</a>&nbsp;"+off;
  		}
  		
  		