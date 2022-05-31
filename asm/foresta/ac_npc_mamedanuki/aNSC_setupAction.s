lbl_8055EDD0:
/* 8055EDD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055EDD4  7C 08 02 A6 */	mflr r0
/* 8055EDD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055EDDC  39 61 00 20 */	addi r11, r1, 0x20
/* 8055EDE0  4B B3 C0 F5 */	bl func_8009AED4
/* 8055EDE4  7C BF 2B 78 */	mr r31, r5
/* 8055EDE8  7C 7D 1B 78 */	mr r29, r3
/* 8055EDEC  3C A0 80 6B */	lis r5, process@ha /* 0x806AA154@ha */
/* 8055EDF0  93 E3 09 94 */	stw r31, 0x994(r3)
/* 8055EDF4  57 E0 10 3A */	slwi r0, r31, 2
/* 8055EDF8  7C 9E 23 78 */	mr r30, r4
/* 8055EDFC  38 A5 A1 54 */	addi r5, r5, process@l /* 0x806AA154@l */
/* 8055EE00  7F E4 FB 78 */	mr r4, r31
/* 8055EE04  7C 05 00 2E */	lwzx r0, r5, r0
/* 8055EE08  90 03 09 9C */	stw r0, 0x99c(r3)
/* 8055EE0C  4B FF B5 F9 */	bl func_8055A404
/* 8055EE10  7F A3 EB 78 */	mr r3, r29
/* 8055EE14  7F C4 F3 78 */	mr r4, r30
/* 8055EE18  7F E5 FB 78 */	mr r5, r31
/* 8055EE1C  4B FF FF 81 */	bl aNSC_init_proc
/* 8055EE20  39 61 00 20 */	addi r11, r1, 0x20
/* 8055EE24  4B B3 C0 FD */	bl func_8009AF20
/* 8055EE28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055EE2C  7C 08 03 A6 */	mtlr r0
/* 8055EE30  38 21 00 20 */	addi r1, r1, 0x20
/* 8055EE34  4E 80 00 20 */	blr 
