require_relative 'sort'
require 'benchmark'

iteration = 100_000

Benchmark.bm do |bm|
  bm.report ('insertion sort, reverse arr') do
    iteration.times do
      insert_sort ( [10,9,8,7,6,5,4,3,2,1,0])
    end
  end

  bm.report ('bubble sort, reverse arr') do
    iteration.times do
      bubble_sort ( [10,9,8,7,6,5,4,3,2,1,0])
    end
  end

  bm.report ('merge sort, reverse arr') do
    iteration.times do
      merge_sort ( [10,9,8,7,6,5,4,3,2,1,0])
    end
  end

  bm.report ('insertion sort, random arr') do
    iteration.times do
      insert_sort ( [3,4,6,54,5,87,-43,-212,3,12,45,7,543,67,879,9,3,2,34,56654,40,03,-1,-13,-234,230,23,2,345,77,045,405,39,322,-124,-345])
    end
  end

  bm.report ('bubble sort, random arr') do
    iteration.times do
      bubble_sort ( [3,4,6,54,5,87,-43,-212,3,12,45,7,543,67,879,9,3,2,34,56654,40,03,-1,-13,-234,230,23,2,345,77,045,405,39,322,-124,-345])
    end
  end

  bm.report ('merge sort, random arr') do
    iteration.times do
      merge_sort ( [3,4,6,54,5,87,-43,-212,3,12,45,7,543,67,879,9,3,2,34,56654,40,03,-1,-13,-234,230,23,2,345,77,045,405,39,322,-124,-345])
    end
  end
end