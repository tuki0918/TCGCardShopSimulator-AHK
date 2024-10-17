; TCG Card Shop Simulator
; カードパックを開封するためのAutoHotkeyスクリプト
;
; ＊使い方
; - 1. ゲームを起動し、事前にカードパックを棚に陳列します（推奨：個人棚）
; - 2. 本スクリプトを起動します
; - 3. 自動処理開始のメッセージが表示されるので、ゲーム画面をアクティブにします
; - 3-1. ゲーム内の視点をカードパックに合わせておきます
; - 4. 自動的にカードパックが開封されます（1パック=約45秒）
; ＊終了方法
; - ESC キーを押す

Esc:: {
    MsgBox "自動処理を停止します"
    ExitApp
}

MsgBox "自動処理を開始します（5秒後）"
Sleep(5000)

Loop {
    ; 右クリック：アイテムを取る（4秒）
    Click("right", "down")
    Sleep(4000)
    Click("right", "up")

    ; Rキー：オープンパック
    Send("r")

    ; 開封する（40秒）
    Loop 40 {
        ; 左クリック（1秒間隔）
        Click("left", "down")
        Sleep(1000)
    }

    Click("left", "up")
}