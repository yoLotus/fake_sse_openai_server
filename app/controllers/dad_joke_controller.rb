class DadJokeController < ApplicationController
  include ActionController::Live

  protect_from_forgery with: :null_session

  CHUNKS = [
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"role":"assistant","content":""},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":"Why"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":" did"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":" the"},"finish_reason": nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":" scare"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":"crow"},"finish_reason":'length'}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":" win"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":" an"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":" award"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":"?\n\n"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":"Because"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":" he"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":" was"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":" outstanding"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":" in"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":" his"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":" field"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":"..."},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":" just"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":" like"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":" a"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":" great"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":" dad"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{"content":"!"},"finish_reason":nil}]},
    {"id":"chatcmpl-8SR76rSinLKc5uj1RxZnhChwDVRwg","object":"chat.completion.chunk","created":1701788100,"model":"gpt-3.5-turbo-16k-0613","system_fingerprint":nil,"choices":[{"index":0,"delta":{},"finish_reason":"stop"}]},
    '[DONE]'
  ]

  def show
    response.headers['Content-Type'] = 'text/event-stream'
    response.headers['Last-Modified'] = Time.now.httpdate

    sse = SSE.new(response.stream)

    CHUNKS.each do |chunk|
      puts "chunk => #{chunk}"
      sse.write(chunk)
      sleep 0.1
    end
  ensure
    sse.close
  end
end
