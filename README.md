# Orchid

Orchid is a web content aggregation service. Registered users can submit links which are then upvoted or downvoted by other users.

## Requirements:

* Ruby version - 2.5.1
* Bundle version - 1.16.2
* Rails version - 5.2.0
* Redis-server - 3.0.7 (port: 6375)

## Initial Setup
1. bundle install
2. rails db:migrate
3. rails server
4. redis-server