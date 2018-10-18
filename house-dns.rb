#! /usr/bin/env ruby

require 'bundler'
Bundler.require

INTERFACES = [
  [:udp, '0.0.0.0', 5300],
  [:tcp, '0.0.0.0', 5300],
]

IN = Resolv::DNS::Resource::IN

UPSTREAM = RubyDNS::Resolver.new([
  [:udp, '8.8.8.8', 53],
  [:tcp, '8.8.8.8', 53],
])

RubyDNS::run_server(INTERFACES) do
  match(%{test.local}, IN::A) do |transaction|
    transaction.respond!('10.0.0.80')
  end

  otherwise do |transaction|
    transaction.passthrough!(UPSTREAM)
  end
end
