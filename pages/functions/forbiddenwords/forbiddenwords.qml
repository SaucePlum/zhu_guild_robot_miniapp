<view class='cu-load load-modal' qq:if="{{loadModal}}">
  <image src='/images/logo.jpeg' class='png' mode='aspectFit'></image>
  <view class='gray-text'>加载中...</view>
</view>

<view class="cu-modal bottom-modal {{modalB=='show' && modalC!='show'?'show':''}}" bindtap="hideModalB">
  <view class="cu-dialog" catchtap="stopit">
  <view class='header-view-top'>
  <view class="header-view">
      <view class="header">
        <view></view>
      </view>
      <view class="cu-bar bg-white" catchtap='stopit'>
      <view class="action text-black" catchtap="hideModalB">取消</view>
      <text class="text-bold text-black text-lg">设置内容</text>
      <view class="action text-black" catchtap="setcontent">确定</view>
      </view>
  </view>
  </view>
  <scroll-view scroll-y catchtap='stopit'>
<view style="height:3vh;"></view>
<view class="cu-list menu sm-border card-menu margin-top">
<view class="cu-item sm-border bg-white">
<custom-textarea maxlength='{{nowtargetc!="nowtarget.notifytext"?"70":"500"}}' style="text-align: left;width:100%;{{modalB=='show' && modalC!='show'?'':'display:none;'}}" bindinput="onInput" value="{{tmpct}}" cursor-spacing='80' show-confirm-bar='{{false}}'></custom-textarea>
</view>
</view>

<view qq:if="{{nowtargetc!='nowtarget.notifytext'}}">
<view style="height:3vh;"></view>
<view class="text-gray" style="text-align: left;margin-left:30rpx;">点击以下变量可插入特殊敏感词</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='addc' data-c='a'>{{'<文件>'}} apk等文件</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='addc' data-c='b'>{{'<分享>'}} 网页、音乐分享</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='addc' data-c='c'>{{'<QQ小世界>'}} QQ小世界视频</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='addc' data-c='d'>{{'<QQ小程序>'}} QQ小程序卡片</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='addc' data-c='e'>{{'<第三方卡片>'}} 第三方音视频平台卡片</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='addc' data-c='f'>{{'<QQ红包>'}} 用户发送的红包</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='addc' data-c='w'>{{'<不支持的消息>'}} 短视频、频道邀请ark等</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='navigate_face'><text class='cuIcon-emojifill text-yellow'></text> 小黄豆表情</view>

<view style='height:2vh;'></view>
<view class="text-gray" style="text-align: left;margin-left:30rpx;">点击以下变量可插入正则表达式</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='addc' data-c='g'>| 正则表达式"或"</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='addc' data-c='h'>^ 匹配文本的开头</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='addc' data-c='i'>$ 匹配文本的结尾</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='addc' data-c='j'>? 前元素可选</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='addc' data-c='k'> * 匹配任意数量空格</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='addc' data-c='l'>.* 匹配任意数量单行字符</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='addc' data-c='m'>\d+ 匹配正整数</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='addc' data-c='n'>([\s\S]*) 匹配多行文本</view>

<view class="margin" style="text-align: left;">
  <view class="margin-top bg-white padding radius-lg">
    <view class="text-sm text-black">说明：</view>
    <view class="text-black text-sm padding-top-xs">敏感词对主题内容也生效</view>
    <view class="text-gray text-sm padding-top-xs">无法修改指定敏感词内容</view>
    <view class="text-gray text-sm padding-top-xs">新内容将视为新敏感词，并增加到记录</view>
    <view class="text-red text-sm padding-top-xs">因此请不要忘记删除旧敏感词</view>
    <view class="text-gray text-sm padding-top-xs">敏感词内容<text class='text-blue'>支持正则表达式</text>，可百度学习</view>
  </view>
</view>
</view>
<view qq:else>
<view style="height:3vh;"></view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;">输入#可插入子频道</view>
<view style="height:2vh;"></view>
<view class="text-gray" style="text-align: left;margin-left:30rpx;">内容支持以下变量，点击可插入</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='addc' data-c='sb'>{{'{艾特}'}} 艾特消息发送者</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='addc' data-c='sc'>{{'{处罚时长}'}} 被禁言时长，带单位，非禁言为空</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='addc' data-c='sd'>{{'{证据链}'}} 违规证据短链</view>
<view class="text-blue" style="text-align: left;margin-left:30rpx;font-size:34rpx;" bindtap='addc' data-c='se'>{{'{用户id}'}} 用户频道场景下的id</view>

<view class="margin" style="text-align: left;">
  <view class="margin-top bg-white padding radius-lg">
    <view class="text-sm text-red">警告：</view>
    <view class="text-red text-sm padding-top-xs">请勿在提醒文本内直接暴露敏感词</view>
    <view class="text-red text-sm padding-top-xs">否则因此导致频道被封禁概不负责</view>
  </view>
</view>
</view>

  <view style="height:100vh;"></view>
  </scroll-view>
  </view>
</view>







<view class="cu-modal bottom-modal {{modalC=='show'?'show':''}}" bindtap="hideModalC">
  <view class="cu-dialog" catchtap="stopit">
  <view class='header-view-top'>
  <view class="header-view">
      <view class="header">
        <view></view>
      </view>
      <view class="cu-bar bg-white" catchtap='stopit'>
      <view class="action text-black" catchtap="hideModalC">取消</view>
      <text class="text-bold text-black text-lg">{{nowtargetc == 'nowtarget.notifytext'?'选择子频道':'设置启用范围'}}</text>
      <view class="action text-black" catchtap="setchannel" qq:if="{{nowtargetc!='nowtarget.notifytext'}}">确定</view>
      <view class="action text-black" qq:else> </view>
      </view>
  </view>
  </view>
  <scroll-view scroll-y>
  <view style='height:1vh' qq:if="{{nowtargetc!='nowtarget.notifytext'}}"></view>
  <view class="cu-bar bg-white flex padding justify-between" qq:if="{{nowtargetc!='nowtarget.notifytext'}}">
  <button class="cu-btn bg-blue sm" catchtap="selectallc">全选</button>
  <button class="cu-btn bg-blue sm" catchtap="cancleallc">全不选</button>
  </view>
  <view class="cu-list menu sm-border margin-top">
  <view class="cu-item sm-border" qq:for="{{tmpchannellist}}" qq:key='index' catchtap="{{item.type!=4?'pclick':'stopit'}}" data-index='{{index}}' data-item='{{item}}'>
<text qq:if='{{item.type==4}}' class="cuIcon-triangledownfill"><text class="text-black margin-left-xs">{{item.name}}</text></text>
<view qq:if='{{item.type!=4}}' class="margin-left">
<text qq:if='{{item.type==0 && item.sub_type==0}}' class="cuIcon-comment"><text class="text-black margin-left-xs">{{item.name}}</text></text>
<text qq:if='{{item.type==0 && item.sub_type==1}}' class="cuIcon-notification"><text class="text-black margin-left-xs">{{item.name}}</text></text>
<text qq:if='{{item.type==2}}' class="cuIcon-voice"><text class="text-black margin-left-xs">{{item.name}}</text></text>
<text qq:if='{{item.type==10005}}' class="cuIcon-record"><text class="text-black margin-left-xs">{{item.name}}</text></text>
<text qq:if='{{item.type==10006}}' class="cuIcon-apps"><text class="text-black margin-left-xs">{{item.name}}</text></text>
<text qq:if='{{item.type==10007}}' class="cuIcon-edit"><text class="text-black margin-left-xs">{{item.name}}</text></text>
  </view>
  <text class="cuIcon-roundcheckfill text-blue" qq:if='{{item.select && nowtargetc!="nowtarget.notifytext"}}'></text>
  </view>
  </view>
  </scroll-view>
  </view>
</view>



<view class="cu-modal bottom-modal {{modalE=='show'?'show':''}}" bindtap="hideModalE">
  <view class="cu-dialog" catchtap="stopit">
  <view class='header-view-top'>
  <view class="header-view">
      <view class="header">
        <view></view>
      </view>
      <view class="cu-bar bg-white">
      <view class="action text-black" catchtap="hideModalE">取消</view>
      <text class="text-bold text-black text-lg">选择身份组</text>
      <view class="action text-black" catchtap="setrole">确定</view>
      </view>
  </view>
  </view>
  <scroll-view scroll-y catchtap='stopit'>
<view style='height:1vh'></view>
  <view class="cu-bar bg-white flex padding justify-between">
  <button class="cu-btn bg-blue sm" catchtap="selectallr">全选</button>
  <button class="cu-btn bg-blue sm" catchtap="cancleallr">全不选</button>
  </view>

  <view class="cu-list menu sm-border margin-top">

  <view class="cu-item sm-border" qq:for="{{rolelist}}" qq:key='index' catchtap='fclick_' data-index='{{index}}' data-item='{{item}}'>
<view style='display: flex;align-items: center;'>
<text class="cuIcon-title" style='color:{{item.hexcolor}};font-size:50rpx;' qq:if='{{item.hexcolor!="n"}}'></text>
<text class="cuIcon-choicenessfill text-blue margin-right-sm" qq:else></text>
<text class="{{item.disable?'text-gray':'text-black'}} text-cut" style='max-width:70vw;'>{{item.name}}</text>
</view>
           
    <text class="cuIcon-roundcheckfill text-blue" qq:if='{{item.select}}'></text>
    <text class="cuIcon-roundcheckfill text-gray" qq:else></text>
  </view>

  </view>
  </scroll-view>
  </view>
</view>



<view class="cu-modal bottom-modal {{modalD=='show' && modalB==''?'show':''}}" bindtap="hideModalD">
  <view class="cu-dialog" catchtap="stopit">
  <view class='header-view-top'>
  <view class="header-view">
      <view class="header">
        <view></view>
      </view>
      <view class="cu-bar bg-white" catchtap='stopit'>
      <view class="action text-black" catchtap="hideModalD">取消</view>
      <text class="text-bold text-black text-lg">选择触发后操作</text>
      <view class="action text-black" catchtap='changent'>确定</view>
      </view>
  </view>
  </view>
  <scroll-view scroll-y catchtap='stopit'>
  <view class="cu-list menu sm-border margin-top">

  <view class="cu-item sm-border" qq:for="{{oplist}}" qq:key='index' catchtap='oclick' data-index='{{index}}' data-item='{{item}}'>
<text class="text-black">{{item.name}}</text>
<picker mode="multiSelector" range="{{daterange}}" bindchange="bindMultiPickerChange">
  <view class="text-bold padding text-black" qq:if='{{(item.type=="0" || item.type=="2" || item.type=="8" || item.type=="9") && item.select}}'>{{nowtarget.op_times}}</view>
  </picker>
  <text class="cuIcon-roundcheckfill text-blue" qq:if='{{item.select}}'></text>
  </view>

  </view>
  </scroll-view>
  </view>
</view>





<view class="cu-modal bottom-modal {{modalA=='show' && modalB=='' && modalC=='' && modalD=='' && modalE==''?'show':''}}" bindtap="hideModalA">
  <view class="cu-dialog" catchtap="stopit">
  <view class='header-view-top'>
  <view class="header-view">
      <view class="header">
        <view></view>
      </view>
      <view class="cu-bar bg-white" catchtap='stopit'>
      <view class="action text-black" catchtap="hideModalA">取消</view>
      <text class="text-bold text-black text-lg margin-right-sm">编辑|添加 敏感词</text>
      <view class="action text-black" catchtap="save">确定</view>
      </view>
  </view>
  </view>
  <scroll-view scroll-y catchtap='stopit'>
<view style='height:3vh;'></view>
<view class="bg-white margin-sm" style="border-radius:10px;">
  <view class="flex padding-sm justify-between solid-bottom">
    <view class="flex">
      <view class="padding-lr-xs">
      <view class="cu-avatar lg round" style="background-image:url({{nowtarget.editorhead}});">
        </view>
      </view>
      <view class="padding-xs text-xl text-black">
        <view bindtap="copynick" data-item="{{nowtarget}}">{{nowtarget.editornick}}</view>
        <view class="text-sm text-gray padding-top-xs">编辑者</view>
      </view>
    </view>
    <view class="text-gray text-sm padding-right padding-top-sm" bindtap="copyid" data-item="{{nowtarget}}">id：{{nowtarget.editor}}</view>
  </view>

  <view class="margin-sm margin-top">
    <view class="text-gray padding-bottom" style="text-align: left;">敏感词信息：</view>
    <view class="cu-timeline">
      <view class="cu-item cur cuIcon-time" qq:if="{{nowtarget.edit_time!=''}}">
        <view class="content bg-blue light shadow-blur" style="text-align: left;">
          <view class="padding-top-xs">上次编辑时间</view>
          <text class="padding-top-xs">{{nowtarget.edit_time}}</text>
        </view>
      </view>
      <view class="cu-item cur cuIcon-form">
        <view class="content bg-blue light shadow-blur" style="text-align: left;">
          <view class="padding-top-xs">敏感词内容<button class="cu-btn sm margin-left-sm shadow round" catchtap="setdesc" data-target='nowtarget.keyword'>设置</button></view>
          <view style='width: 100%;word-wrap: break-word;'>
          <text style="text-align: left;">{{nowtarget.keyword}}</text>
          </view>
        </view>
      </view>
      <view class="cu-item cur cuIcon-settings">
        <view class="content bg-blue light shadow-blur" style="text-align: left;">
          <view class="padding-top-xs" catchtap='setoptions'>触发后操作<button class="cu-btn sm margin-left-sm shadow round">设置</button></view>

    <view class="cuIcon padding-top-xs" qq:if='{{nowtarget.deal_type=="0"}}'>触发后禁言{{nowtarget.op_times}}</view>
    <view class="cuIcon padding-top-xs" qq:if='{{nowtarget.deal_type=="1"}}'>触发后警告</view>
    <view class="cuIcon padding-top-xs" qq:if='{{nowtarget.deal_type=="2"}}'>触发后警告并禁言{{nowtarget.op_times}}</view>
    <view class="cuIcon padding-top-xs" qq:if='{{nowtarget.deal_type=="3"}}'>触发后踢出</view>
    <view class="cuIcon padding-top-xs" qq:if='{{nowtarget.deal_type=="4"}}'>触发后踢出并拉黑</view>
    <view class="cuIcon padding-top-xs" qq:if='{{nowtarget.deal_type=="5"}}'>无额外操作(只撤回)</view>
    <view class="cuIcon padding-top-xs" qq:if='{{nowtarget.deal_type=="6"}}'>人工处理(不撤回)</view>
    <view class="cuIcon padding-top-xs" qq:if='{{nowtarget.deal_type=="7"}}'>人工处理并撤回</view>
    <view class="cuIcon padding-top-xs" qq:if='{{nowtarget.deal_type=="8"}}'>人工处理并禁言</view>
    <view class="cuIcon padding-top-xs" qq:if='{{nowtarget.deal_type=="9"}}'>人工处理并撤回、禁言</view>
        </view>
      </view>
      <view class="cu-item cur cuIcon-edit">
        <view class="content bg-blue light shadow-blur" style="text-align: left;">
          <view class="padding-top-xs">处罚提醒文本<button class="cu-btn sm margin-left-sm shadow round" catchtap="setdesc" data-target='nowtarget.notifytext'>设置</button></view>
          <view style='width: 100%;word-wrap: break-word;'>
          <text style="text-align: left;" qq:if='{{nowtarget.notifytext}}'>{{nowtarget.notifytext}}</text>
          </view>
        </view>
      </view>
      <view class="cu-item cur cuIcon-list">
        <view class="content bg-blue light shadow-blur" style="text-align: left;">
         <view class="padding-top-xs">启用范围<button class="cu-btn sm margin-left-sm shadow round" catchtap='setonchannels'>设置</button></view>
        <view class="cu-tag radius sm text-cut" style='justify-content:left;max-width:50vw;' qq:for='{{channellist}}' qq:key='{{index}}' qq:if='{{item.type!=4}}'>

<text qq:if='{{item.type==0 && item.sub_type==0}}' class="cuIcon-comment"><text>{{item.name}}</text></text>
<text qq:if='{{item.type==0 && item.sub_type==1}}' class="cuIcon-notification"><text>{{item.name}}</text></text>
<text qq:if='{{item.type==2}}' class="cuIcon-voice"><text>{{item.name}}</text></text>
<text qq:if='{{item.type==10005}}' class="cuIcon-record"><text>{{item.name}}</text></text>
<text qq:if='{{item.type==10006}}' class="cuIcon-apps"><text>{{item.name}}</text></text>
<text qq:if='{{item.type==10007}}' class="cuIcon-edit"><text>{{item.name}}</text></text>
        </view>
        </view>
      </view>
      <view class="cu-item cur cuIcon-people">
        <view class="content bg-blue light shadow-blur" style="text-align: left;">
         <view class="padding-top-xs">排除的身份组<button class="cu-btn sm margin-left-sm shadow round" catchtap='setsaferoles'>设置</button></view>
         <view class="cu-tag radius sm text-cut" style='justify-content:left;max-width:50vw;' qq:for='{{showroles}}' qq:key='i' qq:for-index='i' qq:for-item="si">

<text class="cuIcon-title" style='color:{{si.hexcolor}};font-size:50rpx;margin-left:-8px;' qq:if='{{si.hexcolor!="n"}}'></text>
<text class="cuIcon-choicenessfill text-blue" style='margin-right:6px;' qq:else></text>
<text style='margin-left:-2px;'>{{si.name}}</text>

      </view>
        </view>
      </view>
    </view>
  </view>
</view>

  </scroll-view>
  </view>
</view>


<view class="cu-bar bg-white fixed">
      <view class="cu-bar bg-white" style='max-width:140rpx;'>
    <view class="action">
    <navigator open-type='navigateBack' delta='1'>
      <text class="cuIcon-back text-gray"></text>
    </navigator>
    <navigator open-type='reLaunch' url='/pages/functions/index/index'>
      <text class="cuIcon-homefill text-gray" style='margin-left:20rpx;'></text>
    </navigator>
    <navigator open-type="exit" target="miniProgram">
      <text class="cuIcon-close text-red" style='margin-left:20rpx;'></text>
    </navigator>
    </view>
  </view>
    <view class="search-form round">
      <text class="cuIcon-search"></text>
      <input type="text" placeholder="搜索 敏感词|用户昵称|用户id|时间" confirm-type="search" bindinput="onSearchInput"></input>
    </view>
  </view>

<view class="bg-white" style="position:fixed;top:auto;left:0;right:0;z-index:999;">
  <view class="cu-bar bg-white flex padding justify-between">
  <button class="cu-btn bg-blue sm" catchtap="selectall">全部选中</button>
  <button class="cu-btn bg-red sm" catchtap="opsome">删除选中</button>
  <button class="cu-btn bg-blue sm" catchtap="cancleall">取消选中</button>
  </view>
</view>

<scroll-view scroll-y style="height:100vh;" bindscrolltolower='fetch_list'>
<view style='height:8vh;'></view>

  <view class="margin" style="text-align: left">
    <view class="margin-top bg-white padding radius-lg">
      <view class="text-sm text-black">说明：</view>
      <view class="text-gray text-sm padding-top-xs">本功能支持文字、主题、帖子（评论）</view>
      <view class="text-gray text-sm padding-top-xs">机器人无法撤回帖子（评论）</view>
      <view class="text-blue text-sm padding-top-xs">帖子（评论）的处理建议设置为人工处理</view>
    </view>
  </view>

<view class="cu-list menu sm-border card-menu margin-top bg-white" qq:for="{{list}}" qq:key='index' bindtap='selectone' data-item='{{item}}' data-index='{{index}}' qq:if='{{item.show}}'>
 <view class="cu-item sm-border">
  <view class='content text-cut' style='max-width:70vw;'>
      <text class="cuIcon-roundcheckfill text-{{item.select?'blue':'gray'}} margin-right-xs"></text>
      <text class="text-blue">{{item.keyword}}</text>
  </view>
  <button class='cu-btn round' data-item='{{item}}' data-index='{{index}}' catchtap='showinfo'>编辑</button>
 </view>
    <view class="cu-item flex padding-left-sm margin-bottom-sm margin-top-sm">
      <view class="cu-avatar round" style="background-image:url({{item.editorhead}});"></view>
      <view class="content text-gray text-sm padding-left-sm text-cut">
        <text class="text-lg text-black">{{item.editornick}}</text>
        <view class="">{{item.edit_time}}</view>
      </view>
      <view class="text-gray text-sm" style='text-align:right;'>
        <view qq:if='{{item.deal_type=="0"}}'>触发后禁言</view>
        <view qq:if='{{item.deal_type=="1"}}'>触发后警告</view>
        <view qq:if='{{item.deal_type=="2"}}'>触发后警告并禁言</view>
        <view qq:if='{{item.deal_type=="3"}}'>触发后踢出</view>
        <view qq:if='{{item.deal_type=="4"}}'>触发后踢出并拉黑</view>
        <view qq:if='{{item.deal_type=="5"}}'>无额外操作(只撤回)</view>
        <view qq:if='{{item.deal_type=="6"}}'>人工处理(不撤回)</view>
        <view qq:if='{{item.deal_type=="7"}}'>人工处理并撤回</view>
        <view qq:if='{{item.deal_type=="8"}}'>人工处理并禁言</view>
        <view qq:if='{{item.deal_type=="9"}}'>人工处理并撤回、禁言</view>
      </view>
    </view>

</view>

  <view class="cu-list menu sm-border card-menu margin-top" qq:if='{{!complete}}'>
    <view class="text-center">
      <button class="cu-btn line-blue sm round" bindtap="fetch_list">加载更多</button>
    </view>
  </view>
  
  <view class="cu-list menu sm-border card-menu margin-top" qq:if='{{complete}}'>
    <view class="text-center">
      <text class="text-gray">没有更多数据</text>
    </view>
  </view>

  <view style="height:18vh;"></view>
</scroll-view>

<view class="bg-white" style="position:fixed;z-index:1024;bottom: 0;top:auto;left:0;right:0;">
<view class="padding">
<button class="cu-btn block bg-blue margin-tb-sm lg" bindtap='addword'>增加敏感词</button>
</view>
</view>
