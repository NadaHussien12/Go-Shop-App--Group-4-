(self.__LOADABLE_LOADED_CHUNKS__=self.__LOADABLE_LOADED_CHUNKS__||[]).push([[96991],{762587:e=>{function t(e,t){return Object.prototype.hasOwnProperty.call(e,t)}e.exports=function(e,n,r,s){n=n||"&",r=r||"=";var i={};if("string"!=typeof e||0===e.length)return i;var a=/\+/g;e=e.split(n);var o=1e3;s&&"number"==typeof s.maxKeys&&(o=s.maxKeys);var l=e.length;o>0&&l>o&&(l=o);for(var h=0;h<l;++h){var c,u,p,d,f=e[h].replace(a,"%20"),m=f.indexOf(r);m>=0?(c=f.substr(0,m),u=f.substr(m+1)):(c=f,u=""),p=decodeURIComponent(c),d=decodeURIComponent(u),t(i,p)?Array.isArray(i[p])?i[p].push(d):i[p]=[i[p],d]:i[p]=d}return i}},712361:e=>{var t=function(e){switch(typeof e){case"string":return e;case"boolean":return e?"true":"false";case"number":return isFinite(e)?e:"";default:return""}};e.exports=function(e,n,r,s){return n=n||"&",r=r||"=",null===e&&(e=void 0),"object"==typeof e?Object.keys(e).map((function(s){var i=encodeURIComponent(t(s))+r;return Array.isArray(e[s])?e[s].map((function(e){return i+encodeURIComponent(t(e))})).join(n):i+encodeURIComponent(t(e[s]))})).join(n):s?encodeURIComponent(t(s))+r+encodeURIComponent(t(e)):""}},817673:(e,t,n)=>{t.decode=t.parse=n(762587),t.encode=t.stringify=n(712361)},52511:function(e,t,n){var r;e=n.nmd(e),function(s){t&&t.nodeType,e&&e.nodeType;var i="object"==typeof n.g&&n.g;i.global!==i&&i.window!==i&&i.self;var a,o=2147483647,l=36,h=/^xn--/,c=/[^\x20-\x7E]/,u=/[\x2E\u3002\uFF0E\uFF61]/g,p={overflow:"Overflow: input needs wider integers to process","not-basic":"Illegal input >= 0x80 (not a basic code point)","invalid-input":"Invalid input"},d=Math.floor,f=String.fromCharCode;function m(e){throw RangeError(p[e])}function _(e,t){for(var n=e.length,r=[];n--;)r[n]=t(e[n]);return r}function g(e,t){var n=e.split("@"),r="";return n.length>1&&(r=n[0]+"@",e=n[1]),r+_((e=e.replace(u,".")).split("."),t).join(".")}function v(e){for(var t,n,r=[],s=0,i=e.length;s<i;)(t=e.charCodeAt(s++))>=55296&&t<=56319&&s<i?56320==(64512&(n=e.charCodeAt(s++)))?r.push(((1023&t)<<10)+(1023&n)+65536):(r.push(t),s--):r.push(t);return r}function b(e){return _(e,(function(e){var t="";return e>65535&&(t+=f((e-=65536)>>>10&1023|55296),e=56320|1023&e),t+=f(e)})).join("")}function y(e,t){return e+22+75*(e<26)-((0!=t)<<5)}function I(e,t,n){var r=0;for(e=n?d(e/700):e>>1,e+=d(e/t);e>455;r+=l)e=d(e/35);return d(r+36*e/(e+38))}function k(e){var t,n,r,s,i,a,h,c,u,p,f,_=[],g=e.length,v=0,y=128,k=72;for((n=e.lastIndexOf("-"))<0&&(n=0),r=0;r<n;++r)e.charCodeAt(r)>=128&&m("not-basic"),_.push(e.charCodeAt(r));for(s=n>0?n+1:0;s<g;){for(i=v,a=1,h=l;s>=g&&m("invalid-input"),((c=(f=e.charCodeAt(s++))-48<10?f-22:f-65<26?f-65:f-97<26?f-97:l)>=l||c>d((o-v)/a))&&m("overflow"),v+=c*a,!(c<(u=h<=k?1:h>=k+26?26:h-k));h+=l)a>d(o/(p=l-u))&&m("overflow"),a*=p;k=I(v-i,t=_.length+1,0==i),d(v/t)>o-y&&m("overflow"),y+=d(v/t),v%=t,_.splice(v++,0,y)}return b(_)}function x(e){var t,n,r,s,i,a,h,c,u,p,_,g,b,k,x,A=[];for(g=(e=v(e)).length,t=128,n=0,i=72,a=0;a<g;++a)(_=e[a])<128&&A.push(f(_));for(r=s=A.length,s&&A.push("-");r<g;){for(h=o,a=0;a<g;++a)(_=e[a])>=t&&_<h&&(h=_);for(h-t>d((o-n)/(b=r+1))&&m("overflow"),n+=(h-t)*b,t=h,a=0;a<g;++a)if((_=e[a])<t&&++n>o&&m("overflow"),_==t){for(c=n,u=l;!(c<(p=u<=i?1:u>=i+26?26:u-i));u+=l)x=c-p,k=l-p,A.push(f(y(p+x%k,0))),c=d(x/k);A.push(f(y(c,0))),i=I(n,b,r==s),n=0,++r}++n,++t}return A.join("")}a={version:"1.3.2",ucs2:{decode:v,encode:b},decode:k,encode:x,toASCII:function(e){return g(e,(function(e){return c.test(e)?"xn--"+x(e):e}))},toUnicode:function(e){return g(e,(function(e){return h.test(e)?k(e.slice(4).toLowerCase()):e}))}},void 0===(r=function(){return a}.call(t,n,t,e))||(e.exports=r)}()},608575:(e,t,n)=>{var r=n(52511),s=n(762502);function i(){this.protocol=null,this.slashes=null,this.auth=null,this.host=null,this.port=null,this.hostname=null,this.hash=null,this.search=null,this.query=null,this.pathname=null,this.path=null,this.href=null}t.parse=b,t.resolve=function(e,t){return b(e,!1,!0).resolve(t)},t.resolveObject=function(e,t){return e?b(e,!1,!0).resolveObject(t):t},t.format=function(e){s.isString(e)&&(e=b(e));return e instanceof i?e.format():i.prototype.format.call(e)},t.Url=i;var a=/^([a-z0-9.+-]+:)/i,o=/:[0-9]*$/,l=/^(\/\/?(?!\/)[^\?\s]*)(\?[^\s]*)?$/,h=["{","}","|","\\","^","`"].concat(["<",">",'"',"`"," ","\r","\n","\t"]),c=["'"].concat(h),u=["%","/","?",";","#"].concat(c),p=["/","?","#"],d=/^[+a-z0-9A-Z_-]{0,63}$/,f=/^([+a-z0-9A-Z_-]{0,63})(.*)$/,m={javascript:!0,"javascript:":!0},_={javascript:!0,"javascript:":!0},g={http:!0,https:!0,ftp:!0,gopher:!0,file:!0,"http:":!0,"https:":!0,"ftp:":!0,"gopher:":!0,"file:":!0},v=n(817673);function b(e,t,n){if(e&&s.isObject(e)&&e instanceof i)return e;var r=new i;return r.parse(e,t,n),r}i.prototype.parse=function(e,t,n){if(!s.isString(e))throw new TypeError("Parameter 'url' must be a string, not "+typeof e);var i=e.indexOf("?"),o=-1!==i&&i<e.indexOf("#")?"?":"#",h=e.split(o);h[0]=h[0].replace(/\\/g,"/");var b=e=h.join(o);if(b=b.trim(),!n&&1===e.split("#").length){var y=l.exec(b);if(y)return this.path=b,this.href=b,this.pathname=y[1],y[2]?(this.search=y[2],this.query=t?v.parse(this.search.substr(1)):this.search.substr(1)):t&&(this.search="",this.query={}),this}var I=a.exec(b);if(I){var k=(I=I[0]).toLowerCase();this.protocol=k,b=b.substr(I.length)}if(n||I||b.match(/^\/\/[^@\/]+@[^@\/]+/)){var x="//"===b.substr(0,2);!x||I&&_[I]||(b=b.substr(2),this.slashes=!0)}if(!_[I]&&(x||I&&!g[I])){for(var A,w,O=-1,S=0;S<p.length;S++){-1!==(C=b.indexOf(p[S]))&&(-1===O||C<O)&&(O=C)}-1!==(w=-1===O?b.lastIndexOf("@"):b.lastIndexOf("@",O))&&(A=b.slice(0,w),b=b.slice(w+1),this.auth=decodeURIComponent(A)),O=-1;for(S=0;S<u.length;S++){var C;-1!==(C=b.indexOf(u[S]))&&(-1===O||C<O)&&(O=C)}-1===O&&(O=b.length),this.host=b.slice(0,O),b=b.slice(O),this.parseHost(),this.hostname=this.hostname||"";var T="["===this.hostname[0]&&"]"===this.hostname[this.hostname.length-1];if(!T)for(var j=this.hostname.split(/\./),P=(S=0,j.length);S<P;S++){var N=j[S];if(N&&!N.match(d)){for(var U="",D=0,R=N.length;D<R;D++)N.charCodeAt(D)>127?U+="x":U+=N[D];if(!U.match(d)){var Z=j.slice(0,S),E=j.slice(S+1),q=N.match(f);q&&(Z.push(q[1]),E.unshift(q[2])),E.length&&(b="/"+E.join(".")+b),this.hostname=Z.join(".");break}}}this.hostname.length>255?this.hostname="":this.hostname=this.hostname.toLowerCase(),T||(this.hostname=r.toASCII(this.hostname));var M=this.port?":"+this.port:"",G=this.hostname||"";this.host=G+M,this.href+=this.host,T&&(this.hostname=this.hostname.substr(1,this.hostname.length-2),"/"!==b[0]&&(b="/"+b))}if(!m[k])for(S=0,P=c.length;S<P;S++){var L=c[S];if(-1!==b.indexOf(L)){var F=encodeURIComponent(L);F===L&&(F=escape(L)),b=b.split(L).join(F)}}var z=b.indexOf("#");-1!==z&&(this.hash=b.substr(z),b=b.slice(0,z));var B=b.indexOf("?");if(-1!==B?(this.search=b.substr(B),this.query=b.substr(B+1),t&&(this.query=v.parse(this.query)),b=b.slice(0,B)):t&&(this.search="",this.query={}),b&&(this.pathname=b),g[k]&&this.hostname&&!this.pathname&&(this.pathname="/"),this.pathname||this.search){M=this.pathname||"";var W=this.search||"";this.path=M+W}return this.href=this.format(),this},i.prototype.format=function(){var e=this.auth||"";e&&(e=(e=encodeURIComponent(e)).replace(/%3A/i,":"),e+="@");var t=this.protocol||"",n=this.pathname||"",r=this.hash||"",i=!1,a="";this.host?i=e+this.host:this.hostname&&(i=e+(-1===this.hostname.indexOf(":")?this.hostname:"["+this.hostname+"]"),this.port&&(i+=":"+this.port)),this.query&&s.isObject(this.query)&&Object.keys(this.query).length&&(a=v.stringify(this.query));var o=this.search||a&&"?"+a||"";return t&&":"!==t.substr(-1)&&(t+=":"),this.slashes||(!t||g[t])&&!1!==i?(i="//"+(i||""),n&&"/"!==n.charAt(0)&&(n="/"+n)):i||(i=""),r&&"#"!==r.charAt(0)&&(r="#"+r),o&&"?"!==o.charAt(0)&&(o="?"+o),t+i+(n=n.replace(/[?#]/g,(function(e){return encodeURIComponent(e)})))+(o=o.replace("#","%23"))+r},i.prototype.resolve=function(e){return this.resolveObject(b(e,!1,!0)).format()},i.prototype.resolveObject=function(e){if(s.isString(e)){var t=new i;t.parse(e,!1,!0),e=t}for(var n=new i,r=Object.keys(this),a=0;a<r.length;a++){var o=r[a];n[o]=this[o]}if(n.hash=e.hash,""===e.href)return n.href=n.format(),n;if(e.slashes&&!e.protocol){for(var l=Object.keys(e),h=0;h<l.length;h++){var c=l[h];"protocol"!==c&&(n[c]=e[c])}return g[n.protocol]&&n.hostname&&!n.pathname&&(n.path=n.pathname="/"),n.href=n.format(),n}if(e.protocol&&e.protocol!==n.protocol){if(!g[e.protocol]){for(var u=Object.keys(e),p=0;p<u.length;p++){var d=u[p];n[d]=e[d]}return n.href=n.format(),n}if(n.protocol=e.protocol,e.host||_[e.protocol])n.pathname=e.pathname;else{for(var f=(e.pathname||"").split("/");f.length&&!(e.host=f.shift()););e.host||(e.host=""),e.hostname||(e.hostname=""),""!==f[0]&&f.unshift(""),f.length<2&&f.unshift(""),n.pathname=f.join("/")}if(n.search=e.search,n.query=e.query,n.host=e.host||"",n.auth=e.auth,n.hostname=e.hostname||e.host,n.port=e.port,n.pathname||n.search){var m=n.pathname||"",v=n.search||"";n.path=m+v}return n.slashes=n.slashes||e.slashes,n.href=n.format(),n}var b=n.pathname&&"/"===n.pathname.charAt(0),y=e.host||e.pathname&&"/"===e.pathname.charAt(0),I=y||b||n.host&&e.pathname,k=I,x=n.pathname&&n.pathname.split("/")||[],A=(f=e.pathname&&e.pathname.split("/")||[],n.protocol&&!g[n.protocol]);if(A&&(n.hostname="",n.port=null,n.host&&(""===x[0]?x[0]=n.host:x.unshift(n.host)),n.host="",e.protocol&&(e.hostname=null,e.port=null,e.host&&(""===f[0]?f[0]=e.host:f.unshift(e.host)),e.host=null),I=I&&(""===f[0]||""===x[0])),y)n.host=e.host||""===e.host?e.host:n.host,n.hostname=e.hostname||""===e.hostname?e.hostname:n.hostname,n.search=e.search,n.query=e.query,x=f;else if(f.length)x||(x=[]),x.pop(),x=x.concat(f),n.search=e.search,n.query=e.query;else if(!s.isNullOrUndefined(e.search)){if(A)n.hostname=n.host=x.shift(),(T=!!(n.host&&n.host.indexOf("@")>0)&&n.host.split("@"))&&(n.auth=T.shift(),n.host=n.hostname=T.shift());return n.search=e.search,n.query=e.query,s.isNull(n.pathname)&&s.isNull(n.search)||(n.path=(n.pathname?n.pathname:"")+(n.search?n.search:"")),n.href=n.format(),n}if(!x.length)return n.pathname=null,n.search?n.path="/"+n.search:n.path=null,n.href=n.format(),n;for(var w=x.slice(-1)[0],O=(n.host||e.host||x.length>1)&&("."===w||".."===w)||""===w,S=0,C=x.length;C>=0;C--)"."===(w=x[C])?x.splice(C,1):".."===w?(x.splice(C,1),S++):S&&(x.splice(C,1),S--);if(!I&&!k)for(;S--;S)x.unshift("..");!I||""===x[0]||x[0]&&"/"===x[0].charAt(0)||x.unshift(""),O&&"/"!==x.join("/").substr(-1)&&x.push("");var T,j=""===x[0]||x[0]&&"/"===x[0].charAt(0);A&&(n.hostname=n.host=j?"":x.length?x.shift():"",(T=!!(n.host&&n.host.indexOf("@")>0)&&n.host.split("@"))&&(n.auth=T.shift(),n.host=n.hostname=T.shift()));return(I=I||n.host&&x.length)&&!j&&x.unshift(""),x.length?n.pathname=x.join("/"):(n.pathname=null,n.path=null),s.isNull(n.pathname)&&s.isNull(n.search)||(n.path=(n.pathname?n.pathname:"")+(n.search?n.search:"")),n.auth=e.auth||n.auth,n.slashes=n.slashes||e.slashes,n.href=n.format(),n},i.prototype.parseHost=function(){var e=this.host,t=o.exec(e);t&&(":"!==(t=t[0])&&(this.port=t.substr(1)),e=e.substr(0,e.length-t.length)),e&&(this.hostname=e)}},762502:e=>{e.exports={isString:function(e){return"string"==typeof e},isObject:function(e){return"object"==typeof e&&null!==e},isNull:function(e){return null===e},isNullOrUndefined:function(e){return null==e}}},397066:(e,t,n)=>{n.d(t,{b:()=>c,h:()=>u});var r=n(983722),s=n(768559),i=n(43760),a=n(966113),o=n(619937),l=n(48714),h=n(366284);const c=({href:e,pinId:t,pin:n,location:i,auxData:c},u)=>{if(n&&n.is_promoted){var p,d;const y=(0,s.Z)(n,i),I=(0,l.nS)({url:e,pinId:t,csrId:null,clientTrackingParams:y,auxData:c}),k=(0,r.Z)();if((0,h.G6)(null!==(p=null==k?void 0:k.userAgent.browserName)&&void 0!==p?p:"")){var f,m;const{group:r}=null!==(f=null==k?void 0:k.experimentsClient.checkExperiment("m10n_event_conversion_measurement"))&&void 0!==f?f:{};let s=null!=k&&null!==(m=k.userAgent)&&void 0!==m&&m.browserVersion?k.userAgent.browserVersion:"0.0";if(s=parseFloat(s.split(".")[0]+"."+s.split(".")[1]),void 0!==n.campaign_id&&s>=14.1&&["enabled_safari"].includes(r)){var _;const r=n.attribution_source_id?((e,t,n)=>{const r=document.createElement("a");return r.setAttribute("href",t),r.setAttribute("target","_blank"),r.setAttribute("rel","noopener nofollow noreferrer"),r.style.cursor="pointer",r.style.display="block",r.setAttribute(o.$N.ATTRIBUTION_SOURCE_ID,e),r.setAttribute(o.$N.ATTRIBUTE_DESTINATION,n),r.setAttribute(o.$N.ATTRIBUTE_ON,n),r.click(),e})(n.attribution_source_id,I,e):((e,t,n)=>{const r=document.createElement("a");r.setAttribute("href",t),r.setAttribute("target","_blank"),r.setAttribute("rel","noopener nofollow noreferrer"),r.style.cursor="pointer",r.style.display="block";const s=""+(e%32*8+Math.floor(((new Date).getTime()-16409952e5)/864e5)%8);return r.setAttribute(o.$N.ATTRIBUTION_SOURCE_ID,s),r.setAttribute(o.$N.ATTRIBUTE_DESTINATION,n),r.setAttribute(o.$N.ATTRIBUTE_ON,n),r.click(),s})(null!==(_=n.pin_promotion_id)&&void 0!==_?_:0,I,e);return u({event_type:101,clientTrackingParams:y,object_id_str:t||"",aux_data:{pin_id:t||"",click_measurement_ppid:n.pin_promotion_id||"",click_measurement_campaign_id:n.campaign_id||"",is_pcm:!0,attribution_source_id:r,page_url:e}}),!0}}else if((0,h.i7)(null!==(d=null==k?void 0:k.userAgent.browserName)&&void 0!==d?d:"")){var g,v;const{group:r}=null!==(g=null==k?void 0:k.experimentsClient.checkExperiment("m10n_event_conversion_measurement_chrome"))&&void 0!==g?g:{},s=null!=k&&null!==(v=k.userAgent)&&void 0!==v&&v.browserVersion?parseInt(k.userAgent.browserVersion.split(".")[0],10):0;if(void 0!==n.attribution_source_id&&s>=101&&["enabled"].includes(r)){var b;const r=((e,t,n)=>{const r=new URL(`${a.Z.settings.CANONICAL_MAIN_URL}/attribution_source/`);r.searchParams.set(o.NR.ATTRIBUTION_SOURCE_EVENT_ID,e),r.searchParams.set(o.NR.ATTRIBUTION_DESTINATION,n),r.searchParams.set(o.NR.ATTRIBUTION_EXPIRY,""+o.uV);const s=document.createElement("a");return s.setAttribute("href",t),s.setAttribute("target","_blank"),s.setAttribute("rel","noopener nofollow noreferrer"),s.style.cursor="pointer",s.style.display="block",s.setAttribute(o.NR.ATTRIBUTION_SOURCE,r.toString()),s.click(),e})(null!==(b=n.attribution_source_id)&&void 0!==b?b:"0",I,e);return u({event_type:101,clientTrackingParams:y,object_id_str:t||"",aux_data:{pin_id:t||"",click_measurement_ppid:n.pin_promotion_id||"",click_measurement_campaign_id:n.campaign_id||"",is_arapi:!0,attribution_source_id:r,page_url:e}}),!0}}}return!1},u=({href:e,pinId:t,pin:n,location:r,auxData:a},o)=>{if("undefined"!=typeof window&&window.Windows)(0,i.Z)({url:e,pinId:t,pin:n,location:r,auxData:a});else{if(c({href:e,pinId:t,pin:n,location:r,auxData:a},o))return;(0,l.Gj)({url:e,pinId:t,csrId:null,clientTrackingParams:(0,s.Z)(n,r),auxData:a})}}},48714:(e,t,n)=>{n.d(t,{nS:()=>I,iw:()=>x,gV:()=>b,G3:()=>A,lI:()=>w,Gj:()=>k,Jd:()=>v,$3:()=>y});var r=n(231486),s=n(56641),i=n(768559),a=n(250059);const o=e=>"string"!=typeof e&&e?e.state:null;var l=n(643913),h=n(547239),c=n(508847),u=n(102500),p=n(43760),d=n(579164),f=n(307640),m=n(397066),_=n(623568),g=n(226198);const v=()=>{window&&window.focus(),document.activeElement&&document.activeElement.blur()},b=({isOffsiteUrl:e,event:t})=>!e&&(t.metaKey||t.ctrlKey),y=({location:e,pin:t,surface:n})=>!(0,_.jL)(t)&&(({location:e,pinId:t,surface:n})=>{const r=Boolean(n),s=f.ZF.includes(n),i=e.pathname.includes(t);return r&&!s||i})({location:e,pinId:t.id,surface:n}),I=e=>{const t=Math.round(1e3*Math.random())+"",n=Math.round(1e3*Math.random())+"";r.t8((0,g.GS)(t),n);const s=`${t}-${n}`,{queryParams:i,url:a}=e;let o={token:s,url:a};if(!i){const{pinId:t,csrId:n,clientTrackingParams:r,auxData:s}=e;o={...o,pin:null!=t?t:void 0,csr:n&&!t?n:void 0,client_tracking_params:r,aux_data:s?JSON.stringify(s):void 0}}i&&(o={...o,...i});return`/offsite/?${(0,l.Z)(o)}`},k=e=>{(0,s.Z)(I(e),!0)},x=async({isMounted:e,pin:t,location:n,spamCheckCallback:r,href:s})=>{const a=await(0,u.Z)({check_only:!0,client_tracking_params:(0,i.Z)(t,n),pin_id:null==t?void 0:t.id,url:s}).callGet({showError:!1});if(!a.resource_response.error&&e){const e=a.resource_response.data||{},{message:t,redirect_status:n,url:s}=e;r({blocked:["blocked","suspicious","porn"].includes(n),message:t,redirectStatus:n,sanitized_url:s})}},A=({event:e,onHistoryChange:t,href:n,history:r,target:i})=>{const l=(0,a.Z)(n),u=o(n),p=(0,h.Z)(l);p===d.Z.TRUSTED_DIFFERENT_ORIGIN||"blank"===i?(0,s.Z)(l,"blank"===i):r&&p===d.Z.SAME_ORIGIN&&(r.push((0,c.Z)({url:l}),null!=u?u:{}),t&&t({event:e}))},w=({href:e,pinId:t,pin:n,location:r,auxData:s,spamCheck:a,queryParams:o},l,h)=>{"undefined"!=typeof window&&window.Windows?(0,p.Z)({url:e,pinId:t,pin:n,location:r,auxData:s}):n?(({spamCheck:e,auxData:t,location:n,pin:r,pinId:s,href:a},o,l)=>{if(null!=e&&e.blocked)null==l||l(e);else{if((0,m.b)({href:a,pinId:s,pin:r,location:n,auxData:t},o))return;k({url:a,pinId:s,csrId:null,clientTrackingParams:(0,i.Z)(r,n),auxData:t})}})({spamCheck:a,auxData:s,location:r,pin:n,pinId:t,href:e},l,h):k({url:e,pinId:t,queryParams:o})}},102500:(e,t,n)=>{n.d(t,{Z:()=>s});var r=n(6637);function s(e){return r.Z.create("ApiResource",{url:"/v3/offsite/",data:e})}},287072:(e,t,n)=>{n.d(t,{Z:()=>c,p:()=>u});var r=n(667294),s=n(250059),i=n(149230),a=n(407043),o=n(643074),l=n(48714),h=n(276775);function c(e){var t;const{externalData:n,href:c,onHistoryChange:u,target:p}=e,{logContextEvent:d}=(0,a.v)(),[f,m]=(0,r.useState)(null),[_,g]=(0,r.useState)(!1),v=(0,h.k6)(),b=(0,h.TH)(),y=(0,i.Z)({url:(0,s.Z)(c)}),{showWarning:I}=null!==(t=(0,o.s)())&&void 0!==t?t:{};return(0,r.useEffect)((()=>(g(!0),()=>{g(!1)})),[]),(0,r.useEffect)((()=>{y&&null!=n&&n.pin&&null===f&&_&&(0,l.$3)({location:b,pin:n.pin,surface:n.surface})&&(0,l.iw)({isMounted:_,pin:n.pin,location:b,spamCheckCallback:e=>m(e),href:(0,s.Z)(c)})}),[null==n?void 0:n.pin,null==n?void 0:n.surface,c,y,_,b,f]),({event:e})=>{var t;(0,l.gV)({isOffsiteUrl:y,event:e})||(e.preventDefault(),c&&(y||null!=n&&n.dangerouslyForceOffsiteUrl?(0,l.lI)({auxData:null==n?void 0:n.auxData,href:(0,s.Z)(c),pinId:null==n||null===(t=n.pin)||void 0===t?void 0:t.id,pin:null==n?void 0:n.pin,queryParams:null==n?void 0:n.queryParams,location:b,spamCheck:f},d,I):(0,l.G3)({event:e,href:c,history:v,onHistoryChange:u,target:"blank"===p?"blank":null})))}}const u=({children:e,...t})=>e({handleClick:c(t)})},250059:(e,t,n)=>{n.d(t,{Z:()=>r});const r=e=>e?"string"==typeof e?e:e.pathname?e.pathname:"":""},508847:(e,t,n)=>{n.d(t,{Z:()=>i});var r=n(567831);const s=(e,t)=>0===e.lastIndexOf(t,0),i=({url:e})=>{const t=(0,r.Z)("/");return s(e,t)?e.substr(t.length-1):e}},43760:(e,t,n)=>{n.d(t,{Z:()=>a});var r=n(768559),s=n(102500),i=n(48714);function a({url:e,pinId:t,pin:n,location:a,auxData:o}){const l={check_only:!0,client_tracking_params:n?(0,r.Z)(n,a):void 0,pin_id:n?n.id:t,url:e,aux_data:JSON.stringify(o)};(0,s.Z)(l).callGet().then((s=>{if(s&&s.resource_response&&!s.resource_response.error){const{resource_response:e}=s,{redirect_status:t,url:n}=e.data;if(!["blocked","suspicious","porn"].includes(t)){if(window.Windows.Foundation&&window.Windows.System&&window.Windows.System.Launcher&&window.Windows.System.Launcher.launchUriAsync){const e=new window.Windows.Foundation.Uri(n);window.Windows.System.Launcher.launchUriAsync(e)}return}}if(n){const s=(0,r.Z)(n,a);(0,i.Gj)({url:e,pinId:t,csrId:null,clientTrackingParams:s,auxData:o})}else(0,i.Gj)({url:e,pinId:t})}))}},307640:(e,t,n)=>{n.d(t,{UP:()=>o,Wv:()=>s,ZF:()=>r,zI:()=>i,zl:()=>a});const r=["AuthHomefeed","CloseupRelatedProducts","FollowingFeedGrid","RelatedPinGrid","RelatedProductsFeed","SearchItem"],s=["ArticleProductsStory","CloseupRelatedProducts","ProductPinsFeed","RelatedProductsFeed","ShoppingPackageItem","RelatedProductsFeed","UserProfilePinGrid","ShoppingGridShippedMetadataWithVisitButton"],i=[...s,"ShoppingGridShippedMetadata","ShoppingSquareGridDomain","ShoppingSquareGridDomainNoMetadata","ProductPinsFeed","ShoppingCatalogsProductsMetadata","ShoppingDynamicHeightGrid"],a=["ShoppingSquareGridDomain","ShoppingGridShippedMetadata","ShoppingSquareGridStorefront","ShoppingSquareGridStorefrontDomain","ShoppingGridShippedMetadataWithVisitButton"],o=["BaseBoardPinGrid"]},643074:(e,t,n)=>{n.d(t,{Z:()=>g,s:()=>_});var r=n(667294),s=n(121151),i=n(966113),a=n(608575),o=n(898781),l=n(349700),h=n(883119),c=n(785893);const u=()=>{var e;const t=(0,o.ZP)(),{dismissWarning:n}=null!==(e=_())&&void 0!==e?e:{};return(0,c.jsx)(h.xu,{paddingX:3,children:(0,c.jsx)(h.zx,{fullWidth:!0,color:"red",onClick:n,text:t._('Okay', 'Dismiss a modal stating that clicking through to a link has been blocked', 'Dismiss a modal stating that clicking through to a link has been blocked')})})},p=()=>{const e=(0,o.ZP)();return(0,c.jsx)(h.xv,{inline:!0,weight:"bold",children:(0,c.jsx)(h.rU,{target:"blank",href:i.Z.settings.POLICY_COMMUNITY_GUIDELINES_SPAM_AND_QUALITY,inline:!0,underline:"hover",children:e._('Learn more', 'Link text leading to policy website', 'Link text leading to policy website')})})},d=({message:e,sanitized_url:t})=>{var n;const r=(0,o.ZP)(),{dismissWarning:i}=null!==(n=_())&&void 0!==n?n:{};return(0,c.jsx)(s.ZP,{accessibilityModalLabel:r._('We have blocked this link', 'Modal label when clicking a spammy link', 'Modal label when clicking a spammy link'),onDismiss:i,heading:r._('Heads up!', 'Modal heading when clicking through to a link has been blocked', 'Modal heading when clicking through to a link has been blocked'),footer:(0,c.jsx)(u,{}),children:(0,c.jsxs)(h.xu,{padding:6,children:[(0,c.jsx)(h.xv,{children:(0,l.nk)("{{ message }} {{ learnMore }}",{message:e,learnMore:(0,c.jsx)(p,{},"learnMoreLink")})}),(0,c.jsxs)(h.xu,{alignItems:"center",display:"flex",marginTop:4,children:[(0,c.jsx)(h.xu,{marginEnd:3,children:(0,c.jsx)(h.JO,{accessibilityLabel:r._('Blocked link address', 'Icon label preceding a block url', 'Icon label preceding a block url'),color:"error",icon:"report",inline:!0,size:24})}),(0,c.jsx)(h.xv,{inline:!0,lineClamp:1,weight:"bold",children:a.parse(t).hostname})]})]})})};var f=n(425288);const{Provider:m,useMaybeHook:_}=(0,f.Z)("SpammyClickthrough");function g({children:e}){const[t,n]=(0,r.useState)(null),s=(0,r.useCallback)((()=>{n(null)}),[n]),i=(0,r.useCallback)((e=>{n(e)}),[n]),a=(0,r.useMemo)((()=>({dismissWarning:s,showWarning:i})),[s,i]);return(0,c.jsxs)(m,{value:a,children:[t&&(0,c.jsx)(d,{...t}),e]})}}}]);
//# sourceMappingURL=https://sm.pinimg.com/webapp/96991-6a9cf3da5944ff0a.mjs.map