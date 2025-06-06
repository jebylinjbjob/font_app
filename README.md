# Font App

一個用於字體管理和預覽的 Flutter 應用程式。

## 功能特點

- 字體瀏覽和預覽
- 字體收藏功能
- 字體搜尋功能
- 個人化設定

## 開始使用

### 前置需求

- Flutter SDK (^3.7.2)
- Dart SDK (^3.0.0)
- 有效的網際網路連接

### 安裝步驟

1. 克隆專案：
```bash
git clone [your-repository-url]
cd font_app
```

2. 安裝依賴：
```bash
flutter pub get
```

3. 創建 .env 檔案：
在專案根目錄創建 `.env` 檔案並添加以下內容：
```
API_URL=your_api_url_here
```

4. 運行應用程式：
```bash
flutter run --dart-define=API_URL=your_api_url
```

## 專案結構

```
font_app/
  ├── lib/
  │   ├── main.dart
  │   └── [其他源碼文件]
  ├── assets/
  │   ├── images/
  │   └── fonts/
  ├── .env
  └── pubspec.yaml
```

## 環境變數

應用程式使用以下環境變數：

- `API_URL`: API 服務的基礎 URL

## API 響應格式

API 需要返回以下格式的 JSON：

```json
{
  "items": [
    {
      "id": "font_id",
      "title": "字體名稱"
    }
  ]
}
```

## 開發說明

- 使用 `flutter_dotenv` 管理環境變數
- 使用 `shared_preferences` 進行本地數據存儲
- 使用 `cached_network_image` 處理圖片快取
- 使用 `http` 包處理 API 請求

## 注意事項

1. 確保 `.env` 檔案已正確配置
2. API URL 必須是有效的 HTTPS URL
3. 確保網路連接可用

## 故障排除

如果遇到問題：

1. 檢查 API URL 配置
2. 確認網路連接
3. 檢查 API 響應格式
4. 查看控制台錯誤訊息

## 貢獻指南

歡迎提交 Pull Requests 來改進專案。請確保：

1. 程式碼符合 Flutter 風格指南
2. 添加適當的註釋
3. 更新文檔（如需要）

## 授權

[您的授權聲明]
