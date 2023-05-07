// Gmsh project created on Fri May 05 00:28:31 2023
SetFactory("OpenCASCADE");
//+
h = DefineNumber[ 1, Name "Parameters/h" ];
//+
L = DefineNumber[ 48, Name "Parameters/L" ];
//+
H = DefineNumber[ 9.6, Name "Parameters/H" ];
//+
t = DefineNumber[ 2, Name "Parameters/t" ];
//+
tanTheta = DefineNumber[ -0.176, Name "Parameters/tanTheta" ];
//+
Point(1) = {0, (H+L*tanTheta/2), 0, h};
//+
Point(2) = {L, (H-L*tanTheta/2), 0, h};
//+
Point(3) = {L, -(H-L*tanTheta/2), 0, h};
//+
Point(4) = {-L, -(H-L*tanTheta/2), 0, h};
//+
Point(5) = {-L, (H-L*tanTheta/2), 0, h};
//+
Point(6) = {0, -(H+L*tanTheta/2), 0, h};
//+
Line(1) = {5, 1};
//+
Line(2) = {1, 2};
//+
Line(3) = {2, 3};
//+
Line(4) = {3, 6};
//+
Line(5) = {6, 4};
//+
Line(6) = {4, 5};
//+
Point(7) = {0, t+(H+L*tanTheta/2), 0, h};
//+
Point(8) = {0, -t-(H+L*tanTheta/2), 0, h};
//+
Point(9) = {L+t, t*(1-tanTheta)+(H-L*tanTheta/2), 0, h};
//+
Point(10) = {L+t,  -t*(1-tanTheta)-(H-L*tanTheta/2), 0, h};
//+
Point(11) = {-t-L, t*(1-tanTheta)+(H-L*tanTheta/2), 0, h};
//+
Point(12) = {-t-L, -t*(1-tanTheta)-(H-L*tanTheta/2), 0, h};
//+
Line(7) = {11, 7};
//+
Line(8) = {7, 9};
//+
Line(9) = {9, 10};
//+
Line(10) = {10, 8};
//+
Line(11) = {8, 12};
//+
Line(12) = {12, 11};
//+
Curve Loop(1) = {7, 8, 9, 10, 11, 12};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {1, 2, 3, 4, 5, 6};
//+
Plane Surface(2) = {2};
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Curve Loop(1) = {7, 8, 9, 10, 11, 12};
//+
Plane Surface(2) = {1};
//+
Rotate {{0, 0, 1}, {0, 0, 0}, Pi/2} {
  Surface{2}; Surface{1}; 
}
//+
For i In {1:2}
Translate {0, 2*i*(L+t), 0} {
  Duplicata { Surface{1}; Surface{2}; }
}
EndFor
//+
Translate {(2*(t+H)-t*tanTheta), L+t, 0} {
  Duplicata { Surface{1}; Surface{3}; Surface{5}; Surface{2}; Surface{4}; Surface{6}; }
}
//+
Translate {0, -2*(L+t), 0} {
  Duplicata { Surface{7}; Surface{10}; }
}
//+
BooleanUnion{ Surface{1}; Delete; }{ Surface{3}; Surface{5}; Delete; }
//+
BooleanUnion{ Surface{13}; Delete; }{ Surface{7}; Surface{8}; Surface{9}; Delete; }
//+
For i In {1:3}
Translate {2*i*(2*(t+H)-t*tanTheta), 0, 0} {
  Duplicata { Surface{1}; Surface{13}; Surface{14}; Surface{12}; Surface{11}; Surface{10}; Surface{6}; Surface{4}; Surface{2}; }
}
EndFor
//+
BooleanUnion{ Surface{1}; Delete; }{ Surface{15}; Surface{24}; Surface{33}; Surface{16}; Surface{13}; Surface{25}; Surface{34}; Delete; }
//+
Rectangle(42) = {-20, 300, 0, 225, -50, 0};
//+
BooleanDifference{ Surface{12}; Surface{21}; Surface{18}; Surface{30}; Surface{27}; Surface{39}; Surface{36}; Surface{1}; Delete; }{ Surface{42}; Delete; }
//+
Rectangle(42) = {-20, -100, 0, 225, 50, 0};
//+
BooleanDifference{ Surface{35}; Surface{41}; Surface{26}; Surface{32}; Surface{1}; Surface{17}; Surface{23}; Surface{14}; Surface{2}; Delete; }{ Surface{42}; Delete; }
//+
Rectangle(42) = {190, -55, 0, -25.2, 310, 0};
//+
BooleanDifference{ Surface{36}; Surface{37}; Surface{38}; Surface{35}; Surface{1}; Delete; }{ Surface{42}; Delete; }
//+
Rectangle(42) = {-20, -55, 0, 41, 310, 0};
//+
BooleanDifference{ Surface{6}; Surface{4}; Surface{2}; Surface{12}; Surface{11}; Surface{10}; Surface{14}; Surface{1}; Delete; }{ Surface{42}; Delete; }
//+
Rectangle(42) = {21, 98, 0, 36, 4, 0};
//+
BooleanDifference{ Surface{11}; Surface{22}; Surface{1}; Delete; }{ Surface{42}; Delete; }

//+
BooleanFragments{ Surface{14}; Delete; }{ Surface{17}; Surface{12}; Surface{11}; Surface{10}; Surface{1}; Surface{18}; Surface{31}; Surface{43}; Surface{42}; Surface{41}; Surface{40}; Surface{39}; Surface{38}; Surface{37}; Surface{36}; Surface{35}; Surface{32}; Surface{30}; Surface{29}; Surface{28}; Surface{27}; Surface{26}; Surface{23}; Surface{21}; Surface{20}; Surface{19}; Delete; }
//+//+
Physical Surface("domain", 707) = {17, 14, 12, 11, 10, 1, 18, 31, 43, 42, 41, 40, 39, 38, 37, 36, 35, 32, 30, 29, 28, 27, 26, 23, 21, 20, 19};
//+
Physical Surface("brick", 708) = {17, 14, 12, 11, 10, 18, 31, 43, 42, 41, 40, 39, 38, 37, 36, 35, 32, 30, 29, 28, 27, 26, 23, 21, 20, 19};
//+
Physical Surface("mortar", 709) = {1};
//+
Physical Curve("brick", 710) = {435, 444, 443, 442, 441, 440, 439, 438, 437, 436, 448, 434, 433, 432, 431, 430, 429, 428, 406, 545, 553, 552, 551, 550, 549, 548, 547, 546, 405, 544, 543, 542, 541, 540, 539, 538, 537, 284, 295, 294, 293, 292, 291, 290, 288, 287, 285, 296, 283, 282, 281, 280, 258, 257, 256, 255, 396, 404, 403, 402, 401, 400, 399, 398, 397, 554, 395, 394, 393, 392, 391, 390, 389, 300, 705, 706, 701, 699, 674, 673, 672, 671, 670, 669, 668, 602, 647, 646, 645, 644, 643, 642, 641, 639, 648, 599, 598, 596, 590, 589, 584, 583, 578, 659, 667, 666, 665, 664, 663, 662, 661, 660, 254, 656, 655, 654, 653, 652, 651, 650, 649, 113, 253, 246, 245, 244, 243, 242, 241, 124, 101, 100, 89, 88};
//+
Physical Curve("mortar", 711) = {694, 691, 688, 684, 685, 686, 704, 696, 697, 703, 698, 702, 700, 676, 679, 682};
//+
Physical Curve("fixedboundary", 712) = {664, 676, 639, 677, 678, 679, 602, 680, 682, 681, 683, 651};
//+
Physical Curve("loadboundary", 713) = {653, 695, 694, 693, 598, 691, 692, 690, 599, 689, 688, 687, 641};
//+
MeshSize {602, 572, 625, 537, 624, 535, 426, 424, 623, 389, 601, 622, 387, 278, 599, 576, 276, 621, 578, 538, 241, 536, 427, 429, 620, 239, 125, 610, 428, 430, 390, 388, 279, 281, 582, 539, 541, 280, 282, 242, 540, 240, 124, 542, 431, 90, 609, 434, 391, 608, 393, 392, 600, 394, 283, 597, 581, 286, 243, 584, 543, 612, 546, 432, 435, 244, 614, 89, 433, 436, 395, 398, 284, 287, 588, 544, 547, 633, 285, 611, 632, 288, 616, 613, 545, 88, 618, 548, 437, 102, 607, 440, 396, 619, 399, 397, 598, 400, 289, 596, 587, 292, 615, 590, 549, 251, 552, 438, 441, 617, 252, 101, 439, 442, 401, 404, 290, 293, 595, 594, 550, 626, 291, 294, 253, 551, 256, 100, 627, 443, 114, 605, 446, 402, 628, 604, 403, 629, 295, 298, 254, 630, 255, 631, 113, 603} = 0.5;
