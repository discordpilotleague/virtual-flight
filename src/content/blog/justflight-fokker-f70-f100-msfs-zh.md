---
title: "Just Flight Fokker F70/F100 Professional 登陆 MSFS"
description: "Just Flight 的 Fokker F70/F100 Professional 即将完成最终测试,适配 MSFS 2020 和 2024。本文带来完整解析。"
lang: "zh"
pubDate: "2026-05-09"
heroImage: "../../assets/hero-justflight-fokker-f70-f100-msfs.webp"
---

经过两年多的内部研发,**Just Flight** 正在为其面向 Microsoft Flight Simulator 2020 与 2024 的 **Fokker F70/F100 Professional Bundle** 做最后润色。2026 年 5 月的开发日志确认 AFCAS 的 Profile 逻辑已被重写,刹车模型经过精调,团队已进入发布前的最终错误修复阶段。

![Microsoft Flight Simulator 中的 Fokker F100 Professional 外观](../../assets/hero-justflight-fokker-f70-f100-msfs.webp)

## 一架终于配得上现代模拟器的 Fokker

Fokker F100 是上世纪 80 年代末以来一款低调而无处不在的支线喷气客机:它在欧洲、亚洲和澳洲承运了数以百万计的旅客,并在 1995 年迎来了机身更短的兄弟 F70。KLM Cityhopper、Austrian Airlines、Air France Régional、American Airlines、QantasLink 以及 Alliance Airlines 都曾运营过相当规模的机队,Alliance Airlines、Carpatair 等公司至今仍在飞这型飞机。尽管它在现实中的存在感如此之强,Fokker 家族在 MSFS 上从未拥有过真正高保真的复刻——Just Flight 的这套捆绑包是第一个认真填补这一空白的项目。

整个捆绑包覆盖了**五个子型号**:一种 F70,配整体登机梯与大型货舱门;以及四种 F100 配置,组合整体登机梯或滑动舱门、小型或大型货舱门,以及可选的 L2 门。两种机型都使用 Rolls-Royce Tay 涡扇——F70 上的 **Tay 620-15** 与较重 F100 上的 **Tay 650**。Just Flight 在荷兰为一架真机录制了发动机声音,并将其整合进基于 Wwise 的音效包,据开发者介绍其中包含超过 500 个独立采样。

## 自研系统,而不是 MSFS 默认逻辑

让本作有别于普通 MSFS 付费插件的,是大量从零开始编写的自研代码。**飞行管理系统 (FMS)** 是采用双 CDU 的定制实现,具备真正的 LNAV/VNAV、可配置时长的 IRS 对准、飞行计划导入,以及原版 Fokker 的页面层级 (DIR、MODE、TACT MODE、INIT、REF、F-PLN、TO/APPR、PROG)。其上是一套同样自研的 **Automated Flight Control and Augmentation System (AFCAS)**,负责横向与纵向模式,包括严格遵循高度与速度限制的 Profile 下降以及精调过的自动着陆。

在航电之下,模拟深入到机体内部。每条液压系统都独立建模,带电动液压泵;电气总线分别有发动机、APU、外接与应急电源,并管理各 TRU;增压、引气需求、防冰以及燃油转输逻辑都按照真机的方式工作。标志性的**尾部减速板与升力扰流板**、阵风锁、备份的水平安定面和襟翼控制,以及与压力相关的起落架收放时序,都被独立还原,而不是用 MSFS 默认动画一笔带过。

![Fokker F100 驾驶舱的曲面 CRT 显示与双 CDU](https://img.justflight.com/products/Fokker_70___100/F70-100/010526/F100_COCKPIT_010526_1_s0BFOYFCr.png)
*图片来源:[Just Flight](https://www.justflight.com/in-development/f70-f100-professional-bundle)*

## 对模拟飞行玩家意味着什么

对于已经飞过 FlyByWire A320、iniBuilds A310 或 PMDG 737 的玩家来说,F70/F100 是回到上一代驾驶舱的体验——模拟备份仪表、曲面 CRT 显示、传统开关——但拥有让那些现代付费插件出名的系统深度。机长、副驾与观察员位都完整建模,开关与跳开关均带动画;Just Flight 还加入了隐藏的点击区域 (TOGA、STD 高度表设定),以保证空中操作仍然顺手。如果想为机库继续添加同等深度的研究级机型,可以参考我们的 [2026 年最佳付费飞行模拟飞机插件指南](/zh/blog/zuijia-fufei-feiji-moni-2026),覆盖 MSFS、X-Plane 与 DCS。

Tay 发动机自带个性。在低空响应灵敏,但当 F100 满载时爬升能力明显放慢:开发博客中提到在 ISA 条件下、最大起飞重量时,大约需要 30 分钟和 156 海里才能达到 FL350。这种限制恰好让阿姆斯特丹到慕尼黑、伦敦到法鲁、维也纳到布加勒斯特这种短距欧洲航段,变成需要完整流程的程序化飞行,而不是单纯的快进练习。捆绑包最大航程约为 1 500 海里,正好瞄准 Fokker 当年大放异彩的支线网络。

## 客舱、EFB 与小细节

完整的客舱可进入并具备交互。客舱照明、舱门、对讲机和厨房设备都可以使用;客舱广播、数字音乐播放器与 Auto Cabin Crew 逻辑均已内置;LOD 经过调校,在客舱中走动也不会让帧率崩溃。每条涂装都有专属客舱贴图,**30 套涂装**(F70 11 套、F100 19 套)从 KLM Cityhopper、Austrian Airlines 一路到 American Airlines、TAM、斯洛伐克政府专机服务,基本覆盖了你想飞的所有航司。

![MSFS 中 Fokker F100 的客舱内景](https://img.justflight.com/products/Fokker_70___100/F70-100/010526/F100_CABIN_010526_1_L2gHiqeFA.png)
*图片来源:[Just Flight](https://www.justflight.com/in-development/f70-f100-professional-bundle)*

EFB 涵盖了所有操作面:cold-and-dark 与 turnaround 状态、按油箱控制的燃油与配载管理器、按真实节奏进行的登机与加油、GPU 与轮挡、起飞与着陆性能计算、**SimBrief OFP 导入**、METAR 查看、实时地图追踪以及通过单独订阅获得的 **Navigraph 电子图**。再加上对 GSX、MSFS 2024 步行模式以及原生交互式检查单系统的支持(整套检查单接近 300 项,其中起飞前就有 250 多项),整体配置相当完善。

## 如何充分发挥它的潜力

入门最稳妥的做法是先飞**一段欧洲短程航线**——KLM Cityhopper 阿姆斯特丹至 London City,或 Austrian 维也纳至法兰克福——重量适中,这样飞机有足够的爬升余量到达合理的巡航高度。等熟悉了 FMS 各页面、AFCAS 模式以及减速板与升力扰流板的逻辑,再尝试 Alliance Airlines 或 QantasLink 在澳洲的较长航段,Profile 下降模式和自动着陆会有更充分的发挥。Just Flight 已确认与 MSFS 原生交互式检查单的兼容性,习惯使用模拟器自带界面的玩家无需额外插件即可体验完整接近 300 项的流程。

[Just Flight 的开发中产品页面](https://www.justflight.com/in-development/f70-f100-professional-bundle) 仍然是关注下一次更新的最佳渠道——5 月份的更新提到最终飞行测试与最后的错误修复,这通常意味着发售窗口将以周为单位倒计时。

## 总结

如果项目最终能兑现开发日志所描述的内容,Fokker F70/F100 Professional Bundle 有望成为 MSFS 中支线双发喷气机的标杆——填补涡桨与更大的 A320、737 模拟之间空白的那一型飞机。当我们拿到正式版本后,将在 Virtual Flight 上发布完整评测。在那之前,可以多关注 [Just Flight 新闻页面](https://www.justflight.com/) 等待发售公告。
