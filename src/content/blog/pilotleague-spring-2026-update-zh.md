---
title: "PilotLeague 2026春季更新 — 公平的MSFS 2024排行榜与虚拟航空"
description: "14天滚动排行榜奖励活跃飞行员，虚拟航空公司，公开飞行员资料，全新安全警报 — PilotLeague针对MSFS 2024的最大更新。"
lang: 'zh'
pubDate: 'Apr 23 2026'
heroImage: '../../assets/hero-pilotleague-spring-2026-update.webp'
---

![PilotLeague V2排行榜，显示虚拟航空公司徽章和分类标签页](../../assets/hero-pilotleague-spring-2026-update.webp)
*图片来源：[pilotleague.com/zh/rankings/](https://pilotleague.com/zh/rankings/)*

2026春季更新是 [PilotLeague](https://pilotleague.com/zh/) 自上线以来规模最大的一次改版。它几乎重塑了这款 Microsoft Flight Simulator 2024 伴侣应用的每一个核心模块：排行榜、虚拟航空公司、飞行员资料、安全警报，以及航班重放的 GPS 轨迹。对于每天认真练习起落、追求稳定 SOP 执行与燃油效率的虚拟飞行员而言，这次更新回答了一个简单却关键的问题 —— "在一个开放的世界里，如何做到公平？"

答案是：把"最近 14 天的表现"放在核心，让长期累积的巨大分数无法继续把新飞行员永远挡在榜单之外。

## 14天滚动排行榜 —— 公平的V2算法

旧版排行榜以累积分数为主，飞得越久分数越高，新人几乎不可能追上。V2 排行榜彻底改变了这种逻辑。所有榜单现在都基于 **14 天滚动窗口**，并叠加**指数衰减**，使得越新的飞行对分数贡献越大，越旧的飞行影响越小。

核心公式非常直接：

```
pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier
```

- `performance_recent`：最近 14 天内所有航班的加权平均表现（着陆质量、SOP 合规、安全、燃油效率）
- `activity_multiplier`：活跃度奖励，鼓励定期飞行而不是一次性刷分
- `reliability_multiplier`：稳定性奖励 —— 表现越一致，乘数越高

系统**每 15 分钟刷新一次**，因此一次精彩的着陆或一次糟糕的偏离跑道都会很快反映到你的排名中。分类分数**100 分以上不封顶**，给顶级飞行员留出足够的上升空间。

更重要的是：如果你两周没飞，`performance_recent` 会因为衰减降到 0，排名自然下降。这不是惩罚，而是排行榜对"谁现在在飞"的真实反映。想回到榜上，只需重新起飞几次。

## 4类排行榜 + 虚拟航空公司徽章

V2 将排行榜拆分为 **4 个独立分类**，每个分类展示**前 40 名**：

1. **着陆（Landing）** —— 综合垂直速度、姿态、偏移跑道中线等指标
2. **SOP 合规（SOP Compliance）** —— 检查点、速度限制、灯光、襟翼配置等标准操作流程
3. **安全（Safety）** —— 违规、越界、跑道事件、地形接近等
4. **燃油效率（Fuel Efficiency）** —— 每航段油耗 vs. 机型基准

每个飞行员卡片旁边会显示所属**虚拟航空公司徽章**（如果已加入），让榜单一眼就能看出哪些 VA 在哪些维度上表现突出。

如果你想看看完整的排名结构，可以直接访问 [pilotleague.com/zh/rankings/](https://pilotleague.com/zh/rankings/)。

## 虚拟航空公司（Virtual Airlines）

这是本次更新的另一块基石。虚拟航空公司（VA）现在是 PilotLeague 的一等公民。每个 VA 包含以下字段：

- **slug**（URL 唯一标识）
- **名称**
- **呼号（callsign）**
- **IATA 代码**
- **徽标（logo）**

创建路径：在伴侣应用里进入 **设置 → 网络** 即可新建或加入一个 VA。创建后，所有成员的航班都会自动带上 VA 标签，在排行榜、飞行员资料和公开航班页面都能看到。

![PilotLeague公开飞行员资料，显示世界排名、等级、统计数据和最近航班](/images/pilotleague-spring-2026-update/public-pilot-profile.webp)
*图片来源：[pilotleague.com/zh/](https://pilotleague.com/zh/)*

### 官方认证 —— 蓝标

为了防止山寨 VA 冒用真实航空公司的名义，PilotLeague 引入了**手动审核的官方蓝标**。团队会根据 VA 的运营质量、社群规模和真实性逐个审核。获得蓝标的 VA 会在整个平台上以显眼的蓝色对勾标识，提升社群信任度，也让招募更容易。

## 公开飞行员资料 —— 一个可分享的身份页

过去，你的 PilotLeague 数据只存在于 front office（私有后台）。现在，每个飞行员都有一个**公开资料页**：

```
pilotleague.com/pilots/<username>
```

页面结构从上到下包括：

- **身份栏**：头像、用户名、VA 徽章、国家/地区
- **世界排名条**：你在全球榜上的实时位置
- **等级 + XP 进度条**：当前等级与距离下一级的 XP
- **关键数据卡片**：总航班、总飞行时间、着陆均分、SOP 均分、安全均分、燃油效率均分
- **30天趋势图**：最近一个月分类分数的变化曲线
- **最近10次航班**：带 GPS 缩略图、机型、航段、分数

**可见性完全可配置**：你可以公开全部、只公开概要、或完全隐藏。

### 头像上传

- 格式：**JPG / PNG**
- 自动**圆形裁剪**
- 输出尺寸：**512 × 512**
- 大小上限：**2 MB**
- 内置 **NSFW 检测**，自动屏蔽不适合社群的内容

## 全新的安全警报系统

![PilotLeague航班详情页顶部的红色偏离跑道警报横幅](/images/pilotleague-spring-2026-update/off-runway-alert.webp)
*图片来源：[pilotleague.com/zh/](https://pilotleague.com/zh/)*

偏离跑道（Off-Runway）是最容易破坏一次起降评分的事件之一。新的安全 UI 基于模拟器底层的 `ON ANY RUNWAY` simvar，采用 **500 毫秒检测 + 5 帧宽限**，避免因为瞬时信号抖动误判。

触发一次偏离跑道事件后：

- 航班详情页顶部出现**红色渐变横幅**
- 安全分扣 **−100**
- 事件支持 **7 种 UI 语言**本地化显示

这个警报的目标不是羞辱玩家，而是让你在赛后复盘时清楚地看到"发生了什么、发生在哪一秒"，从而下次改进。

## 按飞行阶段着色的GPS轨迹

![按飞行阶段着色的GPS轨迹 — 起飞、爬升、巡航、下降、进近、着陆](/images/pilotleague-spring-2026-update/gps-track-phases.webp)
*图片来源：[pilotleague.com/zh/](https://pilotleague.com/zh/)*

这次更新还修复了一个长期困扰用户的 bug：很多人注意到自己的 GPS 轨迹在地图上显示为一条笔直的线，而不是真实的航迹。根本原因是 `profile_visibility` 查询**访问了错误的数据表**，触发 HTTP 500，前端因此**静默回退到直线**显示。

现已完全修复。新的 polyline 渲染按**飞行阶段**上色，一眼就能分辨：

- **起飞**
- **初始爬升**
- **爬升**
- **巡航**
- **下降**
- **进近**
- **着陆**
- **滑行**

为了应对长途航班（8 小时以上的洲际飞行），系统加入了**自适应采样**，可以稳定渲染 **1500+ 个遥测点的 10 小时长途航班**，在地图缩放时保持流畅。

## Streak（连飞天数）bug修复

连飞天数一直是社群里最常被提起的话题之一。旧版本存在**两个独立的 bug**：

1. **从不过期**：由于定时任务漏掉一条分支，streak 一旦开始就不会在错过一天后归零
2. **打开旧航班会覆盖 `last_flight_date`**：这意味着只要你点进一次 2024 年的航班重放，系统就把它当成"今天飞了一次"

这两个 bug **均已修复**。新的清理任务每晚 **00:05 CET** 执行，精确地判断每个用户的最后一次真实起飞。

连飞天数带来 **6 级阶梯奖励**，乘数从 **×1.00** 到 **×1.25**。但请记住一条最关键的规则：

> **Streak 只影响 XP（等级晋升），绝不影响评分或排名。**

这是 V2 设计的底线 —— 排行榜只看你**飞得有多好、有多稳**，不看你"是否每天打卡"。

## 公开站点与私有Front Office数据一致

很多飞行员以前担心公开页和私有后台会显示不同的数字。V2 彻底统一了这一点：**公开站点与私有 front office 共用同一份 V2 物化视图**。这意味着你在 [pilotleague.com/zh/rankings/](https://pilotleague.com/zh/rankings/) 看到的分数、在自己后台看到的分数，以及朋友访问你公开资料看到的分数，**始终一致**。

## 7种UI语言

整个平台（应用、公开站点、警报、排行榜）现已支持 **7 种 UI 语言**，中文（简体）是其中之一。从航班详情到安全警报，再到 FAQ 页，所有文本都经过本地化，而不是简单的机器翻译。

## 常见问题（FAQ）

**Q1：PilotLeague 是什么？**
PilotLeague 是一个面向 Microsoft Flight Simulator 2024 的免费伴侣应用和网络平台。它记录你的每一次飞行、给出着陆/SOP/安全/燃油效率的客观评分，并把结果汇总到公开的排行榜上。

**Q2：新的排行榜分数如何计算？**
公式为 `pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier`，基于最近 14 天的表现，带指数衰减，每 15 分钟刷新一次。

**Q3：连飞天数会影响我的排名吗？**
不会。连飞天数只影响 XP（等级晋升），绝不影响评分或排名。排行榜永远只衡量飞行质量与稳定性。

**Q4：PilotLeague 上的虚拟航空是什么？**
虚拟航空（VA）是一组飞行员，共用呼号、IATA 代码和徽标。你可以在应用中"设置 → 网络"里创建或加入一个 VA，所有成员的航班会自动归入该 VA。

**Q5：PilotLeague 是免费的吗？**
是的。伴侣应用和网络平台对所有 MSFS 2024 飞行员免费开放。

## 立即体验

- 总排行榜：[pilotleague.com/zh/rankings/](https://pilotleague.com/zh/rankings/)
- 着陆榜：[pilotleague.com/zh/rankings/landing/](https://pilotleague.com/zh/rankings/landing/)
- SOP 合规榜：[pilotleague.com/zh/rankings/sop/](https://pilotleague.com/zh/rankings/sop/)
- 燃油效率榜：[pilotleague.com/zh/rankings/fuel/](https://pilotleague.com/zh/rankings/fuel/)
- 下载伴侣应用：[pilotleague.com/zh/download/](https://pilotleague.com/zh/download/)

航线上见。

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    { "@type": "Question", "name": "PilotLeague 是什么？", "acceptedAnswer": { "@type": "Answer", "text": "PilotLeague 是一个面向 Microsoft Flight Simulator 2024 的免费伴侣应用和网络平台。它记录你的每一次飞行、给出着陆/SOP/安全/燃油效率的客观评分，并把结果汇总到公开的排行榜上。" } },
    { "@type": "Question", "name": "新的排行榜分数如何计算？", "acceptedAnswer": { "@type": "Answer", "text": "pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier，基于最近 14 天的表现，带指数衰减，每 15 分钟刷新一次。" } },
    { "@type": "Question", "name": "连飞天数会影响我的排名吗？", "acceptedAnswer": { "@type": "Answer", "text": "不会。连飞天数只影响 XP（等级晋升），绝不影响评分或排名。排行榜永远只衡量飞行质量与稳定性。" } },
    { "@type": "Question", "name": "PilotLeague 上的虚拟航空是什么？", "acceptedAnswer": { "@type": "Answer", "text": "虚拟航空（VA）是一组飞行员，共用呼号、IATA 代码和徽标。你可以在应用中设置 → 网络里创建或加入一个 VA，所有成员的航班会自动归入该 VA。" } },
    { "@type": "Question", "name": "PilotLeague 是免费的吗？", "acceptedAnswer": { "@type": "Answer", "text": "是的。伴侣应用和网络平台对所有 MSFS 2024 飞行员免费开放。" } }
  ]
}
</script>
