require 'open-uri'

# Certificates
cerificate_photos = [
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613927868/perso/Screenshot_2021-02-21_at_17.17.14_ups86h.png',
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613927869/perso/Screenshot_2021-02-21_at_17.16.52_x9iq01.png',
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613927869/perso/Screenshot_2021-02-21_at_17.16.38_oeltnm.png',
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613927868/perso/Screenshot_2021-02-21_at_17.16.23_edzyi8.png',
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613927867/perso/Screenshot_2021-02-21_at_17.16.08_ifapzf.png',
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613927866/perso/Screenshot_2021-02-21_at_17.15.50_kwzgkl.png'
]

new_certificate_photos = cerificate_photos.map do |photo|
  URI.open(photo)
end

names = [
  'SQL - MySQL for Data Analytics and Business Intelligence',
  'Python A-Z: Python for Data Science With Real Exercises',
  'Wordpress for Beginners - Master Wordpress Quickly',
  'The Complete JavaScript course 2020',
  'The 2020 Complete Web Development Bootcamp',
  'Software Engineering Virtual Experience Program Participant'
]

institutions = [
  'Udemy',
  'Udemy',
  'Udemy',
  'Udemy',
  'London App Brewery',
  'JPMorgan Chase & Co.'
]

urls = [
  'https://www.udemy.com/certificate/UC-5f338a19-bd32-4a7e-9bad-6885f4796991/',
  'http://ude.my/UC-6367160d-3660-4d57-ae31-00c249f1cbb4',
  'https://www.udemy.com/certificate/UC-6ef2475f-84a2-484f-9df9-49d6b33aa54d/',
  'https://www.udemy.com/certificate/UC-fdbdf01e-7bb0-4f48-85b6-d6de65798bc5/',
  'https://www.udemy.com/certificate/UC-af901f80-5a0a-4de4-bad9-8bc8df7dc688/',
  'https://insidesherpa.s3.amazonaws.com/completion-certificates/JP%20Morgan/R5iK7HMxJGBgaSbvk_JPMorgan%20Chase_Ry2T9hfQEQXmkFQry_completion_certificate.pdf'
]

names.each_with_index do |e, i|
  certificate = Certificate.create(name: e, institution: institutions[i], url: urls[i])
  certificate.photo.attach(io: new_certificate_photos[i], filename: "certificate#{i + 1}.jpg", content_type: 'image/jpg')
end

# add education

educ_names = [
  'James Madison University',
  'Le Wagon'
]

educ_desc = [
  '- Completed a Bachelor of Science in Economics with a concentration in Quantitative Economics.
  - Concentrated primarily on Econometrics completing courses in Cross-sectional, Time-Series, and Panel Data.
  - Completed multiple papers/projects on a diverse set of topics including GDP and CPI Growth, Sports Betting and its
  effects on the Economy, Alcohol Consumption across US States, and the Elasticity of Gasoline consumption.
  - Explored a vast range of subjects including programming, mathematics, geography, and many more.
  - Was named to the Deans List five times: Spring 18’, Fall 18’, Spring 18’, Fall 19’, Spring 20’.
  - Was also titled an ITA Scholar-Athlete. “First JMU mens tennis player tabbed a Scholar-Athlete since 2006” 
  (JMU Sports Article).',
  '
    - 9 Week intensive bootcamp covering everything to do with Full-Stack Web Development.
    - Ruby
    - Ruby on Rails
    - JavaScript, CSS, HTML, and Bootstrap
    - Object-Oriented Programming
    - Database management with SQL
  '
]

educ_names.each_with_index do |e, i|
  Education.create(name: e, description: educ_desc[i])
end

# add languages

langs = [
  'Ruby',
  'Ruby on Rails',
  'JavaScript',
  'Python',
  'SQL',
  'Node.js',
  'React',
  'HTML5',
  'CSS3',
  'jQuery',
  'Git',
  'MongoDB'
]

langs.each do |e|
  Language.create(name: e)
end

# add projects



proj_backgrounds = [
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613924798/perso/proj1_qyrmvb.jpg',
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613924845/perso/proj11_pdwljz.jpg',
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613924797/perso/proj2_oliq98.jpg',
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613924797/perso/proj3_kugw8z.jpg',
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613924797/perso/proj4_ynzy3h.jpg',
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613924797/perso/proj5_c2d6dv.jpg',
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613924797/perso/proj6_tkb77v.jpg',
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613924797/perso/proj8_lefkpe.jpg',
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613924797/perso/proj7_rs3vr2.jpg',
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613924796/perso/proj12_wknaz6.jpg',
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613924797/perso/proj10_dotj70.jpg',
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613924796/perso/proj9_f7gx67.jpg',
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613924796/perso/proj13_mshksr.jpg',
  'https://res.cloudinary.com/dc1w9349i/image/upload/v1613925677/perso/proj14_iljqeq.jpg'
]

new_proj_bg = proj_backgrounds.map do |url|
  URI.open(url)
end

projs = [
  'My Own Website',
  'Cannes Website',
  'Spicybrew',
  'Minibnb',
  'Enerd',
  'Movie Database',
  'Slack Copy',
  'Open Component',
  'Dr SuperMarket',
  'Simple Encrypt',
  'Snake Game',
  'Blog Me',
  'Reaction Game',
  'Rest Programming'
]

proj_urls = [
  'https://github.com/damonspencerroberts/damon-roberts',
  'https://github.com/damonspencerroberts/cannes-website',
  'https://github.com/damonspencerroberts/rails-mister-cocktail',
  'https://github.com/damonspencerroberts/rails-simple-airbnb',
  'https://github.com/damonspencerroberts/rails-enerd',
  'https://github.com/damonspencerroberts/Movie-Database',
  'https://github.com/damonspencerroberts/slack-copy',
  'https://github.com/damonspencerroberts/open-component',
  'https://github.com/damonspencerroberts/dr-supermarket',
  'https://github.com/damonspencerroberts/Simple-Encrypt-',
  'https://github.com/damonspencerroberts/Snake-Game',
  'https://github.com/damonspencerroberts/blog-me',
  'https://github.com/damonspencerroberts/Reaction-Game',
  'https://github.com/damonspencerroberts/RESTful-API-Programming-Descriptions'
]

projs.each_with_index do |e, i|
  p e
  p i
  project = Project.create(name: e, github_url: proj_urls[i])
  project.photos.attach(io: new_proj_bg[i], filename: "project#{i + 1}.jpg", content_type: 'image/jpg')
end

# add UsedLanguage

UsedLanguage.create(project_id: 1, language_id: 1)
UsedLanguage.create(project_id: 1, language_id: 2)
UsedLanguage.create(project_id: 1, language_id: 3)
UsedLanguage.create(project_id: 1, language_id: 5)
UsedLanguage.create(project_id: 1, language_id: 8)
UsedLanguage.create(project_id: 1, language_id: 9)

UsedLanguage.create(project_id: 2, language_id: 7)
UsedLanguage.create(project_id: 2, language_id: 8)
UsedLanguage.create(project_id: 2, language_id: 9)

UsedLanguage.create(project_id: 3, language_id: 1)
UsedLanguage.create(project_id: 3, language_id: 2)
UsedLanguage.create(project_id: 3, language_id: 3)
UsedLanguage.create(project_id: 3, language_id: 5)
UsedLanguage.create(project_id: 3, language_id: 8)
UsedLanguage.create(project_id: 3, language_id: 9)

UsedLanguage.create(project_id: 4, language_id: 1)
UsedLanguage.create(project_id: 4, language_id: 2)
UsedLanguage.create(project_id: 4, language_id: 3)
UsedLanguage.create(project_id: 4, language_id: 5)
UsedLanguage.create(project_id: 4, language_id: 8)
UsedLanguage.create(project_id: 4, language_id: 9)

UsedLanguage.create(project_id: 5, language_id: 1)
UsedLanguage.create(project_id: 5, language_id: 2)
UsedLanguage.create(project_id: 5, language_id: 3)
UsedLanguage.create(project_id: 5, language_id: 5)
UsedLanguage.create(project_id: 5, language_id: 8)
UsedLanguage.create(project_id: 5, language_id: 9)

UsedLanguage.create(project_id: 6, language_id: 1)
UsedLanguage.create(project_id: 6, language_id: 8)
UsedLanguage.create(project_id: 6, language_id: 9)

UsedLanguage.create(project_id: 7, language_id: 8)
UsedLanguage.create(project_id: 7, language_id: 9)

UsedLanguage.create(project_id: 8, language_id: 8)
UsedLanguage.create(project_id: 8, language_id: 9)

UsedLanguage.create(project_id: 9, language_id: 1)

UsedLanguage.create(project_id: 10, language_id: 1)

UsedLanguage.create(project_id: 11, language_id: 1)

UsedLanguage.create(project_id: 12, language_id: 7)
UsedLanguage.create(project_id: 12, language_id: 8)
UsedLanguage.create(project_id: 12, language_id: 9)

UsedLanguage.create(project_id: 13, language_id: 7)
UsedLanguage.create(project_id: 13, language_id: 8)
UsedLanguage.create(project_id: 13, language_id: 9)

UsedLanguage.create(project_id: 14, language_id: 6)
UsedLanguage.create(project_id: 14, language_id: 12)
UsedLanguage.create(project_id: 14, language_id: 8)
UsedLanguage.create(project_id: 14, language_id: 9)
