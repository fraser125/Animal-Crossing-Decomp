lbl_80497630:
/* 80497630  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80497634  7C 08 02 A6 */	mflr r0
/* 80497638  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049763C  39 61 00 30 */	addi r11, r1, 0x30
/* 80497640  4B C0 38 95 */	bl func_8009AED4
/* 80497644  7C FF 3B 78 */	mr r31, r7
/* 80497648  7C BD 2B 78 */	mr r29, r5
/* 8049764C  80 E7 00 10 */	lwz r7, 0x10(r7)
/* 80497650  7C DE 33 78 */	mr r30, r6
/* 80497654  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80497658  38 A1 00 14 */	addi r5, r1, 0x14
/* 8049765C  90 E1 00 14 */	stw r7, 0x14(r1)
/* 80497660  90 01 00 18 */	stw r0, 0x18(r1)
/* 80497664  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80497668  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8049766C  4B F0 E0 F5 */	bl mFI_Wpos2BlockNum
/* 80497670  2C 03 00 01 */	cmpwi r3, 1
/* 80497674  40 82 00 2C */	bne lbl_804976A0
/* 80497678  80 DF 00 10 */	lwz r6, 0x10(r31)
/* 8049767C  7F A3 EB 78 */	mr r3, r29
/* 80497680  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80497684  7F C4 F3 78 */	mr r4, r30
/* 80497688  38 A1 00 08 */	addi r5, r1, 8
/* 8049768C  90 C1 00 08 */	stw r6, 8(r1)
/* 80497690  90 01 00 0C */	stw r0, 0xc(r1)
/* 80497694  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80497698  90 01 00 10 */	stw r0, 0x10(r1)
/* 8049769C  4B F0 DF 71 */	bl mFI_Wpos2UtNum_inBlock
lbl_804976A0:
/* 804976A0  39 61 00 30 */	addi r11, r1, 0x30
/* 804976A4  4B C0 38 7D */	bl func_8009AF20
/* 804976A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804976AC  7C 08 03 A6 */	mtlr r0
/* 804976B0  38 21 00 30 */	addi r1, r1, 0x30
/* 804976B4  4E 80 00 20 */	blr 