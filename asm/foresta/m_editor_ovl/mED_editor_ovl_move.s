lbl_805DABDC:
/* 805DABDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DABE0  7C 08 02 A6 */	mflr r0
/* 805DABE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DABE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DABEC  93 C1 00 08 */	stw r30, 8(r1)
/* 805DABF0  7C 7E 1B 78 */	mr r30, r3
/* 805DABF4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805DABF8  81 84 03 30 */	lwz r12, 0x330(r4)
/* 805DABFC  3B E4 03 24 */	addi r31, r4, 0x324
/* 805DAC00  7D 89 03 A6 */	mtctr r12
/* 805DAC04  4E 80 04 21 */	bctrl 
/* 805DAC08  80 1F 00 04 */	lwz r0, 4(r31)
/* 805DAC0C  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806CCE10@ha */
/* 805DAC10  38 A3 CE 10 */	addi r5, r3, ovl_move_proc@l /* 0x806CCE10@l */
/* 805DAC14  7F C3 F3 78 */	mr r3, r30
/* 805DAC18  54 00 10 3A */	slwi r0, r0, 2
/* 805DAC1C  7F E4 FB 78 */	mr r4, r31
/* 805DAC20  7D 85 00 2E */	lwzx r12, r5, r0
/* 805DAC24  7D 89 03 A6 */	mtctr r12
/* 805DAC28  4E 80 04 21 */	bctrl 
/* 805DAC2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DAC30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DAC34  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DAC38  7C 08 03 A6 */	mtlr r0
/* 805DAC3C  38 21 00 10 */	addi r1, r1, 0x10
/* 805DAC40  4E 80 00 20 */	blr 
