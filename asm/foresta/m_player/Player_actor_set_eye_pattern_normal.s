lbl_804D5418:
/* 804D5418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D541C  7C 08 02 A6 */	mflr r0
/* 804D5420  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5424  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D5428  93 C1 00 08 */	stw r30, 8(r1)
/* 804D542C  7C 7E 1B 78 */	mr r30, r3
/* 804D5430  3B FE 0C EA */	addi r31, r30, 0xcea
/* 804D5434  A8 63 0C EA */	lha r3, 0xcea(r3)
/* 804D5438  2C 03 00 00 */	cmpwi r3, 0
/* 804D543C  40 82 00 0C */	bne lbl_804D5448
/* 804D5440  38 00 00 00 */	li r0, 0
/* 804D5444  48 00 00 10 */	b lbl_804D5454
lbl_804D5448:
/* 804D5448  38 03 FF FF */	addi r0, r3, -1
/* 804D544C  B0 1F 00 00 */	sth r0, 0(r31)
/* 804D5450  7C 00 07 34 */	extsh r0, r0
lbl_804D5454:
/* 804D5454  2C 00 00 00 */	cmpwi r0, 0
/* 804D5458  40 82 00 4C */	bne lbl_804D54A4
/* 804D545C  80 1E 0C EC */	lwz r0, 0xcec(r30)
/* 804D5460  2C 00 00 00 */	cmpwi r0, 0
/* 804D5464  41 81 00 2C */	bgt lbl_804D5490
/* 804D5468  38 60 00 00 */	li r3, 0
/* 804D546C  38 80 00 03 */	li r4, 3
/* 804D5470  4B EE 59 D9 */	bl get_random_timer
/* 804D5474  7C 60 07 34 */	extsh r0, r3
/* 804D5478  38 60 00 3C */	li r3, 0x3c
/* 804D547C  90 1E 0C EC */	stw r0, 0xcec(r30)
/* 804D5480  38 80 00 78 */	li r4, 0x78
/* 804D5484  4B EE 59 C5 */	bl get_random_timer
/* 804D5488  B0 7F 00 00 */	sth r3, 0(r31)
/* 804D548C  48 00 00 18 */	b lbl_804D54A4
lbl_804D5490:
/* 804D5490  38 00 00 10 */	li r0, 0x10
/* 804D5494  B0 1F 00 00 */	sth r0, 0(r31)
/* 804D5498  80 7E 0C EC */	lwz r3, 0xcec(r30)
/* 804D549C  38 03 FF FF */	addi r0, r3, -1
/* 804D54A0  90 1E 0C EC */	stw r0, 0xcec(r30)
lbl_804D54A4:
/* 804D54A4  A8 1F 00 00 */	lha r0, 0(r31)
/* 804D54A8  B0 1E 0C E8 */	sth r0, 0xce8(r30)
/* 804D54AC  A8 1E 0C E8 */	lha r0, 0xce8(r30)
/* 804D54B0  2C 00 00 10 */	cmpwi r0, 0x10
/* 804D54B4  41 80 00 0C */	blt lbl_804D54C0
/* 804D54B8  38 00 00 00 */	li r0, 0
/* 804D54BC  B0 1E 0C E8 */	sth r0, 0xce8(r30)
lbl_804D54C0:
/* 804D54C0  3C 60 80 64 */	lis r3, pattern_table@ha /* 0x80646868@ha */
/* 804D54C4  A8 1E 0C E8 */	lha r0, 0xce8(r30)
/* 804D54C8  38 83 68 68 */	addi r4, r3, pattern_table@l /* 0x80646868@l */
/* 804D54CC  7F C3 F3 78 */	mr r3, r30
/* 804D54D0  7C 84 00 AE */	lbzx r4, r4, r0
/* 804D54D4  7C 84 07 74 */	extsb r4, r4
/* 804D54D8  4B FF FF 39 */	bl Player_actor_set_eye_pattern
/* 804D54DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D54E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D54E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D54E8  7C 08 03 A6 */	mtlr r0
/* 804D54EC  38 21 00 10 */	addi r1, r1, 0x10
/* 804D54F0  4E 80 00 20 */	blr 
