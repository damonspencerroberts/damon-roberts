# Certificates
names = [
  'SQL - MySQL for Data Analytics and Business Intelligence',
  'Python A-Z: Python for Data Science With Real Exercises',
  'Learning Github',
  'Wordpress for Beginners - Master Wordpress Quickly',
  'The Complete JavaScript course 2020',
  'The 2020 Complete Web Development Bootcamp',
  'Software Engineering Virtual Experience Program Participant',
  'Learn the Command Line Course',
  'Learn Ruby on Rails',
  'Learn Ruby'
]

institutions = [
  'Udemy',
  'Udemy',
  'LinkedIn',
  'Udemy',
  'Udemy',
  'London App Brewery',
  'JPMorgan Chase & Co.',
  'Codecademy',
  'Codecademy',
  'Codecademy'
]

urls = [
  'https://www.udemy.com/certificate/UC-5f338a19-bd32-4a7e-9bad-6885f4796991/',
  'http://ude.my/UC-6367160d-3660-4d57-ae31-00c249f1cbb4',
  'http://www.linkedin.com/learning/learning-github?trk=flagship-lil_details_certification',
  'https://www.udemy.com/certificate/UC-6ef2475f-84a2-484f-9df9-49d6b33aa54d/',
  'https://www.udemy.com/certificate/UC-fdbdf01e-7bb0-4f48-85b6-d6de65798bc5/',
  'https://www.udemy.com/certificate/UC-af901f80-5a0a-4de4-bad9-8bc8df7dc688/',
  'https://insidesherpa.s3.amazonaws.com/completion-certificates/JP%20Morgan/R5iK7HMxJGBgaSbvk_JPMorgan%20Chase_Ry2T9hfQEQXmkFQry_completion_certificate.pdf',
  'https://www.codecademy.com/profiles/object8690022299/certificates/c87ba0541f8be78bc2f4ba1128233f6f',
  'https://www.codecademy.com/profiles/object8690022299/certificates/13df149ad4f7cadbb4c65603fb695cf8',
  'https://www.codecademy.com/profiles/object8690022299/certificates/1c05e0382bc5681c824c4cbe85c126fd'
]

names.each_with_index do |e, i|
  Certificate.create(name: e, institution: institutions[i], url: urls[i])
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

projs = [
  'My Own Website',
  'Cannes Website',
  'Spicybrew',
  'Minibnb',
  'Enerd',
  'Movie Database',
  'Slack Copy',
  'Open Component Challenge',
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
  Project.create(name: e, github_url: proj_urls[i])
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
