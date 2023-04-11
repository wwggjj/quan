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

