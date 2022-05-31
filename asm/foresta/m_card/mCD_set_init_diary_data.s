lbl_803FA194:
/* 803FA194  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FA198  7C 08 02 A6 */	mflr r0
/* 803FA19C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FA1A0  39 61 00 20 */	addi r11, r1, 0x20
/* 803FA1A4  4B CA 0D 29 */	bl func_8009AECC
/* 803FA1A8  7C 7B 1B 78 */	mr r27, r3
/* 803FA1AC  3B A0 00 00 */	li r29, 0
/* 803FA1B0  3B E0 00 00 */	li r31, 0
lbl_803FA1B4:
/* 803FA1B4  3B DF 00 02 */	addi r30, r31, 2
/* 803FA1B8  3B 80 00 00 */	li r28, 0
/* 803FA1BC  7F DB F2 14 */	add r30, r27, r30
lbl_803FA1C0:
/* 803FA1C0  7F C3 F3 78 */	mr r3, r30
/* 803FA1C4  4B FA 03 15 */	bl mDi_init_diary
/* 803FA1C8  3B 9C 00 01 */	addi r28, r28, 1
/* 803FA1CC  3B DE 03 E0 */	addi r30, r30, 0x3e0
/* 803FA1D0  2C 1C 00 0C */	cmpwi r28, 0xc
/* 803FA1D4  41 80 FF EC */	blt lbl_803FA1C0
/* 803FA1D8  3B BD 00 01 */	addi r29, r29, 1
/* 803FA1DC  3B FF 2E 80 */	addi r31, r31, 0x2e80
/* 803FA1E0  2C 1D 00 04 */	cmpwi r29, 4
/* 803FA1E4  41 80 FF D0 */	blt lbl_803FA1B4
/* 803FA1E8  39 61 00 20 */	addi r11, r1, 0x20
/* 803FA1EC  4B CA 0D 2D */	bl func_8009AF18
/* 803FA1F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FA1F4  7C 08 03 A6 */	mtlr r0
/* 803FA1F8  38 21 00 20 */	addi r1, r1, 0x20
/* 803FA1FC  4E 80 00 20 */	blr 
