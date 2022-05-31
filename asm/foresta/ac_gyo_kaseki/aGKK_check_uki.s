lbl_805A5C50:
/* 805A5C50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A5C54  7C 08 02 A6 */	mflr r0
/* 805A5C58  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A5C5C  39 61 00 20 */	addi r11, r1, 0x20
/* 805A5C60  4B AF 52 75 */	bl func_8009AED4
/* 805A5C64  7C 7D 1B 78 */	mr r29, r3
/* 805A5C68  7C 9E 23 78 */	mr r30, r4
/* 805A5C6C  3B E0 00 00 */	li r31, 0
/* 805A5C70  4B FF FB 99 */	bl aGKK_player_near
/* 805A5C74  2C 03 00 00 */	cmpwi r3, 0
/* 805A5C78  40 82 00 28 */	bne lbl_805A5CA0
/* 805A5C7C  7F A3 EB 78 */	mr r3, r29
/* 805A5C80  7F C4 F3 78 */	mr r4, r30
/* 805A5C84  4B FF F9 C5 */	bl aGKK_search_Uki
/* 805A5C88  2C 03 00 01 */	cmpwi r3, 1
/* 805A5C8C  40 82 00 14 */	bne lbl_805A5CA0
/* 805A5C90  7F A3 EB 78 */	mr r3, r29
/* 805A5C94  38 80 00 07 */	li r4, 7
/* 805A5C98  48 00 0E C1 */	bl aGKK_setupAction
/* 805A5C9C  3B E0 00 01 */	li r31, 1
lbl_805A5CA0:
/* 805A5CA0  7F E3 FB 78 */	mr r3, r31
/* 805A5CA4  39 61 00 20 */	addi r11, r1, 0x20
/* 805A5CA8  4B AF 52 79 */	bl func_8009AF20
/* 805A5CAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A5CB0  7C 08 03 A6 */	mtlr r0
/* 805A5CB4  38 21 00 20 */	addi r1, r1, 0x20
/* 805A5CB8  4E 80 00 20 */	blr 
