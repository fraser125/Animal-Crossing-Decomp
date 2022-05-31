lbl_804DA330:
/* 804DA330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA334  7C 08 02 A6 */	mflr r0
/* 804DA338  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA33C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DA340  7C 7F 1B 78 */	mr r31, r3
/* 804DA344  4B F0 1C 25 */	bl mPlib_check_player_warp_forEvent
/* 804DA348  2C 03 00 00 */	cmpwi r3, 0
/* 804DA34C  41 82 00 38 */	beq lbl_804DA384
/* 804DA350  2C 1F 00 00 */	cmpwi r31, 0
/* 804DA354  38 00 00 00 */	li r0, 0
/* 804DA358  41 80 00 10 */	blt lbl_804DA368
/* 804DA35C  2C 1F 00 79 */	cmpwi r31, 0x79
/* 804DA360  40 80 00 08 */	bge lbl_804DA368
/* 804DA364  38 00 00 01 */	li r0, 1
lbl_804DA368:
/* 804DA368  2C 00 00 00 */	cmpwi r0, 0
/* 804DA36C  41 82 00 18 */	beq lbl_804DA384
/* 804DA370  3C 60 80 64 */	lis r3, value_2869@ha /* 0x80646CE0@ha */
/* 804DA374  38 63 6C E0 */	addi r3, r3, value_2869@l /* 0x80646CE0@l */
/* 804DA378  7C 63 F8 AE */	lbzx r3, r3, r31
/* 804DA37C  7C 63 07 74 */	extsb r3, r3
/* 804DA380  48 00 00 08 */	b lbl_804DA388
lbl_804DA384:
/* 804DA384  38 60 00 00 */	li r3, 0
lbl_804DA388:
/* 804DA388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA38C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DA390  7C 08 03 A6 */	mtlr r0
/* 804DA394  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA398  4E 80 00 20 */	blr 
