# docker-compose.yml で定義する `REDIS_URL: redis://redis:6379`が入る。
REDIS ||= Redis.new(url: ENV['REDIS_URL'] || 'redis://localhost:6379')
