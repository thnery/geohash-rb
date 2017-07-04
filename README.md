# GeohashRb

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'geohash_rb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install geohash_rb

## Usage

### From GeoHash to Geolocation
```ruby
GeohashRb.decode("7nx4jpm")
# => -8.04542542, -34.92897034
```

### From Geolocation to GeoHash
```ruby
GeohashRb.encode(-8.04542542, -34.92897034, 7)
# => 7nx4jpm
```

### Getting Neighbors
```ruby
GeohashRb.neighbors("7nx4jpm")
# => ["7nx4jpt", "7nx4jpw", "7nx4jpq", "7nx4jpn", "7nx4jpj", "7nx4jph", "7nx4jpk", "7nx4jps"]
```

### Getting Parent Neighbors
```ruby
GeohashRb.parent_neighbors("7nx4jpm")
# => ["7nx4jn", "7nx4jq", "7nx4jr", "7nx4jp"]
```

### Getting Adjacents
Set the desired adjacent position parameter as (:left, :right, :top, :bottom)
```ruby
GeohashRb.adjacent("7nx4jpm", :left)
# => "7nx4jpk"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mesainc/geohash-rb.
