lbl_80567C4C:
/* 80567C4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80567C50  7C 08 02 A6 */	mflr r0
/* 80567C54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80567C58  39 61 00 20 */	addi r11, r1, 0x20
/* 80567C5C  4B B3 32 79 */	bl func_8009AED4
/* 80567C60  7C 7D 1B 78 */	mr r29, r3
/* 80567C64  7C 9E 23 78 */	mr r30, r4
/* 80567C68  4B E1 B8 D9 */	bl func_80383540
/* 80567C6C  7F A6 EB 78 */	mr r6, r29
/* 80567C70  7C 7F 1B 78 */	mr r31, r3
/* 80567C74  38 9E 00 20 */	addi r4, r30, 0x20
/* 80567C78  38 A0 01 B9 */	li r5, 0x1b9
/* 80567C7C  4B E1 C7 45 */	bl mChoice_Load_ChoseStringFromRom
/* 80567C80  7F E3 FB 78 */	mr r3, r31
/* 80567C84  7F A6 EB 78 */	mr r6, r29
/* 80567C88  38 9E 00 30 */	addi r4, r30, 0x30
/* 80567C8C  38 A0 00 29 */	li r5, 0x29
/* 80567C90  4B E1 C7 31 */	bl mChoice_Load_ChoseStringFromRom
/* 80567C94  39 61 00 20 */	addi r11, r1, 0x20
/* 80567C98  4B B3 32 89 */	bl func_8009AF20
/* 80567C9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80567CA0  7C 08 03 A6 */	mtlr r0
/* 80567CA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80567CA8  4E 80 00 20 */	blr 
