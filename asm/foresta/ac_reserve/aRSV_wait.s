lbl_805B8CFC:
/* 805B8CFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B8D00  7C 08 02 A6 */	mflr r0
/* 805B8D04  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B8D08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B8D0C  93 C1 00 08 */	stw r30, 8(r1)
/* 805B8D10  7C 7E 1B 78 */	mr r30, r3
/* 805B8D14  7C 83 23 78 */	mr r3, r4
/* 805B8D18  4B E2 09 29 */	bl get_player_actor_withoutCheck
/* 805B8D1C  7C 7F 1B 78 */	mr r31, r3
/* 805B8D20  7F C4 F3 78 */	mr r4, r30
/* 805B8D24  38 60 00 07 */	li r3, 7
/* 805B8D28  4B DE 15 3D */	bl mDemo_Check
/* 805B8D2C  2C 03 00 01 */	cmpwi r3, 1
/* 805B8D30  41 82 00 50 */	beq lbl_805B8D80
/* 805B8D34  28 1F 00 00 */	cmplwi r31, 0
/* 805B8D38  41 82 00 48 */	beq lbl_805B8D80
/* 805B8D3C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805B8D40  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805B8D44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B8D48  4C 41 13 82 */	cror 2, 1, 2
/* 805B8D4C  40 82 00 34 */	bne lbl_805B8D80
/* 805B8D50  A8 7E 00 B6 */	lha r3, 0xb6(r30)
/* 805B8D54  7C 60 07 35 */	extsh. r0, r3
/* 805B8D58  7C 03 00 D0 */	neg r0, r3
/* 805B8D5C  41 80 00 08 */	blt lbl_805B8D64
/* 805B8D60  7C 60 1B 78 */	mr r0, r3
lbl_805B8D64:
/* 805B8D64  2C 00 20 00 */	cmpwi r0, 0x2000
/* 805B8D68  40 80 00 18 */	bge lbl_805B8D80
/* 805B8D6C  3C 60 80 5C */	lis r3, aRSV_set_talk_info@ha /* 0x805B8BF4@ha */
/* 805B8D70  7F C4 F3 78 */	mr r4, r30
/* 805B8D74  38 A3 8B F4 */	addi r5, r3, aRSV_set_talk_info@l /* 0x805B8BF4@l */
/* 805B8D78  38 60 00 07 */	li r3, 7
/* 805B8D7C  4B DE 13 E1 */	bl mDemo_Request
lbl_805B8D80:
/* 805B8D80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B8D84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B8D88  83 C1 00 08 */	lwz r30, 8(r1)
/* 805B8D8C  7C 08 03 A6 */	mtlr r0
/* 805B8D90  38 21 00 10 */	addi r1, r1, 0x10
/* 805B8D94  4E 80 00 20 */	blr 
