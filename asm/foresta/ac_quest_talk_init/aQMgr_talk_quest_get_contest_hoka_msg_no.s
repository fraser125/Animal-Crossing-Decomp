lbl_8048BB38:
/* 8048BB38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048BB3C  7C 08 02 A6 */	mflr r0
/* 8048BB40  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048BB44  39 61 00 20 */	addi r11, r1, 0x20
/* 8048BB48  4B C0 F3 8D */	bl func_8009AED4
/* 8048BB4C  88 03 00 00 */	lbz r0, 0(r3)
/* 8048BB50  7C 7D 1B 78 */	mr r29, r3
/* 8048BB54  3B C0 00 00 */	li r30, 0
/* 8048BB58  54 1F 06 BE */	clrlwi r31, r0, 0x1a
/* 8048BB5C  2C 1F 00 03 */	cmpwi r31, 3
/* 8048BB60  40 82 00 20 */	bne lbl_8048BB80
/* 8048BB64  88 64 08 99 */	lbz r3, 0x899(r4)
/* 8048BB68  88 84 08 9A */	lbz r4, 0x89a(r4)
/* 8048BB6C  4B F5 7A 51 */	bl mQst_GetFlowerSeedNum
/* 8048BB70  88 1D 00 24 */	lbz r0, 0x24(r29)
/* 8048BB74  7C 00 18 00 */	cmpw r0, r3
/* 8048BB78  40 81 00 08 */	ble lbl_8048BB80
/* 8048BB7C  3B C0 10 69 */	li r30, 0x1069
lbl_8048BB80:
/* 8048BB80  2C 1E 00 00 */	cmpwi r30, 0
/* 8048BB84  40 82 00 14 */	bne lbl_8048BB98
/* 8048BB88  3C 60 80 69 */	lis r3, l_contest_hoka_msg_no@ha /* 0x8068B170@ha */
/* 8048BB8C  57 E0 10 3A */	slwi r0, r31, 2
/* 8048BB90  38 63 B1 70 */	addi r3, r3, l_contest_hoka_msg_no@l /* 0x8068B170@l */
/* 8048BB94  7F C3 00 2E */	lwzx r30, r3, r0
lbl_8048BB98:
/* 8048BB98  7F C3 F3 78 */	mr r3, r30
/* 8048BB9C  39 61 00 20 */	addi r11, r1, 0x20
/* 8048BBA0  4B C0 F3 81 */	bl func_8009AF20
/* 8048BBA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048BBA8  7C 08 03 A6 */	mtlr r0
/* 8048BBAC  38 21 00 20 */	addi r1, r1, 0x20
/* 8048BBB0  4E 80 00 20 */	blr 
