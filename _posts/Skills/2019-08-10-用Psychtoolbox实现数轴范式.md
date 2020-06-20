---
tags: 
- psychtoolbox
header-img: "img/2019-08-10-01.jpg"
---
**数轴范式**是`解释水平理论(construal level theory)`常用的范式之一，一般用于测量个体对时间、社会关系等抽象概念的距离知觉。其常见形式是给出一段数轴并说明其性质及含义(比如数轴有限长或无限长，代表一段有限时间或无限时间)，要求被试通过移动数轴上的点以标定实验材料在被试心中的长度。

以本人之前的一个研究为例，上述操作在`psychtoolbox`中的实现方法如下：

```matlab
Trial=1; 
jj=rem(Trial,2)+1;%取1或2，用来控制语言类型在试次间的转换
ii=sqnc{jj}(Trial);
% wptr=Screen('OpenWindow',0);
wrect=Screen('Rect',wptr);
Screen('TextFont',wptr, 'KaiTi');
Screen('TextSize',wptr, 50);
%[xx,yy]=WindowCenter(wptr);
diadot=20;%时间点直径
diarect=[0 0 diadot diadot];
fixrect = CenterRect(diarect, wrect)+[0 40 0 40];%使时间点落在时间轴上
fixrect0=CenterRect(diarect, wrect)+[0 40 0 40];

trect0=Screen('TextBounds',wptr,txt);
x0= (wrect(3)-trect0(3))/2; y0= wrect(4)-trect0(4)-10;
Screen('PutImage',wptr,scl{jj});
Screen('DrawText',wptr,txt,x0 ,y0);
Screen('DrawText',wptr,double(tmpnt{jj}{ii}),200,200,0);
Screen('FillOval',wptr,[0 0 0],fixrect0);
Screen('Flip',wptr);
trialStart = GetSecs;
rightKey=KbName('RightArrow');
escapeKey=KbName('ESCAPE');
ListenChar(2);
   while true
    [~,secs,keyCode]=KbCheck;    % 提取当前按键状态
    [xMouse,~,buttons]=GetMouse(wptr);
        if buttons(1) 
           fixrect(1)=xMouse-diadot/2;
           fixrect(3)=xMouse+diadot/2;
           Screen('DrawText',wptr,txt,x0 ,y0);
           Screen('DrawText',wptr,double(tmpnt{jj}{ii}),200,200,0);
           Screen('PutImage',wptr,scl{jj}); 
           Screen('FillOval',wptr,[0 0 0],fixrect);
           Screen('Flip',wptr);       
        end
        if keyCode(rightKey) && Trial==20*block+1
            break
        elseif keyCode(escapeKey)
            break
        elseif (keyCode(rightKey)) && Trial<=20*block
            while KbCheck;end
%记录反应时、被试是否反应、呈现的时间点材料及时间点移动后的位置
            result(nmb).Order(nt).Subject(Trial).RT=secs-trialStart;   
            result(nmb).Order(nt).Subject(Trial).Responce=1;
            result(nmb).Order(nt).Subject(Trial).TimePoint=tmpnt{jj}{ii};
            result(nmb).Order(nt).Subject(Trial).X=xMouse;
            if Trial==20*block
                break
            else
            Trial=Trial+1;
            jj=rem(Trial,2)+1;
            ii=sqnc{jj}(Trial);
            Screen('DrawText',wptr,txt,x0 ,y0);
            Screen('DrawText',wptr,double(tmpnt{jj}{ii}),200,200,0);
            Screen('PutImage',wptr,scl{jj});
            Screen('FillOval',wptr,[0 0 0],fixrect0);
            Screen('Flip',wptr);
            end
        end
   end %while 通过按键递增试次
   while KbCheck; end
KbWait;
ListenChar(0);
clear imgs;
``` 

上述代码的核心是采用`GetMouse`函数实时读取鼠标指针坐标，以此为基础采用`Screen('FillOval')`更新圆点位置。最后实现的效果如下：

<img src="../../../../img/2019-08-10-02.jpg" width="800" height="450"> 