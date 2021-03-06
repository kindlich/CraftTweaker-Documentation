# SleepingTimeCheck

このイベントは、睡眠中のプレイヤーが指定した時間にスリープ状態を継続できるかどうかを確認するときに発生します。 アクションを決定する **結果** がある場合。

Result:
- **デフォルト**, `World::isDaytime` のバニラロジックが参照される。
- ****を許可すると、関係なくプレーヤーが眠り続けることができます
- **Deny** is specially ***ignored*** in this instance, and does nothing.

このように、このイベントは、プレイヤーをスリープ状態に保つことができますが、具体的にスリープ状態からそれらを停止することはできません。

## イベントクラス
関数ヘッダーのイベントをこのクラスとしてキャストする必要があります:  
`crafttweaker.event. leepingTimeCheck <br x-id="2" /> 
 <code>`  
もちろん、 [インポート](/AdvancedFunctions/Import/) 前にクラスをインポートし、その名前を使用することもできます。

## イベントインターフェースの拡張
SleepingTimeCheck イベントは、以下のインターフェイスを実装し、それらのメソッド/getters/setters/setterをすべて呼び出すことができます。

- [IEventPositionable](/Vanilla/Events/Events/IEventPositionable/)
- [IPlayerEvent](/Vanilla/Events/Events/IPlayerEvent/)
- [IEventHasResult](/Vanilla/Events/Events/IEventHasResult/)
