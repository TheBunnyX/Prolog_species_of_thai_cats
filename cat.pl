/*Khaotham
khaomanee
vichianmas
supalak
korat
gonja
padsarved
karavek
ninjark
gobwan*/

%eyes % 1.หาสายพันธ์ุเเมวจากสีตา
eyes(khaotham, yellow).
eyes(khaomanee, many).
eyes(vichianmas, blue).
eyes(supalak, yellow).
eyes(korat, green).
eyes(gonja, yellow).
eyes(padsarved, green).
eyes(karavek, yellow).
eyes(ninjark, green).
eyes(gobwan, yellow).


%color_fur() %2.หาสายพันธ์ุเเมวจากสีขน
color_fur(khaotham,black_and_white).
color_fur(khaomanee,white).
color_fur(vichianmas,white_and_light_brown).
color_fur(vichianmas,burnt_brown).
color_fur(supalak,dark_brown).
color_fur(supalak,copper).
color_fur(korat,grey).
color_fur(gonja,black).
color_fur(padsarved,black_and_white).
color_fur(karavek,black_and_white).
color_fur(ninjark,black_and_white).
color_fur(gobwan,black_and_white).

%character() %3.หาสายพันธ์ุเเมวจากลายบนลำตัว
character(khaotham,polka_dots).
character(khaomanee,single_color).
character(vichianmas,colors_throughout_the_body).
character(supalak,single_color).
character(korat,single_color).
character(gonja,single_color).
character(padsarved,white_throughout_the_back).
character(karavek,white_nose).
character(ninjark,white_around_the_neck).
character(gobwan,black_color_around_the_eyes).


%face() %4.หาสายพันธ์ุเเมวจากหน้าของเเมว
face(khaotham,triangle).
face(khaomanee,high_cheekbone).
face(vichianmas,heart_shape).
face(supalak,triangle).
face(korat,heart_shape).
face(gonja,heart_shape).
face(padsarved,heart_shape).
face(karavek,triangle).
face(ninjark,high_cheekbone).
face(gobwan,triangle).

%mean_name() %5.หาสายพันธ์ุเเมวจากสีข
mean_name(khaotham,"cat with nine dots").
mean_name(khaomanee,"a cat with a white clean body").
mean_name(vichianmas,"diamond of the Moon").
mean_name(supalak,"classy_appearance").
mean_name(korat,"love").
mean_name(gonja,"flamingo and peal").
mean_name(padsarved,"cat with black fur with white line from the tip of the nose to the end of the tail").
mean_name(karavek,"cat with golden yellow fur like a feather").
mean_name(ninjark,"wheel of fortune").
mean_name(gobwan,"cat with black circle around eyes").


%Mix All part of body   all part --> cat %6.หาสายพันธ์ุเเมวจากองค์ประกอบข้างบนก่อนหน้า




%status() %7.หาสายพันธ์ุเเมวจากที่สูญพันธ์ กับมีชีวิตอยู่
status(khaotham,extinct).
status(khaomanee,unextinct).
status(vichianmas,unextinct).
status(supalak,unextinct).
status(korat,unextinct).
status(gonja,unextinct).
status(padsarved,extinct).
status(karavek,extinct).
status(ninjark,extinct).
status(gobwan,extinct).

%habit() %8.หาสายพันธ์ุเเมวจากนิสัย
habit(khaotham,friendly).
habit(khaotham,enjoyment).
habit(khaomanee,clever).
habit(khaomanee,watchful).
habit(vichianmas,clever).
habit(vichianmas,friendly).
habit(supalak,clever).
habit(supalak,enjoyment).
habit(korat,friendly).
habit(gonja,strong).
habit(gonja,kind).
habit(padsarved,free).
habit(padsarved,enjoyment).
habit(karavek,clever).
habit(karavek,enthusiastic).
habit(ninjark,brave).
habit(ninjark,love_owner).
habit(gobwan,love_owner).
habit(gobwan,lonely).

%belief() %9.หาสายพันธ์ุเเมวจากความเชื่อในการเลี้ยง
%belief%
belief(khaotham,rich).
belief(khaomanee,luck).
belief(vichianmas,wealth_increases).
belief(vichianmas,no_sickness).
belief(supalak,prosperous).
belief(supalak,receive_rank_and_fortune).
belief(korat,happiness).
belief(korat,auspicious).
belief(gonja,successful).
belief(gonja,empowerment).
belief(padsarved,fame).
belief(karavek,luck).
belief(ninjark,wealth_increases).
belief(gobwan,honor).
belief(gobwan,fame).

%cat --> all part  % 10.บอกลักษณะของเเมว เทื่อป้อนสายพันธ์ุของเเมว



%rule eyesofcat
eyes_of_cat :- write("Type the color of cat's eyes: "), nl,
    write("choose : many,blue,green,and yellow"),nl,
    read(A),
    show_cats_with_eye_color(A).

show_cats_with_eye_color(Color) :-
    eyes(Name, Color),
    write(Name), write(" has "), write(Color), write(" eyes color."), nl,
    fail. %ใช้หาคำตอบอื่นด้วย
show_cats_with_eye_color(_).

%rule colorofcat
color_of_cat :- write("Type the color of cat's fur: "), nl,
    write("choose : black,black_and_white,white,white_and_light_brown,copper,burnt_brown,dark_brown,and grey."),nl,
    read(A),
    show_cats_with_fur_color(A).

show_cats_with_fur_color(Colorfur) :-
    color_fur(Name, Colorfur),
    write(Name), write(" has "), write(Colorfur), write(" fur."), nl,
    fail. %ใช้หาคำตอบอื่นด้วย
show_cats_with_fur_color(_).

%rule character
character_of_cat :- write("Type the attribute of cat's : "), nl,
    write("choose : polka_dots,single_color,colors_throughout_the_body,white_nose,black_color_around_the_eyes,white_around_the_neck and white_throughout_the_back"),nl,
    read(A),
    show_cats_with_character_color(A).

show_cats_with_character_color(Attribute) :-
    character(Name, Attribute),
    write(Name), write(" has "), write(Attribute), nl,
    fail. %ใช้หาคำตอบอื่นด้วย
show_cats_with_character_color(_).


%rule statusofcat
status_of_cat :- write("Choose a status of cat's : "), nl,
    write("choose : extinct,unextinct"),nl,
    read(A),
    show_status_of_cat(A).

show_status_of_cat(Attribute) :-
    status(Name, Attribute),
    write(Name), write(" is "), write(Attribute), nl,
    fail. %ใช้หาคำตอบอื่นด้วย
show_status_of_cat(_).

%rule faceofcat
face_of_cat :- write("Type the face shape of cat's : "), nl,
    write("choose :triangle,high_cheekbone,heart_shape"),nl,
    read(A),
    show_cats_with_face_shape(A).

show_cats_with_face_shape(Attribute) :-
    face(Name, Attribute),
    write(Name), write(" has "), write(Attribute), write(" face shape "), nl,
    fail. %ใช้หาคำตอบอื่นด้วย
show_cats_with_face_shape(_).

%rule nameofcat
name_of_cat :- write("Type the name of cat's : "), nl,
    write("choose :khaotham,khaomanee,vichianmas,supalak,korat,gonja,padsarved,karavek,ninjark and gobwan"),nl,
    read(A),
    show_cats_with_mean_name(A).

show_cats_with_mean_name(Name) :-
    mean_name(Name, Attribute),
    write(Name), write(" has meaning of name is "), write(Attribute), nl,
    fail. %ใช้หาคำตอบอื่นด้วย
show_cats_with_mean_name(_).

%rule habit
find_cat_from_habit :- write("What is belief of cat?"),nl,
    write("choose : friendly, enjoyment, clever, watchful, strong, kind, free, enthusiastic, brave, love_owner, lonely"),nl,
    read(A),
    show_find_cat_from_habit(A).

show_find_cat_from_habit(Habit) :-
    habit(Name, Habit),
    write(Name), write(" is "), write(Habit), write(" ."), nl,
    fail.
show_find_cat_from_habit(_).

%rule belief
find_cat_from_belief :- write("What is belief of cat?"),nl,
    write("choose : rich, luck, wealth_increases, no_sickness, prosperous, receive_rank_and_fortune, happiness, auspicious, successful, empowerment, fame, honor"),nl,
    read(A),
    show_find_cat_from_belief(A).

show_find_cat_from_belief(Belief) :-
    belief(Name, Belief),
    write(Name), write(" has belief about "), write(Belief), write(" ."), nl,
    fail.
show_find_cat_from_belief(_).


%6.rule find cat from attribute

find_cat_from_attribute :-
    write("Type the color of cat's eyes: "), nl,
    write("choose : many,blue,green,and yellow"),nl,
    read(EyeColor),
    write("Type the color of cat's fur: "), nl,
    write("choose : black,black_and_white,white,white_and_light_brown,copper,burnt_brown,dark_brown,and grey."),nl,
    read(FurColor),
    write("Type the attribute of cat's : "), nl,
    write("choose : polka_dots,single_color,colors_throughout_the_body,white_nose,black_color_around_the_eyes,white_around_the_neck and white_throughout_the_back"),nl,
    read(BodyCharacter),
    write("Type the face shape of cat's : "), nl,
    write("choose : triangle,high_cheekbone,heart_shape"),nl,
    read(FaceShape),
    find_cat_breeds(EyeColor,FurColor,BodyCharacter,FaceShape).

find_cat_breeds(EyeColor, FurColor, BodyCharacter, FaceShape) :-
    eyes(Breed, EyeColor),
    color_fur(Breed, FurColor),
    character(Breed, BodyCharacter),
    face(Breed,FaceShape),
    write("From that attribute of cat is "),write(Breed),write("."),nl,
    fail.
find_cat_breeds(_, _, _, _).

%10 . show data of cat when input breed of cat

show_data_cat:- write("Please input name of the cat : "),nl,
     write("choose : khaotham, khaomanee, vichianmas, supalak, korat, gonja, padsarved, karavek, ninjark, gobwan"),nl,
    read(A),
    show_eyes(A),
    show_fur(A),
    show_face(A),
    show_status_cat(A),
    show_habit(A),
    show_belief(A).

show_eyes(A) :-
    eyes(A, B),
    write(A), write(" has "), write(B), write(" eyes."), nl,
    fail.
show_eyes(_) .

show_fur(A) :-
     color_fur(A, B),
    write(A), write(" has "), write(B), write(" fur."), nl,
    fail.
show_fur(_).

show_face(A) :-
     face(A, B),
    write(A), write(" has "), write(B), write(" face."), nl,
    fail.
show_face(_).

show_status_cat(A) :-
    status(A, B),
    write(A), write(" is "), write(B), write(" ."), nl,
    fail.
show_status_cat(_).

show_habit(A) :-
    habit(A, B),
    write(A), write(" is "), write(B), write(" ."), nl,
    fail.
show_habit(_).

show_belief(A) :-
    belief(A, B),
    write(A), write(" has belief about "), write(B), write(" ."), nl,
    fail.
show_belief(_).


