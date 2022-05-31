lbl_803F78A0:
/* 803F78A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F78A4  7C 08 02 A6 */	mflr r0
/* 803F78A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F78AC  39 61 00 20 */	addi r11, r1, 0x20
/* 803F78B0  4B CA 36 19 */	bl func_8009AEC8
/* 803F78B4  7C 7A 1B 78 */	mr r26, r3
/* 803F78B8  7C 9B 23 78 */	mr r27, r4
/* 803F78BC  7C BC 2B 78 */	mr r28, r5
/* 803F78C0  3B E0 00 00 */	li r31, 0
/* 803F78C4  3B C0 00 00 */	li r30, 0
/* 803F78C8  3B A0 FF FF */	li r29, -1
/* 803F78CC  48 00 00 28 */	b lbl_803F78F4
lbl_803F78D0:
/* 803F78D0  7F 43 D3 78 */	mr r3, r26
/* 803F78D4  7F 64 DB 78 */	mr r4, r27
/* 803F78D8  7F 85 E3 78 */	mr r5, r28
/* 803F78DC  4B FF FF 3D */	bl mCD_check_card_common
/* 803F78E0  7C 7E 1B 79 */	or. r30, r3, r3
/* 803F78E4  40 82 00 10 */	bne lbl_803F78F4
/* 803F78E8  38 60 00 01 */	li r3, 1
/* 803F78EC  4B C6 54 ED */	bl msleep
/* 803F78F0  3B FF 00 01 */	addi r31, r31, 1
lbl_803F78F4:
/* 803F78F4  2C 1E 00 00 */	cmpwi r30, 0
/* 803F78F8  40 82 00 0C */	bne lbl_803F7904
/* 803F78FC  2C 1F 01 F4 */	cmpwi r31, 0x1f4
/* 803F7900  41 80 FF D0 */	blt lbl_803F78D0
lbl_803F7904:
/* 803F7904  2C 1E 00 01 */	cmpwi r30, 1
/* 803F7908  40 82 00 08 */	bne lbl_803F7910
/* 803F790C  3B A0 00 01 */	li r29, 1
lbl_803F7910:
/* 803F7910  7F A3 EB 78 */	mr r3, r29
/* 803F7914  39 61 00 20 */	addi r11, r1, 0x20
/* 803F7918  4B CA 35 FD */	bl func_8009AF14
/* 803F791C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F7920  7C 08 03 A6 */	mtlr r0
/* 803F7924  38 21 00 20 */	addi r1, r1, 0x20
/* 803F7928  4E 80 00 20 */	blr 
