lbl_803FA358:
/* 803FA358  2C 03 FF FA */	cmpwi r3, -6
/* 803FA35C  41 82 00 8C */	beq lbl_803FA3E8
/* 803FA360  40 80 00 3C */	bge lbl_803FA39C
/* 803FA364  2C 03 FF F3 */	cmpwi r3, -13
/* 803FA368  41 82 00 80 */	beq lbl_803FA3E8
/* 803FA36C  40 80 00 1C */	bge lbl_803FA388
/* 803FA370  2C 03 FF 80 */	cmpwi r3, -128
/* 803FA374  41 82 00 84 */	beq lbl_803FA3F8
/* 803FA378  41 80 00 90 */	blt lbl_803FA408
/* 803FA37C  2C 03 FF F2 */	cmpwi r3, -14
/* 803FA380  40 80 00 78 */	bge lbl_803FA3F8
/* 803FA384  48 00 00 84 */	b lbl_803FA408
lbl_803FA388:
/* 803FA388  2C 03 FF F9 */	cmpwi r3, -7
/* 803FA38C  40 80 00 6C */	bge lbl_803FA3F8
/* 803FA390  2C 03 FF F7 */	cmpwi r3, -9
/* 803FA394  40 80 00 5C */	bge lbl_803FA3F0
/* 803FA398  48 00 00 60 */	b lbl_803FA3F8
lbl_803FA39C:
/* 803FA39C  2C 03 FF FE */	cmpwi r3, -2
/* 803FA3A0  41 82 00 30 */	beq lbl_803FA3D0
/* 803FA3A4  40 80 00 14 */	bge lbl_803FA3B8
/* 803FA3A8  2C 03 FF FC */	cmpwi r3, -4
/* 803FA3AC  41 82 00 4C */	beq lbl_803FA3F8
/* 803FA3B0  40 80 00 28 */	bge lbl_803FA3D8
/* 803FA3B4  48 00 00 2C */	b lbl_803FA3E0
lbl_803FA3B8:
/* 803FA3B8  2C 03 00 00 */	cmpwi r3, 0
/* 803FA3BC  41 82 00 0C */	beq lbl_803FA3C8
/* 803FA3C0  40 80 00 48 */	bge lbl_803FA408
/* 803FA3C4  48 00 00 3C */	b lbl_803FA400
lbl_803FA3C8:
/* 803FA3C8  38 60 00 00 */	li r3, 0
/* 803FA3CC  4E 80 00 20 */	blr 
lbl_803FA3D0:
/* 803FA3D0  38 60 00 15 */	li r3, 0x15
/* 803FA3D4  4E 80 00 20 */	blr 
lbl_803FA3D8:
/* 803FA3D8  38 60 00 16 */	li r3, 0x16
/* 803FA3DC  4E 80 00 20 */	blr 
lbl_803FA3E0:
/* 803FA3E0  38 60 00 02 */	li r3, 2
/* 803FA3E4  4E 80 00 20 */	blr 
lbl_803FA3E8:
/* 803FA3E8  38 60 00 04 */	li r3, 4
/* 803FA3EC  4E 80 00 20 */	blr 
lbl_803FA3F0:
/* 803FA3F0  38 60 00 0C */	li r3, 0xc
/* 803FA3F4  4E 80 00 20 */	blr 
lbl_803FA3F8:
/* 803FA3F8  38 60 00 18 */	li r3, 0x18
/* 803FA3FC  4E 80 00 20 */	blr 
lbl_803FA400:
/* 803FA400  38 60 00 19 */	li r3, 0x19
/* 803FA404  4E 80 00 20 */	blr 
lbl_803FA408:
/* 803FA408  38 60 00 18 */	li r3, 0x18
/* 803FA40C  4E 80 00 20 */	blr 