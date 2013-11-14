require 'decisiontree'

assets = [
["Yoga", "Fitness Yoga Level I" ],
 ["Swimming", "Swim: Level - Parrotfish (GRWP)" ],
 ["Guitar", "Guitar/PreTeen Beginner Thu 6:45 pm (Ages 10-13)" ],
 ["Creative writing", "Writing  Master the skills of writing sketch comedy in this four-level program  designed for writers and actors of all experience levels.  Learn basic  scene structure, character development, establish action, and learn the  styles and genres of comedy.  Weekly writing assignments   &   in-class  exercises generate material and establish a regular writing schedule.   " ],
 ["Drawing and drafting", "Art Discovery Studio Sat am (Ages 6-9) S2 Session 2: Students develop their creativity and visual   arts skills in a studio setting as they explore a variety of art media   and techniques. Projects created in class emphasize the use of   fundamental art forms including drawing, painting, printmaking, and   sculpting. Students who wish to experience various media and creative   discovery may enroll in this class on an ongoing basis. Students who   show a strong interest or skill in a particular art form are encouraged   to enroll in the appropriate class to further their development.  " ],
 ["Ballet", "Ballet   Tap-Parent   Me #03 March 6:00 pm(2-4yrs)" ],
 ["Dance", "Tiny Tots 2-3 Year Olds" ],
 ["Zumba", "Zumba: yrs+ Mon 6p 10/1-10/29 Zumba is a fusion of Latin and world beats, combined with fun and easy-to-follow steps. Zumba gives workout a new meaning; you can burn up to calories in one hour, thanks to a perfect mixture of fast and slow rhythms, resistance and muscle toning.   " ],
 ["Swimming", "Sw-S5 L1B 11:30-12:00 pm @ PHS Introduction to water activities, good swimming habits, and  safe practices in and around the water.  " ],
 ["Zumba", "Zumba Gold Punchcards: JULY" ],
 ["Tae Kwon Do", "Tae Kwon Do (Age 11+) Tae-Kwon-Do is an outstanding sport that encourages individuality, teaches discipline and control and gets you in great shape. For kids and adults alike Fred has been teaching for over years and encourages a non-contact style.  " ],
 ["Music", "01: Family Music I Tuesday 4:15 pm" ],
 ["Zumba", "Zumba!" ],
 ["Ballet", "Dance Class - Beginning Ballet/Tap This class is for dancers six and older, is more structured introduction to the discipline of ballet and consists of barre and center work, with concentration on further steps as well as stretching and alignment.  Tap combinations are more complex than in classes for younger students.  Students will have a solid technical background for further dance study and will evolve into dancers possessing self confidence and presentation skills which will be shown in their recital dance. If you have questions contact Mary McGehee at 404-695-7563 or  smyrnadancers@gmail.com  " ],
 ["Swimming", "Level 2: Primary Skills" ],
 ["Karate", "Monthly Karate- Intermediate/Advanced" ],
 ["Music", "01: Rock Week,  July" ],
 ["Ballroom dance", "Tweens Ballroom Dance" ],
 ["Piano", "Piano Learning to play the piano is a great way to introduce a child to the world of music.  This class starts with basic piano skills and music reading.  Giving your child the opportunity to take piano lessons allows them to learn and share a much cherished talent.   Keyboards and materials are provided.  " ],
 ["Hip Hop dance", "Pre-School Tumbling/ Hip Hop" ],
 ["Distance running", "Santito Youth Talent Ministry Mile Run/Walk" ],
 ["Yoga", "Pre/Post-Natal Yoga M Yoga is an ideal form of exercise before, during, and after pregnancy, and is safe and nurturing, Maintain strength and flexibility, combat fatigue, swelling, back ache and nausea, calm nerves and increase relaxation while reducing common discomforts. Moms and babies welcome. Instructor: Dana Chamblin.  " ],
 ["Dance", "Cardio Line Dancing at Haines This activity takes line dancing to a whole new level. Get a cardiovascular workout and learn a variety of moves and experience many genres of music.  " ],
 ["Distance running", "The 32nd Annual Skunk Cabbage Classic Run Preregistration: $20, must be postmarked by Friday, February 15, 2013; $25.00 from February16, 2013-April 8th, 2013. Race day registration $35 until 9:45 a.m. race day.  " ],
 ["Photography", "Photography Class with Ron St. Germain Whether your camera is an old one from the closet or the newest technology, this class will familiarize you with all of its buttons and functions. You will learn the basics in a fun and easily understood way with entertaining slide presentations and plenty of time to ask questions each week from 5-time International Award winning outdoor photographer, Ron St. Germain. For detailed information, check his website at  www.daphotodude.com .  " ],
 ["Creative writing", "Memoir Writing (6/27-7/18)Memoirs are your memories. Learn how to convert your memories into interesting stories to pass down to future generations. Participants will learn how to connect with the great, great, great grandchildren that they will never meet and show them what their lives were like.   " ],
 ["Yoga", " Fall Exercise, 01a Mommy   Me (Mon)" ],
 ["Dance", "Level 4/5, January Dance Intensive" ],
 ["Trumpet", "TRUMPET- minute, Roger Lent" ],
 ["Dance", "Country Line Dancing:18+ Th 540p 10/25-12/6 Come out and click your heels to a fun and energizing new class designed with the beginner in mind but sure to be invigorating for all levels. You will learn basic steps as well as choreographed dance routines. Improve muscle tone and flexibility while dancing to your favorite country tunes. Students should wear comfortable, casual clothing and shoes that slide around the floor such as cowboy boots, leather soled sdress or dance shoes. Do not wear rubber soled shoes or shoes that grip the floor.  " ],
 ["Tennis", "Tennis - Ralleyball  Join thousands of new tennis players in one of the fastest growing games in the country. But, this is not your traditional tennis lesson! This is Ralleyball...the FUN way to learn and play tennis! Using the NEW Quick Start Format - age   &   skill appropriate racquets, balls,   &   courts - and a games-based approach to learning, players will be able to rally in minutes and learn the fundamentals of the game in a team-oriented environment.  " ],
 ["Tai chi", "Adult 18+ Easy Tai Chi " ],
 ["Aerobics", "Hustle Aerobics" ],
 ["Swimming", "Aqua Tots Level - Frogs This class focuses on guiding students to independently bob, float, glide, and move on their front and back using coordinated arm and leg motion.  " ],
 ["Swimming", "Private Lessons Private Lessons  " ],
 ["Swimming", "Swim Lessons Session Preschool Level 7:30pm" ],
 ["Drawing and drafting", "Drawing from the Very Beginning Saturday This introductory class is for those who claim they can't even draw a straight line! Students will work from still life arrangements and progress to nude figure studies, learning to draw what they see in charcoal, ink and pencil.  " ],
 ["Zumba", "Fitness Class - ZUMBA Zumba combines high energy Latin and International music with easy to follow body sculpting and dance combinations. Ditch the workout! Join the party! All levels!  *Bring a mat or towel for optional minute ab work!  " ],
 ["Swimming", "Elite Swim Training - Sp - Thur" ],
 ["Dance", "Salsa: Sexy Bachata" ],
 ["Aquatic sports", "Aquatic Exercise II - Low Impact at Welles Instructor led group exercise activity for the general population adaptable for individual pace andintensity. Participants move at a slow pace in this low to moderate intensity activity, while doing less intense exercises in chest deep water. The aquatic environment is easy on the joints and offers more resistance. General activity format includes a warm up, cardio work, strengthening work and cool down. No swimming experience needed.  " ],
 ["Yoga", "Yoga Class - Pre-Natal Yoga This class will help you develop strength, stamina and stability, not to mention soothe the aches of pregnancy. Juanita's class will prepare your mind and body for birth. At the last class daddies are encouraged to join the class.  (No class March 31)  " ],
 ["Swimming", "Goldfish" ],
 ["Yoga", "Vinyasa Yoga - Session  This is a flowing yoga where the breath dictates the movement.  Emphasis will be on fluid, flowing motion, as opposed to holding static poses.  Vinyasa is an energetic style best suited to those in fairly good condition.  " ],
 ["Kayaking", "Christmas in a Kayak! Come out with Santa for some fun in the sun! Santa will join us on a kayaking adventure down to Northshore Park where we will do a present hunt! *Riva Row Boat House rules apply to this program! Adult must accompany a child in the kayak and sign waiver for boat use.  " ],
 ["Drawing and drafting", "Drawing   Painting for the Young Artist -Session " ],
]

labels = ["name", "description"]

dec_tree = DecisionTree::ID3Tree.new(labels, assets, 10, :discrete)
dec_tree.train

new_asset = ["Swimming", "Preschool Aquatics Fall  Early Bird Price (available ONLINE at pm August 15- midnight August 21): $55M/$61R   " ]

decision = dec_tree.predict(new_asset)
puts "Predicted: #{decision} ... True decision: #{new_asset.last}";

