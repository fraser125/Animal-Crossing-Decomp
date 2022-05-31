lbl_8050F6D0:
/* 8050F6D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050F6D4  7C 08 02 A6 */	mflr r0
/* 8050F6D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050F6DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8050F6E0  4B B8 B7 E9 */	bl func_8009AEC8
/* 8050F6E4  7C 7A 1B 79 */	or. r26, r3, r3
/* 8050F6E8  3B 80 00 00 */	li r28, 0
/* 8050F6EC  41 82 00 48 */	beq lbl_8050F734
/* 8050F6F0  38 80 00 C0 */	li r4, 0xc0
/* 8050F6F4  4B FF FB 39 */	bl mMck_strlen_new
/* 8050F6F8  3C 80 80 6A */	lis r4, check_proc@ha /* 0x8069F920@ha */
/* 8050F6FC  7C 7D 1B 78 */	mr r29, r3
/* 8050F700  3B 60 00 00 */	li r27, 0
/* 8050F704  3B E0 00 00 */	li r31, 0
/* 8050F708  3B C4 F9 20 */	addi r30, r4, check_proc@l /* 0x8069F920@l */
lbl_8050F70C:
/* 8050F70C  7D 9E F8 2E */	lwzx r12, r30, r31
/* 8050F710  7F 43 D3 78 */	mr r3, r26
/* 8050F714  7F A4 EB 78 */	mr r4, r29
/* 8050F718  7D 89 03 A6 */	mtctr r12
/* 8050F71C  4E 80 04 21 */	bctrl 
/* 8050F720  3B 7B 00 01 */	addi r27, r27, 1
/* 8050F724  7F 9C 1A 14 */	add r28, r28, r3
/* 8050F728  2C 1B 00 07 */	cmpwi r27, 7
/* 8050F72C  3B FF 00 04 */	addi r31, r31, 4
/* 8050F730  41 80 FF DC */	blt lbl_8050F70C
lbl_8050F734:
/* 8050F734  7F 83 E3 78 */	mr r3, r28
/* 8050F738  39 61 00 20 */	addi r11, r1, 0x20
/* 8050F73C  4B B8 B7 D9 */	bl func_8009AF14
/* 8050F740  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050F744  7C 08 03 A6 */	mtlr r0
/* 8050F748  38 21 00 20 */	addi r1, r1, 0x20
/* 8050F74C  4E 80 00 20 */	blr 
