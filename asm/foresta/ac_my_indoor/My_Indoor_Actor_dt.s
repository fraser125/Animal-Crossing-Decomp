lbl_8046F45C:
/* 8046F45C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046F460  7C 08 02 A6 */	mflr r0
/* 8046F464  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046F468  39 61 00 20 */	addi r11, r1, 0x20
/* 8046F46C  4B C2 BA 65 */	bl func_8009AED0
/* 8046F470  7C 7C 1B 78 */	mr r28, r3
/* 8046F474  38 80 00 00 */	li r4, 0
/* 8046F478  4B FF FC A9 */	bl aMI_SetClipProc
/* 8046F47C  3B A0 00 00 */	li r29, 0
/* 8046F480  3B E0 00 00 */	li r31, 0
lbl_8046F484:
/* 8046F484  7F DC FA 14 */	add r30, r28, r31
/* 8046F488  80 7E 01 94 */	lwz r3, 0x194(r30)
/* 8046F48C  28 03 00 00 */	cmplwi r3, 0
/* 8046F490  41 82 00 08 */	beq lbl_8046F498
/* 8046F494  4B F4 D0 21 */	bl zelda_free
lbl_8046F498:
/* 8046F498  80 7E 01 90 */	lwz r3, 0x190(r30)
/* 8046F49C  28 03 00 00 */	cmplwi r3, 0
/* 8046F4A0  41 82 00 08 */	beq lbl_8046F4A8
/* 8046F4A4  4B F4 D0 11 */	bl zelda_free
lbl_8046F4A8:
/* 8046F4A8  3B BD 00 01 */	addi r29, r29, 1
/* 8046F4AC  3B FF 00 18 */	addi r31, r31, 0x18
/* 8046F4B0  2C 1D 00 02 */	cmpwi r29, 2
/* 8046F4B4  41 80 FF D0 */	blt lbl_8046F484
/* 8046F4B8  39 61 00 20 */	addi r11, r1, 0x20
/* 8046F4BC  4B C2 BA 61 */	bl func_8009AF1C
/* 8046F4C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046F4C4  7C 08 03 A6 */	mtlr r0
/* 8046F4C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8046F4CC  4E 80 00 20 */	blr 
