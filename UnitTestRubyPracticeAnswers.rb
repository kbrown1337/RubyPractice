# Ruby Practice Practicum
# Larry Kiser
# 9/25/2015

require 'test/unit'
require './RubyPracticeAnswers'

class TestRubyPractice < Test::Unit::TestCase
  # def setup
  # end

  # def teardown
  # end

  # DO NOT MODIFY this unit test!!!!!!!
  def test1_DistanceConverter
    distance = DistanceConverter.new( 5, 2 )
	assert( distance.inches == 62, "Inches calculation is wrong" )
	assert( distance.centimeters == 62 * 2.54, "Centimeters calculation is wrong" )
  end
  
  # DO NOT MODIFY this unit test!!!!!!!
  def test2_ProjectMeasurements
	project = ProjectMeasurements.new
	project.add('window width', 2, 6 )
	assert( project.getMeasurementInches('window width') == 30, "window width is wrong" )
	assert( project.numberOfMeasurements == 1, "number of measurements is wrong" )
  end
  
  # Fill in this unit test
  def test3_ProjectMeasurements
	# Add three measurements to a new instance of ProjectMeasurements: 
	# door1 is 2 feet 9 inches, door2 is 3 feet 0 inches, and door3 is 3 feet 2 inches
	project = ProjectMeasurements.new
	project.add( 'door1', 2, 9 )
	project.add( 'door2', 3, 0 )
	project.add( 'door3', 3, 2 )
	# Add a unit test to determine that the numberOfMeasurements is 3
	assert( project.numberOfMeasurements == 3, "Number of measurements is wrong" )
	# Add a unit test to addTwoMeasurementsInInches( 'door1', 'door3' ) and confirm that
	#     the answer is correctly calculated (71 inches is the expected result).
	assert( project.addTwoMeasurementsInInches( 'door1', 'door3' ) == 71, "addTwoMeasurementsInInches is wrong" )
  end
end