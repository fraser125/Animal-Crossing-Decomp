lbl_805621E0:
/* 805621E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805621E4  7C 08 02 A6 */	mflr r0
/* 805621E8  38 80 00 09 */	li r4, 9
/* 805621EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805621F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805621F4  93 C1 00 08 */	stw r30, 8(r1)
/* 805621F8  7C 7E 1B 78 */	mr r30, r3
/* 805621FC  38 60 00 04 */	li r3, 4
/* 80562200  4B E3 62 7D */	bl mDemo_Get_OrderValue
/* 80562204  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80562208  4B E5 D4 A1 */	bl func_803BF6A8
/* 8056220C  2C 1F 00 00 */	cmpwi r31, 0
/* 80562210  7C 7F 1B 78 */	mr r31, r3
/* 80562214  41 82 00 38 */	beq lbl_8056224C
/* 80562218  4B E5 EA 81 */	bl mMsg_Check_MainNormalContinue
/* 8056221C  2C 03 00 01 */	cmpwi r3, 1
/* 80562220  40 82 00 2C */	bne lbl_8056224C
/* 80562224  4B E2 13 1D */	bl func_80383540
/* 80562228  4B E2 19 45 */	bl mChoice_Get_ChoseNum
/* 8056222C  7C 65 1B 78 */	mr r5, r3
/* 80562230  7F C3 F3 78 */	mr r3, r30
/* 80562234  7F E4 FB 78 */	mr r4, r31
/* 80562238  4B FF FD AD */	bl aNNW_set_6_ways
/* 8056223C  38 60 00 04 */	li r3, 4
/* 80562240  38 80 00 09 */	li r4, 9
/* 80562244  38 A0 00 00 */	li r5, 0
/* 80562248  4B E3 61 F1 */	bl mDemo_Set_OrderValue
lbl_8056224C:
/* 8056224C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80562250  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80562254  83 C1 00 08 */	lwz r30, 8(r1)
/* 80562258  7C 08 03 A6 */	mtlr r0
/* 8056225C  38 21 00 10 */	addi r1, r1, 0x10
/* 80562260  4E 80 00 20 */	blr 
