lbl_803FA938:
/* 803FA938  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FA93C  7C 08 02 A6 */	mflr r0
/* 803FA940  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FA944  39 61 00 20 */	addi r11, r1, 0x20
/* 803FA948  4B CA 05 89 */	bl func_8009AED0
/* 803FA94C  7C 7C 1B 79 */	or. r28, r3, r3
/* 803FA950  7C BD 2B 78 */	mr r29, r5
/* 803FA954  7C DE 33 78 */	mr r30, r6
/* 803FA958  38 60 FF FF */	li r3, -1
/* 803FA95C  41 82 00 4C */	beq lbl_803FA9A8
/* 803FA960  2C 04 00 00 */	cmpwi r4, 0
/* 803FA964  41 80 00 44 */	blt lbl_803FA9A8
/* 803FA968  2C 04 00 08 */	cmpwi r4, 8
/* 803FA96C  40 80 00 3C */	bge lbl_803FA9A8
/* 803FA970  1C C4 00 0C */	mulli r6, r4, 0xc
/* 803FA974  3C A0 80 66 */	lis r5, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 803FA978  7C 83 23 78 */	mr r3, r4
/* 803FA97C  38 05 E7 08 */	addi r0, r5, l_mcd_file_table@l /* 0x8065E708@l */
/* 803FA980  7F E0 32 14 */	add r31, r0, r6
/* 803FA984  4B FF FA 8D */	bl mCD_get_offset
/* 803FA988  80 9F 00 00 */	lwz r4, 0(r31)
/* 803FA98C  7C 67 1B 78 */	mr r7, r3
/* 803FA990  80 BF 00 08 */	lwz r5, 8(r31)
/* 803FA994  7F 83 E3 78 */	mr r3, r28
/* 803FA998  80 DF 00 04 */	lwz r6, 4(r31)
/* 803FA99C  7F A8 EB 78 */	mr r8, r29
/* 803FA9A0  7F C9 F3 78 */	mr r9, r30
/* 803FA9A4  4B FF DE 45 */	bl mCD_write_comp_bg
lbl_803FA9A8:
/* 803FA9A8  39 61 00 20 */	addi r11, r1, 0x20
/* 803FA9AC  4B CA 05 71 */	bl func_8009AF1C
/* 803FA9B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FA9B4  7C 08 03 A6 */	mtlr r0
/* 803FA9B8  38 21 00 20 */	addi r1, r1, 0x20
/* 803FA9BC  4E 80 00 20 */	blr 
