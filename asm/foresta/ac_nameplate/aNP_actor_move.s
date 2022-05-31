lbl_805B63B4:
/* 805B63B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B63B8  7C 08 02 A6 */	mflr r0
/* 805B63BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B63C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B63C4  7C 9F 23 78 */	mr r31, r4
/* 805B63C8  93 C1 00 08 */	stw r30, 8(r1)
/* 805B63CC  7C 7E 1B 78 */	mr r30, r3
/* 805B63D0  7F C4 F3 78 */	mr r4, r30
/* 805B63D4  38 60 00 07 */	li r3, 7
/* 805B63D8  4B DE 3E 8D */	bl mDemo_Check
/* 805B63DC  2C 03 00 00 */	cmpwi r3, 0
/* 805B63E0  40 82 00 6C */	bne lbl_805B644C
/* 805B63E4  7F C4 F3 78 */	mr r4, r30
/* 805B63E8  38 60 00 08 */	li r3, 8
/* 805B63EC  4B DE 3E 79 */	bl mDemo_Check
/* 805B63F0  2C 03 00 00 */	cmpwi r3, 0
/* 805B63F4  40 82 00 58 */	bne lbl_805B644C
/* 805B63F8  7F E3 FB 78 */	mr r3, r31
/* 805B63FC  4B E2 32 45 */	bl get_player_actor_withoutCheck
/* 805B6400  28 03 00 00 */	cmplwi r3, 0
/* 805B6404  41 82 00 48 */	beq lbl_805B644C
/* 805B6408  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 805B640C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805B6410  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B6414  4C 41 13 82 */	cror 2, 1, 2
/* 805B6418  40 82 00 34 */	bne lbl_805B644C
/* 805B641C  A8 7E 00 B6 */	lha r3, 0xb6(r30)
/* 805B6420  7C 60 07 35 */	extsh. r0, r3
/* 805B6424  7C 03 00 D0 */	neg r0, r3
/* 805B6428  41 80 00 08 */	blt lbl_805B6430
/* 805B642C  7C 60 1B 78 */	mr r0, r3
lbl_805B6430:
/* 805B6430  2C 00 20 00 */	cmpwi r0, 0x2000
/* 805B6434  40 80 00 18 */	bge lbl_805B644C
/* 805B6438  3C 60 80 5B */	lis r3, func_805B6314@ha /* 0x805B6314@ha */
/* 805B643C  7F C4 F3 78 */	mr r4, r30
/* 805B6440  38 A3 63 14 */	addi r5, r3, func_805B6314@l /* 0x805B6314@l */
/* 805B6444  38 60 00 07 */	li r3, 7
/* 805B6448  4B DE 3D 15 */	bl mDemo_Request
lbl_805B644C:
/* 805B644C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B6450  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B6454  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B6458  7C 08 03 A6 */	mtlr r0
/* 805B645C  38 21 00 10 */	addi r1, r1, 0x10
/* 805B6460  4E 80 00 20 */	blr 
