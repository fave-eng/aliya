-- Только маршрутизация Telegram для ученицы Алии. Выполнено в Supabase 19.10.2026.
-- Этот файл можно использовать повторно для сверки / восстановления настройки.
-- Соответствует ссылке https://t.me/c/3845595810/2
INSERT INTO public.telegram_recipients (student_id,chat_id,message_thread_id,enabled)
VALUES ('alia',-1003845595810,2,true)
ON CONFLICT (student_id) DO UPDATE
SET chat_id=EXCLUDED.chat_id,
    message_thread_id=EXCLUDED.message_thread_id,
    enabled=TRUE,
    updated_at=now();
