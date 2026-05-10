---
title: "FlyJetCard：MSFS 与 X-Plane 的公务机模拟生态"
description: "FlyJetCard 将 MSFS 与 X-Plane 12 变成 Part 91/135 包机运营，提供 5000+ AI 任务与完整的 owner-operator 经济。"
lang: "zh"
pubDate: "2026-05-10"
heroImage: "../../assets/hero-flyjetcard-business-aviation-msfs-xplane.webp"
---

一款新推出的伴随应用 **FlyJetCard**（常被简称为 JetCard）正将自身定位为 **Microsoft Flight Simulator** 与 **X-Plane 12** 在 Windows 平台上首个专门面向公务航空（Business Aviation）的生态系统。它不再使用通用的货运或航司路线系统，而是模拟 Part 91 和 Part 135 包机运营 —— 公司航班、医疗任务、体育包机、owner-operator 行程，每一个都附带自己的简报、时间窗与薪酬结构。

![FlyJetCard 用于 MSFS 与 X-Plane 12 的派遣界面](../../assets/hero-flyjetcard-business-aviation-msfs-xplane.webp)

## FlyJetCard 实际做了什么

JetCard 与模拟器并行运行，并不断为其提供任务。应用持续生成超过 **5000 个 AI 包机任务**，分布于 **50 个任务类别** —— 医疗后送、体育队伍调度、商务出行、休闲飞行、政府运输等等 —— 取材自横跨六大洲的 **960+ 个公务机相关机场** 的网络。任务依据真实运行特点设有时效：医疗紧急任务持续 4 小时，休闲预订持续 5 天，机会面板根据任务类型自动滚动刷新。

在底层，平台模拟了一家包机公司的真实财务现实。飞行员从 **自由职业者** 起步，从虚构运营商处赚取包机价值的 10%；之后可以加入其他玩家创建的公司成为 **雇员**；最终可达到 **owner-operator** 身份，拥有自己的机队、薪资支出、维护准备金，以及内置银行系统的分级贷款。机型选择有硬性限制：轻型公务机不能合法承接跨大西洋任务，运营成本采用真实经济模型而非街机式简化。

## 由剧本驱动的飞行，而非随机配对

JetCard 与单纯的职业追踪工具的根本区别，在于每次飞行都附有 **AI 撰写的任务剧情**。每个包机都带有一份任务档案 —— 谁在机上、为什么必须按时到达、哪个时间最关键 —— 多段行程把这些档案串成连续的故事线。与现实世界的同步是设计的一部分：面板会响应真实的体育赛历、F1 赛程与文化活动，因此摩纳哥的周末会出现 F1 包机，NBA 季后赛周末则会产生球队转场任务。

**jPhone** 系统负责派遣员、FBO 与客户之间的情境式通信，让飞行更像一次完整的运行而不是一段孤立航段。飞行追踪为实时遥测显示，平台同时整合 **SimBrief** 用于飞行计划，并接入实时天气以辅助派遣决策。

![FlyJetCard 任务面板与 AI 撰写的派遣档案](https://flyjetcard.io/assets/about/charter-board.png)
*图源：[JetCard](https://flyjetcard.io/)*

## 这对虚拟飞行员意味着什么

如果你已经在第三方飞行日志中记录飞行小时，或加入虚拟航空公司在线飞行，JetCard 占据的是另一个生态位 —— 它更接近 **单机职业模式**，而不是 VATSIM 或 PilotEdge。它面向那些希望每次飞行都带有目的、文档与报酬的 simmer，而又不愿被虚拟航司排班绑住。要把它放进更宽阔的职业模式版图中观察，可以参考我们的[虚拟飞行员职业飞行日志指南](/zh/blog/xuni-feixingyuan-zhiye-logbook)，其中对比了 SimToolkitPro、Volanta 与 FSEconomy。

连接方式映射出双模拟器支持：**MSFS** 通过 SimConnect 或 FSUIPC 接入，**X-Plane 12** 则需要配置 UDP 端口。也就是说，同时拥有两套模拟器的玩家可以共享同一个任务池，在两个平台之间切换机队，并维护一份贯穿两边的统一职业档案。如果你仍在两套模拟器之间犹豫，可以参考我们的 [MSFS 2024 与 X-Plane 12 对比](/zh/blog/msfs-2024-vs-xplane-12-duibi)，其中梳理了对公务机运行最具决定性的差异。

## 机型、机场与进阶

平台支持 **97 种机型**，从单发涡桨一路覆盖到 Boeing Business Jet，任务可接性逻辑使用真实参数 —— 跑道长度、航程、商载、增压能力 —— 来过滤每家运营商可以承接的任务。一架 King Air 350 拿到的任务集合与 Citation Latitude 或 Global 7500 完全不同。

960+ 个机场是按照公务机相关性挑选的，而非按航司流量。这让 **Teterboro（KTEB）**、**Van Nuys（KVNY）**、**巴黎-Le Bourget（LFPB）**、**Farnborough（EGLF）**、**日内瓦（LSGG）** 和 **阿斯彭（KASE）** 这类 FBO 友好型机场成为重头戏 —— 这些都是公务机真实运营的目的地，而不是航司模拟里常见的大型枢纽。职业进阶叠加在上方：声誉决定贷款等级，购入机队解锁 owner-operator 任务，雇佣飞行员则让较大的运营商能够维持多机型排班。

![FlyJetCard 实时航迹追踪器与遥测数据](https://flyjetcard.io/assets/about/flight-tracker.png)
*图源：[JetCard](https://flyjetcard.io/)*

## 如何入门与获取

JetCard 目前处于 **Alpha 阶段**，并以滚动方式发放 Beta 邀请。意向用户可通过[官方网站](https://flyjetcard.io/)申请抢先体验，应用内的许可证模型负责激活。[JetCard 飞行员手册](https://manual.flyjetcard.io/)所述的安装流程很短：注册账号、用许可证密钥安装桌面端、连接模拟器（MSFS 用 SimConnect/FSUIPC，X-Plane 用 UDP）、浏览任务面板、接受任务、完成飞行，并在 JetCard 检测到航班正常结束后获得报酬。

合理的首飞建议是：选用一架 **轻型公务机** 从 Teterboro 起飞，跑一段短航段 —— 飞往波士顿的体育队伍调动、飞往 Buffalo 的医疗航段、或飞往 Dulles 的公司航班 —— 先熟悉派遣界面、jPhone 通知与结算逻辑，再逐步过渡到使用更大机型执行的远程行程。

## 总结

FlyJetCard 是一款定位明确的小众产品，而这正是它的价值所在。它不去同时覆盖所有飞行职业，而是专注公务航空一项，由此构建出通用职业追踪工具难以企及的运行深度。AI 剧情、现实事件同步与一套真正运转的包机经济相结合，让每次飞行更像一份工作而非一次自由飞。对那些专注于在 MSFS 或 X-Plane 12 上模拟公务机运营的虚拟飞行员而言，这是该类型中最具雄心的第三方项目之一 —— 建议关注 [JetCard 官网](https://flyjetcard.io/)，等待公开发布窗口。
