lbl_80384348:
/* 80384348  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038434C  7C 08 02 A6 */	mflr r0
/* 80384350  90 01 00 24 */	stw r0, 0x24(r1)
/* 80384354  39 61 00 20 */	addi r11, r1, 0x20
/* 80384358  4B D1 6B 79 */	bl func_8009AED0
/* 8038435C  7C 7C 1B 78 */	mr r28, r3
/* 80384360  7C BD 2B 78 */	mr r29, r5
/* 80384364  3B C0 00 00 */	li r30, 0
/* 80384368  7C 85 23 78 */	mr r5, r4
/* 8038436C  7F 9F E3 78 */	mr r31, r28
/* 80384370  48 00 00 30 */	b lbl_803843A0
lbl_80384374:
/* 80384374  88 1F 00 00 */	lbz r0, 0(r31)
/* 80384378  28 00 00 7F */	cmplwi r0, 0x7f
/* 8038437C  40 82 00 1C */	bne lbl_80384398
/* 80384380  7F 83 E3 78 */	mr r3, r28
/* 80384384  7F C4 F3 78 */	mr r4, r30
/* 80384388  7F A6 EB 78 */	mr r6, r29
/* 8038438C  4B FF FF 61 */	bl mChoice_Put_String
/* 80384390  7C 65 1B 78 */	mr r5, r3
/* 80384394  48 00 00 0C */	b lbl_803843A0
lbl_80384398:
/* 80384398  3B DE 00 01 */	addi r30, r30, 1
/* 8038439C  3B FF 00 01 */	addi r31, r31, 1
lbl_803843A0:
/* 803843A0  7C 1E 28 00 */	cmpw r30, r5
/* 803843A4  41 80 FF D0 */	blt lbl_80384374
/* 803843A8  39 61 00 20 */	addi r11, r1, 0x20
/* 803843AC  4B D1 6B 71 */	bl func_8009AF1C
/* 803843B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803843B4  7C 08 03 A6 */	mtlr r0
/* 803843B8  38 21 00 20 */	addi r1, r1, 0x20
/* 803843BC  4E 80 00 20 */	blr 