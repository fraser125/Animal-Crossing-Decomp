lbl_805CD140:
/* 805CD140  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CD144  7C 08 02 A6 */	mflr r0
/* 805CD148  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CD14C  39 61 00 20 */	addi r11, r1, 0x20
/* 805CD150  4B AC DD 81 */	bl func_8009AED0
/* 805CD154  7C 7C 1B 78 */	mr r28, r3
/* 805CD158  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805CD15C  80 83 09 C0 */	lwz r4, 0x9c0(r3)
/* 805CD160  88 04 0B B3 */	lbz r0, 0xbb3(r4)
/* 805CD164  28 00 00 00 */	cmplwi r0, 0
/* 805CD168  41 82 00 40 */	beq lbl_805CD1A8
/* 805CD16C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805CD170  3B E4 00 04 */	addi r31, r4, 4
/* 805CD174  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805CD178  3B A0 00 00 */	li r29, 0
/* 805CD17C  3C 63 00 02 */	addis r3, r3, 2
/* 805CD180  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805CD184  3B C3 04 E0 */	addi r30, r3, 0x4e0
lbl_805CD188:
/* 805CD188  7F C3 F3 78 */	mr r3, r30
/* 805CD18C  7F E4 FB 78 */	mr r4, r31
/* 805CD190  4B DE F7 E5 */	bl mMl_copy_mail
/* 805CD194  3B BD 00 01 */	addi r29, r29, 1
/* 805CD198  3B DE 01 2A */	addi r30, r30, 0x12a
/* 805CD19C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 805CD1A0  3B FF 01 2A */	addi r31, r31, 0x12a
/* 805CD1A4  41 80 FF E4 */	blt lbl_805CD188
lbl_805CD1A8:
/* 805CD1A8  3C 60 81 21 */	lis r3, cpmail_ovl_data@ha /* 0x81210350@ha */
/* 805CD1AC  38 63 03 50 */	addi r3, r3, cpmail_ovl_data@l /* 0x81210350@l */
/* 805CD1B0  80 63 00 00 */	lwz r3, 0(r3)
/* 805CD1B4  28 03 00 00 */	cmplwi r3, 0
/* 805CD1B8  41 82 00 14 */	beq lbl_805CD1CC
/* 805CD1BC  4B DE F2 F9 */	bl zelda_free
/* 805CD1C0  3C 60 81 21 */	lis r3, cpmail_ovl_data@ha /* 0x81210350@ha */
/* 805CD1C4  38 00 00 00 */	li r0, 0
/* 805CD1C8  90 03 03 50 */	stw r0, cpmail_ovl_data@l(r3)  /* 0x81210350@l */
lbl_805CD1CC:
/* 805CD1CC  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 805CD1D0  38 00 00 00 */	li r0, 0
/* 805CD1D4  90 03 09 C0 */	stw r0, 0x9c0(r3)
/* 805CD1D8  39 61 00 20 */	addi r11, r1, 0x20
/* 805CD1DC  4B AC DD 41 */	bl func_8009AF1C
/* 805CD1E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CD1E4  7C 08 03 A6 */	mtlr r0
/* 805CD1E8  38 21 00 20 */	addi r1, r1, 0x20
/* 805CD1EC  4E 80 00 20 */	blr 
