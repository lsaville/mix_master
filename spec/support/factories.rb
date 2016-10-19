FactoryGirl.define do
  factory :artist do
    sequence :name do |n|
      "#{n} Artist"
    end
    image_path "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
  end

  factory :song do
    sequence :title, ["A", "C", "B"].cycle do |n|
      "#{n} Title"
    end
    artist
  end

  factory :playlist do
    sequence :name do |n|
      "#{n} Playlist"
    end
  end
end
