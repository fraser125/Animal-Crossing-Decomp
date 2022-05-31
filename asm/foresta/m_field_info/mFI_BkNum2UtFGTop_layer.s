lbl_803A71D8:
/* 803A71D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A71DC  7C 08 02 A6 */	mflr r0
/* 803A71E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A71E4  39 61 00 20 */	addi r11, r1, 0x20
/* 803A71E8  4B CF 3C E9 */	bl func_8009AED0
/* 803A71EC  7C 7C 1B 78 */	mr r28, r3
/* 803A71F0  7C 9D 23 78 */	mr r29, r4
/* 803A71F4  7C BE 2B 78 */	mr r30, r5
/* 803A71F8  3B E0 00 00 */	li r31, 0
/* 803A71FC  4B FF DA 95 */	bl mFI_CheckFieldData
/* 803A7200  2C 03 00 00 */	cmpwi r3, 0
/* 803A7204  41 82 00 60 */	beq lbl_803A7264
/* 803A7208  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A720C  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A7210  80 63 00 00 */	lwz r3, 0(r3)
/* 803A7214  80 63 00 78 */	lwz r3, 0x78(r3)
/* 803A7218  28 03 00 00 */	cmplwi r3, 0
/* 803A721C  41 82 00 48 */	beq lbl_803A7264
/* 803A7220  2C 1C 00 00 */	cmpwi r28, 0
/* 803A7224  40 82 00 40 */	bne lbl_803A7264
/* 803A7228  2C 1D 00 00 */	cmpwi r29, 0
/* 803A722C  40 82 00 38 */	bne lbl_803A7264
/* 803A7230  2C 1E 00 00 */	cmpwi r30, 0
/* 803A7234  40 82 00 18 */	bne lbl_803A724C
/* 803A7238  7F 83 E3 78 */	mr r3, r28
/* 803A723C  7F A4 EB 78 */	mr r4, r29
/* 803A7240  4B FF FF 15 */	bl mFI_BkNumtoUtFGTop
/* 803A7244  7C 7F 1B 78 */	mr r31, r3
/* 803A7248  48 00 00 1C */	b lbl_803A7264
lbl_803A724C:
/* 803A724C  40 81 00 18 */	ble lbl_803A7264
/* 803A7250  2C 1E 00 04 */	cmpwi r30, 4
/* 803A7254  40 80 00 10 */	bge lbl_803A7264
/* 803A7258  57 C0 10 3A */	slwi r0, r30, 2
/* 803A725C  7C 63 02 14 */	add r3, r3, r0
/* 803A7260  83 E3 FF FC */	lwz r31, -4(r3)
lbl_803A7264:
/* 803A7264  7F E3 FB 78 */	mr r3, r31
/* 803A7268  39 61 00 20 */	addi r11, r1, 0x20
/* 803A726C  4B CF 3C B1 */	bl func_8009AF1C
/* 803A7270  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A7274  7C 08 03 A6 */	mtlr r0
/* 803A7278  38 21 00 20 */	addi r1, r1, 0x20
/* 803A727C  4E 80 00 20 */	blr 
