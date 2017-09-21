require 'test_helper'

class GeohashRbTest < Minitest::Test
  def test_in_circle_check
    assert GeohashRb::Proximity.in_circle_check(12, 77, 12.1, 77, 100)
  end

  def test_in_circle_check_false
    assert GeohashRb::Proximity.in_circle_check(12, 75, 33.1, 77, 100), false
  end

  def test_get_centroid
    assert_equal GeohashRb::Proximity.get_centroid(10,10,10,10), [15, 15]
  end

  def test_convert_to_latlon
    assert_equal GeohashRb::Proximity.convert_to_latlon(1000.0,1000.0, 12.0, 77.0), [12.008993216059187, 77.0091941298557]
  end

  def test_create_geohash
    expected = "tdnu20t9,tdnu20t8,tdnu20t3,tdnu20t2,tdnu20mz,tdnu20mx,tdnu20tc,tdnu20tb,tdnu20td,tdnu20tf".split(',').sort
    assert_equal GeohashRb::Proximity.create_geohash(12.0, 77.0, 20.0, 8).split(',').sort, expected
  end

  def test_get_combinations
    string = 'tdnu2'
    combinations = ['tdnu20', 'tdnu21', 'tdnu22', 'tdnu23', 'tdnu24', 'tdnu25', 'tdnu26', 'tdnu27', 'tdnu28', 'tdnu29',
                    'tdnu2b', 'tdnu2c', 'tdnu2d', 'tdnu2e', 'tdnu2f', 'tdnu2g', 'tdnu2h', 'tdnu2j', 'tdnu2k', 'tdnu2m',
                    'tdnu2n', 'tdnu2p', 'tdnu2q', 'tdnu2r', 'tdnu2s', 'tdnu2t', 'tdnu2u', 'tdnu2v', 'tdnu2w', 'tdnu2x',
                    'tdnu2y', 'tdnu2z']

    output = GeohashRb::Proximity.get_combinations(string)
    assert_equal(output, combinations)
  end

  def test_compress
    geohashes = ['tdnu20', 'tdnu21', 'tdnu22', 'tdnu23', 'tdnu24', 'tdnu25', 'tdnu26', 'tdnu27', 'tdnu28', 'tdnu29',
                 'tdnu2b', 'tdnu2c', 'tdnu2d', 'tdnu2e', 'tdnu2f', 'tdnu2g', 'tdnu2h', 'tdnu2j', 'tdnu2k', 'tdnu2m',
                 'tdnu2n', 'tdnu2p', 'tdnu2q', 'tdnu2r', 'tdnu2s', 'tdnu2t', 'tdnu2u', 'tdnu2v', 'tdnu2w', 'tdnu2x',
                 'tdnu2y', 'tdnu2z']

    final_geohash = ['tdnu2']

    output = GeohashRb::Proximity.compress(geohashes)
    assert_equal(final_geohash, output)

  end

end
