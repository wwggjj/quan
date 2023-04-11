[general]
# 资源解析器
resource_parser_url= https://fastly.jsdelivr.net/gh/KOP-XIAO/QuantumultX@master/Scripts/resource-parser.js
# 节点延迟测试
server_check_url= http://www.gstatic.com/generate_204
server_check_timeout = 2000
# 节点信息展示
geo_location_checker=http://ip-api.com/json/?lang=zh-CN, https://raw.githubusercontent.com/KOP-XIAO/QuantumultX/master/Scripts/IP_API.js
# UDP
udp_whitelist=1-442, 444-65535
#重写
# Youtube 无中文字幕机翻方案
hostname= www.youtube.com

// 简体；订阅链接后面加上 #out=Hant 后开启资源解析器
// https://raw.githubusercontent.com/id77/QuantumultX/master/rewrite/Youtube_CC.conf#out=Hant

https:\/\/www.youtube.com\/api\/timedtext\?.+&lang=(?!(zh|zh\-Hans)&)((?!&tlang=zh\-Hans).)*$ url request-header \sHTTP/1\.1(\r\n) request-header &tlang=zh-Hans HTTP/1.1$1


// 繁体；订阅链接后面加上 #out=Hans 后开启资源解析器
// https://raw.githubusercontent.com/id77/QuantumultX/master/rewrite/Youtube_CC.conf#out=Hans

https:\/\/www.youtube.com\/api\/timedtext\?.+&lang=(?!zh\-Hant&)((?!&tlang=zh\-Hant).)*$ url request-header \sHTTP/1\.1(\r\n) request-header &tlang=zh-Hant HTTP/1.1$1

# Youtube Block AD
hostname = -redirector*.googlevideo.com,*.googlevideo.com,www.youtube.com,s.youtube.com,youtubei.googleapis.com

# 视频广告请求
(^https?:\/\/[\w-]+\.googlevideo\.com\/(?!dclk_video_ads).+?)&ctier=L(&.+?),ctier,(.+) url 302 $1$2$3
^https?:\/\/[\w-]+\.googlevideo\.com\/(?!(dclk_video_ads|videoplayback\?)).+&oad url reject-200

# 视频PIP|后台播放|瀑布流|搜索页|播放页|短视频|贴片广告
^https?:\/\/youtubei\.googleapis\.com\/youtubei\/v1\/(browse|next|player|search|reel\/reel_watch_sequence|guide|account\/get_setting) url script-response-body https://raw.githubusercontent.com/Maasea/sgmodule/master/Script/Youtube/youtube.js

# 通用广告请求
^https?:\/\/(www|s)\.youtube\.com\/api\/stats\/ads url reject-200
^https?:\/\/(www|s)\.youtube\.com\/(pagead|ptracking) url reject-200
^https?:\/\/s\.youtube\.com\/api\/stats\/qoe\?adcontext url reject-200
#规则
# China Area Network
DOMAIN-SUFFIX,flyert.com,DIRECT
DOMAIN-SUFFIX,gandi.net,DIRECT
DOMAIN-SUFFIX,snapdrop.net,DIRECT
DOMAIN,download.jetbrains.com,DIRECT
DOMAIN,origin-a.akamaihd.ne,DIRECT
# Tencent
IP-CIDR,182.254.116.0/24,DIRECT
IP-CIDR,203.205.238.0/23,DIRECT
IP-CIDR,203.205.254.0/23,DIRECT


host-suffix, v2ex.com, proxy
#AppStore
host,itunes.com,direct
HOST,apps.apple.com,DIRECT
HOST,itunes.apple.com,DIRECT
# YouTube
user-agent, com.google.ios.youtube*, Youtube
user-agent, YouTube*, Youtube
host-suffix, googlevideo.com, Youtube
host-suffix, withyoutube.com, Youtube
host-suffix, youtu.be, Youtube
host-suffix, youtube.com, Youtube
host-suffix, youtubeeducation.com, Youtube
host-suffix, youtubegaming.com, Youtube
host-suffix, youtubekids.com, Youtube
host-suffix, youtube-nocookie.com, Youtube
host-suffix, yt.be, Youtube
host-suffix, ytimg.com, Youtube
host, youtubei.googleapis.com, Youtube
host, yt3.ggpht.com, Youtube
#Twitter
host-suffix, ads-twitter.com, proxy
host-suffix, periscope.tv, proxy
host-suffix, pscp.tv, proxy
host-suffix, t.co, proxy
host-suffix, tellapart.com, proxy
host-suffix, tweetdeck.com, proxy
host-suffix, twimg.co, proxy
host-suffix, twimg.com, proxy
host-suffix, twimg.org, proxy
host-suffix, twitpic.com, proxy
host-suffix, twitter.com, proxy
host-suffix, twitter.jp, proxy
host-suffix, twitterinc.com, proxy
host-suffix, twitteroauth.com, proxy
host-suffix, twitterstat.us, proxy
host-suffix, twtrdns.net, proxy
host-suffix, twttr.com, proxy
host-suffix, vine.co, proxy
host-keyword, twitter, proxy
ip-cidr, 104.244.42.0/21, proxy
ip-cidr, 192.133.76.0/22, proxy
ip-cidr, 199.16.156.0/22, proxy
ip-cidr, 199.59.148.0/22, proxy
ip-cidr, 199.96.56.0/21, proxy
ip-cidr, 202.160.128.0/22, proxy
ip-cidr, 209.237.192.0/19, proxy
ip-cidr, 69.195.160.0/19, proxy
#亚洲电台
host-suffix, rfa.org, proxy
# WeChat
host,mp.weixin.qq.com,DIRECT
host,szextshort.weixin.qq.com,DIRECT
host,szminorshort.weixin.qq.com,DIRECT
host,szshort.weixin.qq.com,direct
HOST,dl.wechat.com,DIRECT
HOST,sgfindershort.wechat.com,DIRECT
HOST,sgilinkshort.wechat.com,DIRECT
HOST,sglong.wechat.com,DIRECT
HOST,sgminorshort.wechat.com,DIRECT
HOST,sgshort.wechat.com,DIRECT
HOST,tencentmap.wechat.com,DIRECT
HOST-SUFFIX,qlogo.cn,DIRECT
HOST-SUFFIX,qpic.cn,DIRECT
HOST-SUFFIX,servicewechat.com,DIRECT
HOST-SUFFIX,tenpay.com,DIRECT
HOST-SUFFIX,wechat.com,DIRECT
HOST-SUFFIX,wechatlegal.net,DIRECT
HOST-SUFFIX,wechatpay.com,DIRECT
HOST-SUFFIX,weixin.com,DIRECT
HOST-SUFFIX,weixin.qq.com,DIRECT
HOST-SUFFIX,weixinbridge.com,DIRECT
HOST-SUFFIX,weixinsxy.com,DIRECT
HOST-SUFFIX,wxapp.tc.qq.com,DIRECT
host-keyword, 43.156.222., direct
USER-AGENT,MicroMessenger*,DIRECT
USER-AGENT,WeChat*,DIRECT
IP-CIDR,101.32.104.4/32,DIRECT
IP-CIDR,101.32.104.41/32,DIRECT
IP-CIDR,101.32.104.56/32,DIRECT
IP-CIDR,101.32.118.25/32,DIRECT
IP-CIDR,101.32.133.16/32,DIRECT
IP-CIDR,101.32.133.209/32,DIRECT
IP-CIDR,101.32.133.53/32,DIRECT
IP-CIDR,129.226.107.244/32,DIRECT
IP-CIDR,129.226.3.47/32,DIRECT
ip-cidr,43.156.222.165/32,direct
ip-cidr,43.156.222.154/32,direct
ip-cidr,162.62.163.63/32,direct
ip-cidr,129.226.107.59/32,direct
ip-cidr,203.205.254.125/32,direct
# Apple
DOMAIN-SUFFIX,aaplimg.com,DIRECT
DOMAIN-SUFFIX,apple.co,DIRECT
DOMAIN-SUFFIX,apple.com,DIRECT
DOMAIN-SUFFIX,apple.com.cn,DIRECT
DOMAIN-SUFFIX,apple-cloudkit.com,DIRECT
DOMAIN-SUFFIX,apple-livephotoskit.com,DIRECT
DOMAIN-SUFFIX,apple-mapkit.com,DIRECT
DOMAIN-SUFFIX,applemusic.com,DIRECT
DOMAIN-SUFFIX,appstore.com,DIRECT
DOMAIN-SUFFIX,apzones.com,DIRECT
DOMAIN-SUFFIX,cdn-apple.com,DIRECT
DOMAIN-SUFFIX,icloud.com,DIRECT
DOMAIN-SUFFIX,icloud.com.cn,DIRECT
DOMAIN-SUFFIX,icloud-content.com,DIRECT
DOMAIN-SUFFIX,me.com,DIRECT
DOMAIN-SUFFIX,mzstatic.com,DIRECT
DOMAIN-KEYWORD,apple.com.akadns.net,DIRECT
DOMAIN-KEYWORD,apple.com.edgekey.net,DIRECT
DOMAIN-KEYWORD,apple-support.akadns.net,DIRECT
DOMAIN-KEYWORD,icloud.com.akadns.net,DIRECT
# Baidu/iqiyi
DOMAIN-SUFFIX,baidu.com,DIRECT
DOMAIN-SUFFIX,baidubcr.com,DIRECT
DOMAIN-SUFFIX,bdstatic.com,DIRECT
DOMAIN-SUFFIX,yunjiasu-cdn.net,DIRECT
# Alibaba
DOMAIN-SUFFIX,taobao.com,DIRECT
DOMAIN-SUFFIX,alicdn.com,DIRECT
# Accelerate most visited sites
DOMAIN,blzddist1-a.akamaihd.net,DIRECT
DOMAIN,cdn.angruo.com,DIRECT
DOMAIN,download.jetbrains.com,DIRECT
DOMAIN,file-igamecj.akamaized.net,DIRECT
DOMAIN,images-cn.ssl-images-amazon.com,DIRECT
DOMAIN,officecdn-microsoft-com.akamaized.net,DIRECT
DOMAIN,speedtest.macpaw.com,DIRECT
DOMAIN-SUFFIX,126.net,DIRECT
DOMAIN-SUFFIX,127.net,DIRECT
DOMAIN-SUFFIX,163.com,DIRECT
DOMAIN-SUFFIX,163yun.com,DIRECT
DOMAIN-SUFFIX,21cn.com,DIRECT
DOMAIN-SUFFIX,343480.com,DIRECT
DOMAIN-SUFFIX,360buyimg.com,DIRECT
DOMAIN-SUFFIX,360in.com,DIRECT
DOMAIN-SUFFIX,51ym.me,DIRECT
DOMAIN-SUFFIX,71.am.com,DIRECT
DOMAIN-SUFFIX,8686c.com,DIRECT
DOMAIN-SUFFIX,abchina.com,DIRECT
DOMAIN-SUFFIX,accuweather.com,DIRECT
DOMAIN-SUFFIX,acgvideo.com,DIRECT
DOMAIN-SUFFIX,acm.org,DIRECT
DOMAIN-SUFFIX,acs.org,DIRECT
DOMAIN-SUFFIX,aicoinstorge.com,DIRECT
DOMAIN-SUFFIX,aip.org,DIRECT
DOMAIN-SUFFIX,air-matters.com,DIRECT
DOMAIN-SUFFIX,air-matters.io,DIRECT
DOMAIN-SUFFIX,aixifan.com,DIRECT
DOMAIN-SUFFIX,akadns.net,DIRECT
DOMAIN-SUFFIX,alibaba.com,DIRECT
DOMAIN-SUFFIX,alikunlun.com,DIRECT
DOMAIN-SUFFIX,alipay.com,DIRECT
DOMAIN-SUFFIX,amap.com,DIRECT
DOMAIN-SUFFIX,amd.com,DIRECT
DOMAIN-SUFFIX,ams.org,DIRECT
DOMAIN-SUFFIX,animebytes.tv,DIRECT
DOMAIN-SUFFIX,annualreviews.org,DIRECT
DOMAIN-SUFFIX,aps.org,DIRECT
DOMAIN-SUFFIX,ascelibrary.org,DIRECT
DOMAIN-SUFFIX,asm.org,DIRECT
DOMAIN-SUFFIX,asme.org,DIRECT
DOMAIN-SUFFIX,astm.org,DIRECT
DOMAIN-SUFFIX,autonavi.com,DIRECT
DOMAIN-SUFFIX,awesome-hd.me,DIRECT
DOMAIN-SUFFIX,b612.net,DIRECT
DOMAIN-SUFFIX,baduziyuan.com,DIRECT
DOMAIN-SUFFIX,battle.net,DIRECT
DOMAIN-SUFFIX,bdatu.com,DIRECT
DOMAIN-SUFFIX,beitaichufang.com,DIRECT
DOMAIN-SUFFIX,biliapi.com,DIRECT
DOMAIN-SUFFIX,biliapi.net,DIRECT
DOMAIN-SUFFIX,bilibili.com,DIRECT
DOMAIN-SUFFIX,bilibili.tv,DIRECT
DOMAIN-SUFFIX,bjango.com,DIRECT
DOMAIN-SUFFIX,blizzard.com,DIRECT
DOMAIN-SUFFIX,bmj.com,DIRECT
DOMAIN-SUFFIX,booking.com,DIRECT
DOMAIN-SUFFIX,broadcasthe.net,DIRECT
DOMAIN-SUFFIX,bstatic.com,DIRECT
DOMAIN-SUFFIX,cailianpress.com,DIRECT
DOMAIN-SUFFIX,cambridge.org,DIRECT
DOMAIN-SUFFIX,camera360.com,DIRECT
DOMAIN-SUFFIX,cas.org,DIRECT
DOMAIN-SUFFIX,ccgslb.com,DIRECT
DOMAIN-SUFFIX,ccgslb.net,DIRECT
DOMAIN-SUFFIX,cctv.com,DIRECT
DOMAIN-SUFFIX,cctvpic.com,DIRECT
DOMAIN-SUFFIX,chdbits.co,DIRECT
DOMAIN-SUFFIX,chinanetcenter.com,DIRECT
DOMAIN-SUFFIX,chinaso.com,DIRECT
DOMAIN-SUFFIX,chua.pro,DIRECT
DOMAIN-SUFFIX,chuimg.com,DIRECT
DOMAIN-SUFFIX,chunyu.mobi,DIRECT
DOMAIN-SUFFIX,chushou.tv,DIRECT
DOMAIN-SUFFIX,clarivate.com,DIRECT
DOMAIN-SUFFIX,classix-unlimited.co.uk,DIRECT
DOMAIN-SUFFIX,cmbchina.com,DIRECT
DOMAIN-SUFFIX,cmbimg.com,DIRECT
DOMAIN-SUFFIX,cn,DIRECT
DOMAIN-SUFFIX,com-hs-hkdy.com,DIRECT
DOMAIN-SUFFIX,ctrip.com,DIRECT
DOMAIN-SUFFIX,czybjz.com,DIRECT
DOMAIN-SUFFIX,dandanzan.com,DIRECT
DOMAIN-SUFFIX,dfcfw.com,DIRECT
DOMAIN-SUFFIX,didialift.com,DIRECT
DOMAIN-SUFFIX,didiglobal.com,DIRECT
DOMAIN-SUFFIX,dingtalk.com,DIRECT
DOMAIN-SUFFIX,docschina.org,DIRECT
DOMAIN-SUFFIX,douban.com,DIRECT
DOMAIN-SUFFIX,doubanio.com,DIRECT
DOMAIN-SUFFIX,douyu.com,DIRECT
DOMAIN-SUFFIX,duokan.com,DIRECT
DOMAIN-SUFFIX,dxycdn.com,DIRECT
DOMAIN-SUFFIX,dytt8.net,DIRECT
DOMAIN-SUFFIX,eastmoney.com,DIRECT
DOMAIN-SUFFIX,ebscohost.com,DIRECT
DOMAIN-SUFFIX,emerald.com,DIRECT
DOMAIN-SUFFIX,empornium.me,DIRECT
DOMAIN-SUFFIX,engineeringvillage.com,DIRECT
DOMAIN-SUFFIX,eudic.net,DIRECT
DOMAIN-SUFFIX,feiliao.com,DIRECT
DOMAIN-SUFFIX,feng.com,DIRECT
DOMAIN-SUFFIX,fengkongcloud.com,DIRECT
DOMAIN-SUFFIX,fjhps.com,DIRECT
DOMAIN-SUFFIX,frdic.com,DIRECT
DOMAIN-SUFFIX,futu5.com,DIRECT
DOMAIN-SUFFIX,futunn.com,DIRECT
DOMAIN-SUFFIX,gandi.net,DIRECT
DOMAIN-SUFFIX,gazellegames.net,DIRECT
DOMAIN-SUFFIX,geilicdn.com,DIRECT
DOMAIN-SUFFIX,getpricetag.com,DIRECT
DOMAIN-SUFFIX,gifshow.com,DIRECT
DOMAIN-SUFFIX,godic.net,DIRECT
DOMAIN-SUFFIX,gtimg.com,DIRECT
DOMAIN-SUFFIX,hdbits.org,DIRECT
DOMAIN-SUFFIX,hdchina.org,DIRECT
DOMAIN-SUFFIX,hdhome.org,DIRECT
DOMAIN-SUFFIX,hdsky.me,DIRECT
DOMAIN-SUFFIX,hdslb.com,DIRECT
DOMAIN-SUFFIX,hicloud.com,DIRECT
DOMAIN-SUFFIX,hitv.com,DIRECT
DOMAIN-SUFFIX,hongxiu.com,DIRECT
DOMAIN-SUFFIX,hostbuf.com,DIRECT
DOMAIN-SUFFIX,huxiucdn.com,DIRECT
DOMAIN-SUFFIX,huya.com,DIRECT
DOMAIN-SUFFIX,icetorrent.org,DIRECT
DOMAIN-SUFFIX,icevirtuallibrary.com,DIRECT
DOMAIN-SUFFIX,iciba.com,DIRECT
DOMAIN-SUFFIX,idqqimg.com,DIRECT
DOMAIN-SUFFIX,ieee.org,DIRECT
DOMAIN-SUFFIX,iesdouyin.com,DIRECT
DOMAIN-SUFFIX,igamecj.com,DIRECT
DOMAIN-SUFFIX,imf.org,DIRECT
DOMAIN-SUFFIX,infinitynewtab.com,DIRECT
DOMAIN-SUFFIX,iop.org,DIRECT
DOMAIN-SUFFIX,ip-cdn.com,DIRECT
DOMAIN-SUFFIX,ip.la,DIRECT
DOMAIN-SUFFIX,ipip.net,DIRECT
DOMAIN-SUFFIX,ipv6-test.com,DIRECT
DOMAIN-SUFFIX,iqiyi.com,DIRECT
DOMAIN-SUFFIX,iqiyipic.com,DIRECT
DOMAIN-SUFFIX,ithome.com,DIRECT
DOMAIN-SUFFIX,jamanetwork.com,DIRECT
DOMAIN-SUFFIX,java.com,DIRECT
DOMAIN-SUFFIX,jd.com,DIRECT
DOMAIN-SUFFIX,jd.hk,DIRECT
DOMAIN-SUFFIX,jdpay.com,DIRECT
DOMAIN-SUFFIX,jhu.edu,DIRECT
DOMAIN-SUFFIX,jidian.im,DIRECT
DOMAIN-SUFFIX,jpopsuki.eu,DIRECT
DOMAIN-SUFFIX,jstor.org,DIRECT
DOMAIN-SUFFIX,jstucdn.com,DIRECT
DOMAIN-SUFFIX,kaiyanapp.com,DIRECT
DOMAIN-SUFFIX,karger.com,DIRECT
DOMAIN-SUFFIX,kaspersky-labs.com,DIRECT
DOMAIN-SUFFIX,keepcdn.com,DIRECT
DOMAIN-SUFFIX,keepfrds.com,DIRECT
DOMAIN-SUFFIX,kkmh.com,DIRECT
DOMAIN-SUFFIX,ksosoft.com,DIRECT
DOMAIN-SUFFIX,kuyunbo.club,DIRECT
DOMAIN-SUFFIX,libguides.com,DIRECT
DOMAIN-SUFFIX,livechina.com,DIRECT
DOMAIN-SUFFIX,lofter.com,DIRECT
DOMAIN-SUFFIX,loli.net,DIRECT
DOMAIN-SUFFIX,luojilab.com,DIRECT
DOMAIN-SUFFIX,m-team.cc,DIRECT
DOMAIN-SUFFIX,madsrevolution.net,DIRECT
DOMAIN-SUFFIX,maoyan.com,DIRECT
DOMAIN-SUFFIX,maoyun.tv,DIRECT
DOMAIN-SUFFIX,meipai.com,DIRECT
DOMAIN-SUFFIX,meitu.com,DIRECT
DOMAIN-SUFFIX,meituan.com,DIRECT
DOMAIN-SUFFIX,meituan.net,DIRECT
DOMAIN-SUFFIX,meitudata.com,DIRECT
DOMAIN-SUFFIX,meitustat.com,DIRECT
DOMAIN-SUFFIX,meixincdn.com,DIRECT
DOMAIN-SUFFIX,mgtv.com,DIRECT
DOMAIN-SUFFIX,mi-img.com,DIRECT
DOMAIN-SUFFIX,microsoft.com,DIRECT
DOMAIN-SUFFIX,miui.com,DIRECT
DOMAIN-SUFFIX,miwifi.com,DIRECT
DOMAIN-SUFFIX,mobike.com,DIRECT
DOMAIN-SUFFIX,moke.com,DIRECT
DOMAIN-SUFFIX,morethan.tv,DIRECT
DOMAIN-SUFFIX,mpg.de,DIRECT
DOMAIN-SUFFIX,msecnd.net,DIRECT
DOMAIN-SUFFIX,mubu.com,DIRECT
DOMAIN-SUFFIX,mxhichina.com,DIRECT
DOMAIN-SUFFIX,myanonamouse.net,DIRECT
DOMAIN-SUFFIX,myapp.com,DIRECT
DOMAIN-SUFFIX,myilibrary.com,DIRECT
DOMAIN-SUFFIX,myqcloud.com,DIRECT
DOMAIN-SUFFIX,myzaker.com,DIRECT
DOMAIN-SUFFIX,nanyangpt.com,DIRECT
DOMAIN-SUFFIX,nature.com,DIRECT
DOMAIN-SUFFIX,ncore.cc,DIRECT
DOMAIN-SUFFIX,netease.com,DIRECT
DOMAIN-SUFFIX,netspeedtestmaster.com,DIRECT
DOMAIN-SUFFIX,nim-lang-cn.org,DIRECT
DOMAIN-SUFFIX,nvidia.com,DIRECT
DOMAIN-SUFFIX,oecd-ilibrary.org,DIRECT
DOMAIN-SUFFIX,office365.com,DIRECT
DOMAIN-SUFFIX,open.cd,DIRECT
DOMAIN-SUFFIX,oracle.com,DIRECT
DOMAIN-SUFFIX,osapublishing.org,DIRECT
DOMAIN-SUFFIX,oup.com,DIRECT
DOMAIN-SUFFIX,ourbits.club,DIRECT
DOMAIN-SUFFIX,ourdvs.com,DIRECT
DOMAIN-SUFFIX,outlook.com,DIRECT
DOMAIN-SUFFIX,ovid.com,DIRECT
DOMAIN-SUFFIX,oxfordartonline.com,DIRECT
DOMAIN-SUFFIX,oxfordbibliographies.com,DIRECT
DOMAIN-SUFFIX,oxfordmusiconline.com,DIRECT
DOMAIN-SUFFIX,passthepopcorn.me,DIRECT
DOMAIN-SUFFIX,paypal.com,DIRECT
DOMAIN-SUFFIX,paypalobjects.com,DIRECT
DOMAIN-SUFFIX,pnas.org,DIRECT
DOMAIN-SUFFIX,privatehd.to,DIRECT
DOMAIN-SUFFIX,proquest.com,DIRECT
DOMAIN-SUFFIX,pstatp.com,DIRECT
DOMAIN-SUFFIX,pterclub.com,DIRECT
DOMAIN-SUFFIX,qdaily.com,DIRECT
DOMAIN-SUFFIX,qhimg.com,DIRECT
DOMAIN-SUFFIX,qhres.com,DIRECT
DOMAIN-SUFFIX,qidian.com,DIRECT
DOMAIN-SUFFIX,qq.com,DIRECT
DOMAIN-SUFFIX,qyer.com,DIRECT
DOMAIN-SUFFIX,qyerstatic.com,DIRECT
DOMAIN-SUFFIX,raychase.net,DIRECT
DOMAIN-SUFFIX,redacted.ch,DIRECT
DOMAIN-SUFFIX,ronghub.com,DIRECT
DOMAIN-SUFFIX,rsc.org,DIRECT
DOMAIN-SUFFIX,ruguoapp.com,DIRECT
DOMAIN-SUFFIX,s-microsoft.com,DIRECT
DOMAIN-SUFFIX,s-reader.com,DIRECT
DOMAIN-SUFFIX,sagepub.com,DIRECT
DOMAIN-SUFFIX,sankuai.com,DIRECT
DOMAIN-SUFFIX,sciencedirect.com,DIRECT
DOMAIN-SUFFIX,sciencemag.org,DIRECT
DOMAIN-SUFFIX,scomper.me,DIRECT
DOMAIN-SUFFIX,scopus.com,DIRECT
DOMAIN-SUFFIX,seafile.com,DIRECT
DOMAIN-SUFFIX,servicewechat.com,DIRECT
DOMAIN-SUFFIX,siam.org,DIRECT
DOMAIN-SUFFIX,sina.com,DIRECT
DOMAIN-SUFFIX,sm.ms,DIRECT
DOMAIN-SUFFIX,smzdm.com,DIRECT
DOMAIN-SUFFIX,snapdrop.net,DIRECT
DOMAIN-SUFFIX,snssdk.com,DIRECT
DOMAIN-SUFFIX,snwx.com,DIRECT
DOMAIN-SUFFIX,sogo.com,DIRECT
DOMAIN-SUFFIX,sogou.com,DIRECT
DOMAIN-SUFFIX,sogoucdn.com,DIRECT
DOMAIN-SUFFIX,sohu-inc.com,DIRECT
DOMAIN-SUFFIX,sohu.com,DIRECT
DOMAIN-SUFFIX,sohucs.com,DIRECT
DOMAIN-SUFFIX,soku.com,DIRECT
DOMAIN-SUFFIX,spiedigitallibrary.org,DIRECT
DOMAIN-SUFFIX,springer.com,DIRECT
DOMAIN-SUFFIX,springerlink.com,DIRECT
DOMAIN-SUFFIX,springsunday.net,DIRECT
DOMAIN-SUFFIX,sspai.com,DIRECT
DOMAIN-SUFFIX,staticdn.net,DIRECT
# Steam
host, steamcommunity-a.akamaihd.net, Steam
host, steamuserimages-a.akamaihd.net, Steam
host-suffix, steamcommunity.com, Steam
host, steammobile.akamaized.net, Steam
host, steamcdn-a.akamaihd.net, Steam
host-suffix, steampowered.com, Steam
host-suffix, steam-api.com, Steam
host-suffix, steamstatic.com, Steam
#
DOMAIN-SUFFIX,takungpao.com,DIRECT
DOMAIN-SUFFIX,tandfonline.com,DIRECT
DOMAIN-SUFFIX,teamviewer.com,DIRECT
DOMAIN-SUFFIX,tencent-cloud.net,DIRECT
DOMAIN-SUFFIX,tencent.com,DIRECT
DOMAIN-SUFFIX,tenpay.com,DIRECT
DOMAIN-SUFFIX,test-ipv6.com,DIRECT
DOMAIN-SUFFIX,tianyancha.com,DIRECT
DOMAIN-SUFFIX,tjupt.org,DIRECT
DOMAIN-SUFFIX,tmall.com,DIRECT
DOMAIN-SUFFIX,tmall.hk,DIRECT
DOMAIN-SUFFIX,totheglory.im,DIRECT
DOMAIN-SUFFIX,toutiao.com,DIRECT
DOMAIN-SUFFIX,udache.com,DIRECT
DOMAIN-SUFFIX,udacity.com,DIRECT
DOMAIN-SUFFIX,un.org,DIRECT
DOMAIN-SUFFIX,uni-bielefeld.de,DIRECT
DOMAIN-SUFFIX,uning.com,DIRECT
DOMAIN-SUFFIX,v-56.com,DIRECT
DOMAIN-SUFFIX,visualstudio.com,DIRECT
DOMAIN-SUFFIX,vmware.com,DIRECT
DOMAIN-SUFFIX,wangsu.com,DIRECT
DOMAIN-SUFFIX,weather.com,DIRECT
DOMAIN-SUFFIX,webofknowledge.com,DIRECT
DOMAIN-SUFFIX,wechat.com,DIRECT
DOMAIN-SUFFIX,weibo.com,DIRECT
DOMAIN-SUFFIX,weibocdn.com,DIRECT
DOMAIN-SUFFIX,weico.cc,DIRECT
DOMAIN-SUFFIX,weidian.com,DIRECT
DOMAIN-SUFFIX,westlaw.com,DIRECT
DOMAIN-SUFFIX,whatismyip.com,DIRECT
DOMAIN-SUFFIX,wiley.com,DIRECT
DOMAIN-SUFFIX,windows.com,DIRECT
DOMAIN-SUFFIX,windowsupdate.com,DIRECT
DOMAIN-SUFFIX,worldbank.org,DIRECT
DOMAIN-SUFFIX,worldscientific.com,DIRECT
DOMAIN-SUFFIX,xiachufang.com,DIRECT
DOMAIN-SUFFIX,xiami.com,DIRECT
DOMAIN-SUFFIX,xiami.net,DIRECT
DOMAIN-SUFFIX,xiaomi.com,DIRECT
DOMAIN-SUFFIX,ximalaya.com,DIRECT
DOMAIN-SUFFIX,xinhuanet.com,DIRECT
DOMAIN-SUFFIX,xmcdn.com,DIRECT
DOMAIN-SUFFIX,yangkeduo.com,DIRECT
DOMAIN-SUFFIX,ydstatic.com,DIRECT
DOMAIN-SUFFIX,youku.com,DIRECT
DOMAIN-SUFFIX,zhangzishi.cc,DIRECT
DOMAIN-SUFFIX,zhihu.com,DIRECT
DOMAIN-SUFFIX,zhimg.com,DIRECT
DOMAIN-SUFFIX,zhuihd.com,DIRECT
DOMAIN-SUFFIX,zimuzu.io,DIRECT
DOMAIN-SUFFIX,zimuzu.tv,DIRECT
DOMAIN-SUFFIX,zmz2019.com,DIRECT
DOMAIN-SUFFIX,zmzapi.com,DIRECT
DOMAIN-SUFFIX,zmzapi.net,DIRECT
DOMAIN-SUFFIX,zmzfile.com,DIRECT
DOMAIN-SUFFIX,manmanbuy.com,DIRECT
# Remove these lines below if you don't have trouble accessing Apple resources
DOMAIN,www-cdn.icloud.com.akadns.net,DIRECT
DOMAIN-SUFFIX,aaplimg.com,DIRECT
DOMAIN-SUFFIX,apple-cloudkit.com,DIRECT
DOMAIN-SUFFIX,apple.co,DIRECT
DOMAIN-SUFFIX,apple.com,DIRECT
DOMAIN-SUFFIX,apple.news,DIRECT
DOMAIN-SUFFIX,apple.com.cn,DIRECT
DOMAIN-SUFFIX,appstore.com,DIRECT
DOMAIN-SUFFIX,cdn-apple.com,DIRECT
DOMAIN-SUFFIX,crashlytics.com,DIRECT
DOMAIN-SUFFIX,icloud-content.com,DIRECT
DOMAIN-SUFFIX,icloud.com,DIRECT
DOMAIN-SUFFIX,icloud.com.cn,DIRECT
DOMAIN-SUFFIX,me.com,DIRECT
DOMAIN-SUFFIX,mzstatic.com,DIRECT
# LINE
DOMAIN-SUFFIX,scdn.co,PROXY
DOMAIN-SUFFIX,line.naver.jp,PROXY
DOMAIN-SUFFIX,line.me,PROXY
DOMAIN-SUFFIX,line-apps.com,PROXY
DOMAIN-SUFFIX,line-cdn.net,PROXY
DOMAIN-SUFFIX,line-scdn.net,PROXY
USER-AGENT,Line*,PROXY
# Google
DOMAIN-KEYWORD,blogspot,PROXY
DOMAIN-KEYWORD,google,PROXY
DOMAIN-SUFFIX,abc.xyz,PROXY
DOMAIN-SUFFIX,admin.recaptcha.net,PROXY
DOMAIN-SUFFIX,ampproject.org,PROXY
DOMAIN-SUFFIX,android.com,PROXY
DOMAIN-SUFFIX,androidify.com,PROXY
DOMAIN-SUFFIX,appspot.com,PROXY
DOMAIN-SUFFIX,autodraw.com,PROXY
DOMAIN-SUFFIX,blogger.com,PROXY
DOMAIN-SUFFIX,capitalg.com,PROXY
DOMAIN-SUFFIX,certificate-transparency.org,PROXY
DOMAIN-SUFFIX,chrome.com,PROXY
DOMAIN-SUFFIX,chromeexperiments.com,PROXY
DOMAIN-SUFFIX,chromestatus.com,PROXY
DOMAIN-SUFFIX,chromium.org,PROXY
DOMAIN-SUFFIX,creativelab5.com,PROXY
DOMAIN-SUFFIX,debug.com,PROXY
DOMAIN-SUFFIX,deepmind.com,PROXY
DOMAIN-SUFFIX,dialogflow.com,PROXY
DOMAIN-SUFFIX,firebaseio.com,PROXY
DOMAIN-SUFFIX,getmdl.io,PROXY
DOMAIN-SUFFIX,getoutline.org,PROXY
DOMAIN-SUFFIX,ggpht.com,PROXY
DOMAIN-SUFFIX,gmail.com,PROXY
DOMAIN-SUFFIX,gmodules.com,PROXY
DOMAIN-SUFFIX,godoc.org,PROXY
DOMAIN-SUFFIX,golang.org,PROXY
DOMAIN-SUFFIX,gstatic.com,PROXY
DOMAIN-SUFFIX,gv.com,PROXY
DOMAIN-SUFFIX,gvt0.com,PROXY
DOMAIN-SUFFIX,gvt1.com,PROXY
DOMAIN-SUFFIX,gvt3.com,PROXY
DOMAIN-SUFFIX,gwtproject.org,PROXY
DOMAIN-SUFFIX,itasoftware.com,PROXY
DOMAIN-SUFFIX,madewithcode.com,PROXY
DOMAIN-SUFFIX,material.io,PROXY
DOMAIN-SUFFIX,polymer-project.org,PROXY
DOMAIN-SUFFIX,recaptcha.net,PROXY
DOMAIN-SUFFIX,shattered.io,PROXY
DOMAIN-SUFFIX,synergyse.com,PROXY
DOMAIN-SUFFIX,telephony.goog,PROXY
DOMAIN-SUFFIX,tensorflow.org,PROXY
DOMAIN-SUFFIX,tfhub.dev,PROXY
DOMAIN-SUFFIX,tiltbrush.com,PROXY
DOMAIN-SUFFIX,waveprotocol.org,PROXY
DOMAIN-SUFFIX,waymo.com,PROXY
DOMAIN-SUFFIX,webmproject.org,PROXY
DOMAIN-SUFFIX,webrtc.org,PROXY
DOMAIN-SUFFIX,whatbrowser.org,PROXY
DOMAIN-SUFFIX,widevine.com,PROXY
DOMAIN-SUFFIX,x.company,PROXY
DOMAIN-SUFFIX,xn--ngstr-lra8j.com,PROXY
DOMAIN-SUFFIX,youtu.be,PROXY
DOMAIN-SUFFIX,yt.be,PROXY
DOMAIN-SUFFIX,ytimg.com,PROXY
# Clubhouse
DOMAIN-SUFFIX,clubhouseapi.com,PROXY
DOMAIN-SUFFIX,clubhouse.pubnub.com,PROXY
DOMAIN-SUFFIX,joinclubhouse.com,PROXY
DOMAIN-SUFFIX,ap3.agora.io,PROXY
# Top blocked sites
DOMAIN-KEYWORD,aka,PROXY
DOMAIN-KEYWORD,facebook,PROXY
DOMAIN-KEYWORD,youtube,PROXY
DOMAIN-KEYWORD,twitter,PROXY
DOMAIN-KEYWORD,instagram,PROXY
DOMAIN-KEYWORD,gmail,PROXY
DOMAIN-KEYWORD,pixiv,PROXY
DOMAIN-SUFFIX,fb.com,PROXY
DOMAIN-SUFFIX,meta.com,PROXY
DOMAIN-SUFFIX,twimg.com,PROXY
DOMAIN-SUFFIX,t.co,PROXY
DOMAIN-SUFFIX,kenengba.com,PROXY
DOMAIN-SUFFIX,akamai.net,PROXY
DOMAIN-SUFFIX,whatsapp.net,PROXY
DOMAIN-SUFFIX,whatsapp.com,PROXY
DOMAIN-SUFFIX,snapchat.com,PROXY
DOMAIN-SUFFIX,amazonaws.com,PROXY
DOMAIN-SUFFIX,angularjs.org,PROXY
DOMAIN-SUFFIX,akamaihd.net,PROXY
DOMAIN-SUFFIX,amazon.com,PROXY
DOMAIN-SUFFIX,bit.ly,PROXY
DOMAIN-SUFFIX,bitbucket.org,PROXY
DOMAIN-SUFFIX,blog.com,PROXY
DOMAIN-SUFFIX,blogcdn.com,PROXY
DOMAIN-SUFFIX,blogsmithmedia.com,PROXY
DOMAIN-SUFFIX,box.net,PROXY
DOMAIN-SUFFIX,bloomberg.com,PROXY
DOMAIN-SUFFIX,cl.ly,PROXY
DOMAIN-SUFFIX,cloudfront.net,PROXY
DOMAIN-SUFFIX,cloudflare.com,PROXY
DOMAIN-SUFFIX,cocoapods.org,PROXY
DOMAIN-SUFFIX,dribbble.com,PROXY
DOMAIN-SUFFIX,dropbox.com,PROXY
DOMAIN-SUFFIX,dropboxstatic.com,PROXY
DOMAIN-SUFFIX,dropboxusercontent.com,PROXY
DOMAIN-SUFFIX,docker.com,PROXY
DOMAIN-SUFFIX,duckduckgo.com,PROXY
DOMAIN-SUFFIX,digicert.com,PROXY
DOMAIN-SUFFIX,dnsimple.com,PROXY
DOMAIN-SUFFIX,edgecastcdn.net,PROXY
DOMAIN-SUFFIX,engadget.com,PROXY
DOMAIN-SUFFIX,eurekavpt.com,PROXY
DOMAIN-SUFFIX,fb.me,PROXY
DOMAIN-SUFFIX,fbcdn.net,PROXY
DOMAIN-SUFFIX,fc2.com,PROXY
DOMAIN-SUFFIX,feedburner.com,PROXY
DOMAIN-SUFFIX,fabric.io,PROXY
DOMAIN-SUFFIX,flickr.com,PROXY
DOMAIN-SUFFIX,fastly.net,PROXY
DOMAIN-SUFFIX,github.com,PROXY
DOMAIN-SUFFIX,github.io,PROXY
DOMAIN-SUFFIX,githubusercontent.com,PROXY
DOMAIN-SUFFIX,goo.gl,PROXY
DOMAIN-SUFFIX,godaddy.com,PROXY
DOMAIN-SUFFIX,gravatar.com,PROXY
DOMAIN-SUFFIX,imageshack.us,PROXY
DOMAIN-SUFFIX,imgur.com,PROXY
DOMAIN-SUFFIX,jshint.com,PROXY
DOMAIN-SUFFIX,ift.tt,PROXY
DOMAIN-SUFFIX,j.mp,PROXY
DOMAIN-SUFFIX,kat.cr,PROXY
DOMAIN-SUFFIX,linode.com,PROXY
DOMAIN-SUFFIX,lithium.com,PROXY
DOMAIN-SUFFIX,megaupload.com,PROXY
DOMAIN-SUFFIX,mobile01.com,PROXY
DOMAIN-SUFFIX,modmyi.com,PROXY
DOMAIN-SUFFIX,nytimes.com,PROXY
DOMAIN-SUFFIX,name.com,PROXY
DOMAIN-SUFFIX,openvpn.net,PROXY
DOMAIN-SUFFIX,openwrt.org,PROXY
DOMAIN-SUFFIX,ow.ly,PROXY
DOMAIN-SUFFIX,pinboard.in,PROXY
DOMAIN-SUFFIX,ssl-images-amazon.com,PROXY
DOMAIN-SUFFIX,sstatic.net,PROXY
DOMAIN-SUFFIX,stackoverflow.com,PROXY
DOMAIN-SUFFIX,staticflickr.com,PROXY
DOMAIN-SUFFIX,squarespace.com,PROXY
DOMAIN-SUFFIX,symcd.com,PROXY
DOMAIN-SUFFIX,symcb.com,PROXY
DOMAIN-SUFFIX,symauth.com,PROXY
DOMAIN-SUFFIX,ubnt.com,PROXY
DOMAIN-SUFFIX,thepiratebay.org,PROXY
DOMAIN-SUFFIX,tumblr.com,PROXY
DOMAIN-SUFFIX,twitch.tv,PROXY
DOMAIN-SUFFIX,twitter.com,PROXY
DOMAIN-SUFFIX,wikipedia.com,PROXY
DOMAIN-SUFFIX,wikipedia.org,PROXY
DOMAIN-SUFFIX,wikimedia.org,PROXY
DOMAIN-SUFFIX,wordpress.com,PROXY
DOMAIN-SUFFIX,wsj.com,PROXY
DOMAIN-SUFFIX,wsj.net,PROXY
DOMAIN-SUFFIX,wp.com,PROXY
DOMAIN-SUFFIX,vimeo.com,PROXY
DOMAIN-SUFFIX,tapbots.com,PROXY
DOMAIN-SUFFIX,ykimg.com,DIRECT
DOMAIN-SUFFIX,medium.com,PROXY
DOMAIN-SUFFIX,fast.com,PROXY
DOMAIN-SUFFIX,nflxvideo.net,PROXY
DOMAIN-SUFFIX,linkedin.com,PROXY
DOMAIN-SUFFIX,licdn.com,PROXY
# SoundCloud
DOMAIN-SUFFIX,soundcloud.com,PROXY
DOMAIN-SUFFIX,sndcdn.com,PROXY
# Telegram
DOMAIN-SUFFIX,t.me,PROXY
DOMAIN-SUFFIX,tdesktop.com,PROXY
DOMAIN-SUFFIX,telegra.ph,PROXY
DOMAIN-SUFFIX,telegram.me,PROXY
DOMAIN-SUFFIX,telegram.org,PROXY
DOMAIN-SUFFIX,telesco.pe,PROXY
IP-CIDR,91.108.4.0/22,PROXY,no-resolve
IP-CIDR,91.108.8.0/22,PROXY,no-resolve
IP-CIDR,91.108.12.0/22,PROXY,no-resolve
IP-CIDR,91.108.16.0/22,PROXY,no-resolve
IP-CIDR,91.108.56.0/22,PROXY,no-resolve
IP-CIDR,109.239.140.0/24,PROXY,no-resolve
IP-CIDR,149.154.160.0/20,PROXY,no-resolve
# DNS Leak
DOMAIN-SUFFIX,dnsleaktest.com,PROXY
DOMAIN-SUFFIX,dnsleak.com,PROXY
DOMAIN-SUFFIX,expressvpn.com,PROXY
DOMAIN-SUFFIX,nordvpn.com,PROXY
DOMAIN-SUFFIX,surfshark.com,PROXY
DOMAIN-SUFFIX,ipleak.net,PROXY
DOMAIN-SUFFIX,perfect-privacy.com,PROXY
DOMAIN-SUFFIX,browserleaks.com,PROXY
DOMAIN-SUFFIX,browserleaks.org,PROXY
DOMAIN-SUFFIX,vpnunlimited.com,PROXY
DOMAIN-SUFFIX,whoer.net,PROXY
DOMAIN-SUFFIX,whrq.net,PROXY

