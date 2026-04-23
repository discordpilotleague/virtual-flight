---
title: "PilotLeague 2026春アップデート — 公平なMSFS 2024リーダーボードとVA"
description: "14日ローリングのリーダーボードでアクティブパイロットを評価、バーチャルエアライン、公開プロファイル、新しい安全アラート — MSFS 2024向けPilotLeague最大のアップデート。"
lang: 'ja'
pubDate: 'Apr 23 2026'
heroImage: '../../assets/hero-pilotleague-spring-2026-update.webp'
---

![バーチャルエアラインのチップとカテゴリータブを備えた PilotLeague V2 リーダーボード](../../assets/hero-pilotleague-spring-2026-update.webp)
*出典：[pilotleague.com/ja/rankings/](https://pilotleague.com/ja/rankings/)*

2026年春のアップデートは、[PilotLeague](https://pilotleague.com/ja/) がリリース以来取り組んできた最大級の改修です。Microsoft Flight Simulator 2024 向けの無料コンパニオンアプリは、新しいリーダーボードアルゴリズム、バーチャルエアライン、公開パイロットプロファイル、そして刷新された安全機能を迎え、バーチャルパイロットの上達をこれまで以上に明確に可視化します。

## 14日ローリングのリーダーボード V2

従来のランキングは、過去に多く飛んだパイロットが上位に残り続けるという問題を抱えていました。リーダーボード V2 はこれを根本から見直し、**14日間のローリングウィンドウ**と指数減衰を組み合わせた新しい式を採用しています。

```
pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier
```

スコアは**15分ごとに更新**され、カテゴリー別スコアは100を超えても頭打ちになりません。卓越したパフォーマンスは正しく評価されます。ランキングは4つのカテゴリーに分かれており、それぞれに**上位40名**と所属バーチャルエアラインのチップが表示されます。

- **ランディング** — タッチダウン時のバーチカルスピード、G、中心線
- **SOP** — 標準手順の遵守（チェックリスト、速度、高度）
- **セーフティ** — インシデント発生率、滑走路逸脱、空中衝突の回避
- **燃料効率** — 計画値と実績値の差、経済的な巡航プロファイル

公開サイトと認証済みのフロントオフィスは、**同一の V2 マテリアライズドビュー**を参照しており、数値の齟齬は発生しません。詳細は [PilotLeague ランキングページ](https://pilotleague.com/ja/rankings/)でご確認いただけます。

## バーチャルエアライン（VA）

チームで飛行する文化を応援するため、バーチャルエアラインの作成機能が追加されました。各 VA は以下の属性を持ちます。

- **slug**（URL 用識別子）
- **名称**
- **コールサイン**
- **IATA コード**
- **ロゴ**

VA は「**設定 → ネットワーク**」から誰でも作成でき、リーダーボード上のパイロットチップに反映されます。認証済み VA に付く**ブルーチェック**は、運営チームによって手動で付与されます。自動付与は行わず、実在性と運営品質を確認したうえで授与します。

## 公開パイロットプロファイル

![ワールドランク、レベル、統計、最新フライトを表示する PilotLeague の公開パイロットプロファイル](/images/pilotleague-spring-2026-update/public-pilot-profile.webp)
*出典：[pilotleague.com/ja/](https://pilotleague.com/ja/)*

`pilotleague.com/pilots/<username>` で参照できる公開プロファイルは、パイロットの名刺のような存在です。表示内容は次のとおりです。

- アイデンティティ（ユーザー名、アバター、所属 VA）
- ワールドランクバナー
- レベルと XP バー
- 主要統計（フライト数、総飛行時間、平均着陸スコア など）
- 直近30日の推移グラフ
- 最新10フライトのリスト

**可視性はパイロット単位で設定**できます。全公開、ログインユーザーのみ、あるいは非公開を選べます。アバターは**JPG/PNG**、**最大 512×512 ピクセル**、**2 MB 上限**で、アップロード時に円形クロップと NSFW チェックが自動で行われます。

## セーフティ UI の刷新

![PilotLeague フライト詳細ページの上部に表示される滑走路外着陸の赤いバナー](/images/pilotleague-spring-2026-update/off-runway-alert.webp)
*出典：[pilotleague.com/ja/](https://pilotleague.com/ja/)*

滑走路外着陸の検出は、誤検出を避けるため**500 ms の検出しきい値**と**5フレームのグレース**を組み合わせた新アルゴリズムに置き換わりました。いずれかの滑走路上でタッチダウンが成立しなかった場合、シムバーに「**ON ANY RUNWAY**」のインジケーターが表示され、フライト詳細ページの上部には赤いバナーが掲示されます。

ペナルティは**セーフティスコア −100 ポイント**。UI は**7言語**にローカライズされており、日本語ユーザーにも状況が一目で伝わります。

## GPS トラックの修正

![飛行フェーズごとに色分けされた GPS トラック — 離陸、上昇、巡航、降下、進入、着陸](/images/pilotleague-spring-2026-update/gps-track-phases.webp)
*出典：[pilotleague.com/ja/](https://pilotleague.com/ja/)*

GPS トラックが直線フォールバックで表示されてしまう既知の不具合がありました。原因は、`profile_visibility` を誤ったテーブルから取得していたことで、HTTP 500 が発生し、マップ描画が失敗した時点で直線表示に切り替わっていたというものです。**現在は修正済み**で、トラックはフェーズごとに色分けされたポリラインとして表示されます。

- 離陸
- 初期上昇
- 上昇
- 巡航
- 降下
- 進入
- 着陸
- タクシー

**適応サンプリング**を導入したため、10時間の太平洋横断フライトでも **1,500点を超えるテレメトリ**を破綻なく扱えます。長距離フライトでもスムーズに描画されます。

## Streak バグの修正

ストリーク（連続飛行日数）に2件のバグが確認されていました。1つ目は、ストリークが期限切れにならずに残り続けるケース。2つ目は、古いフライトを開くと `last_flight_date` が上書きされてしまうケースです。**両方とも修正済み**で、毎晩 **00:05 CET** にスイープジョブが走り、整合性を保ちます。

ストリークは**6段階のラダー（×1.00 → ×1.25）**で XP ブーストを提供しますが、**XP のみに作用**し、スコアやランキングには一切影響しません。焦らず飛ぶパイロットが不利になることはありません。

[PilotLeague の機能一覧](https://pilotleague.com/ja/features/)で全体像をご確認いただけます。

## FAQ

**Q1. PilotLeague とは何ですか？**
A. Microsoft Flight Simulator 2024 用の無料コンパニオンアプリおよび Web プラットフォームで、各フライトのパフォーマンスを記録・評価し、世界中のパイロットと順位を競えます。

**Q2. 新しいリーダーボードのスコアはどう計算されますか？**
A. `pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier` の式で算出し、14日ローリングウィンドウと指数減衰を適用します。15分ごとに更新されます。

**Q3. ストリークはランキングに影響しますか？**
A. いいえ。ストリークは XP（レベルアップ）のみを押し上げ、スコアやランキングには一切影響しません。

**Q4. PilotLeague のバーチャルエアラインとは？**
A. 共通のコールサイン、IATA コード、ロゴのもとで飛行するパイロットのグループです。「設定 → ネットワーク」から誰でも作成でき、ブルーチェックは運営が手動で付与します。

**Q5. PilotLeague は無料ですか？**
A. はい。コンパニオンアプリと Web プラットフォームは、すべての MSFS 2024 パイロットに無料で提供されています。

## 次のステップ

- [ランキングを見る](https://pilotleague.com/ja/rankings/)
- [ランディングランキング](https://pilotleague.com/ja/rankings/landings/)
- [SOP ランキング](https://pilotleague.com/ja/rankings/sop/)
- [セーフティランキング](https://pilotleague.com/ja/rankings/safety/)
- [PilotLeague をダウンロード](https://pilotleague.com/ja/download/)

トラフィックパターンでお会いしましょう。

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    { "@type": "Question", "name": "PilotLeague とは？", "acceptedAnswer": { "@type": "Answer", "text": "PilotLeague は Microsoft Flight Simulator 2024 用の無料コンパニオンアプリおよび Web プラットフォームです..." } },
    { "@type": "Question", "name": "新しいリーダーボードのスコアはどう計算されますか？", "acceptedAnswer": { "@type": "Answer", "text": "pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier..." } },
    { "@type": "Question", "name": "ストリークはランキングに影響しますか？", "acceptedAnswer": { "@type": "Answer", "text": "いいえ。ストリークは XP（レベルアップ）のみを上げ、スコアやランキングには一切影響しません..." } },
    { "@type": "Question", "name": "PilotLeague のバーチャルエアラインとは？", "acceptedAnswer": { "@type": "Answer", "text": "バーチャルエアライン（VA）は、共通のコールサイン、IATA コード、ロゴのもとで飛行するパイロットのグループです..." } },
    { "@type": "Question", "name": "PilotLeague は無料ですか？", "acceptedAnswer": { "@type": "Answer", "text": "はい。コンパニオンアプリと Web プラットフォームは、すべての MSFS 2024 パイロットに無料で提供されています。" } }
  ]
}
</script>
