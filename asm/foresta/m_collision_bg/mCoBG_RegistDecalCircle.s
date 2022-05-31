lbl_8038DBD0:
/* 8038DBD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8038DBD4  7C 08 02 A6 */	mflr r0
/* 8038DBD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8038DBDC  39 61 00 20 */	addi r11, r1, 0x20
/* 8038DBE0  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8038DBE4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8038DBE8  4B D0 D2 E1 */	bl func_8009AEC8
/* 8038DBEC  3C A0 81 13 */	lis r5, data_81135548@ha /* 0x81135548@ha */
/* 8038DBF0  FF C0 08 90 */	fmr f30, f1
/* 8038DBF4  3B E5 55 48 */	addi r31, r5, data_81135548@l /* 0x81135548@l */
/* 8038DBF8  FF E0 10 90 */	fmr f31, f2
/* 8038DBFC  80 1F 1E 04 */	lwz r0, 0x1e04(r31)
/* 8038DC00  7C 7A 1B 78 */	mr r26, r3
/* 8038DC04  7C 9B 23 78 */	mr r27, r4
/* 8038DC08  2C 00 00 03 */	cmpwi r0, 3
/* 8038DC0C  3B BF 1E 08 */	addi r29, r31, 0x1e08
/* 8038DC10  3B 9F 1E 68 */	addi r28, r31, 0x1e68
/* 8038DC14  40 80 00 8C */	bge lbl_8038DCA0
/* 8038DC18  3B C0 00 00 */	li r30, 0
lbl_8038DC1C:
/* 8038DC1C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8038DC20  2C 00 00 00 */	cmpwi r0, 0
/* 8038DC24  40 82 00 68 */	bne lbl_8038DC8C
/* 8038DC28  7F A3 EB 78 */	mr r3, r29
/* 8038DC2C  38 80 00 60 */	li r4, 0x60
/* 8038DC30  4B CC F4 39 */	bl bzero
/* 8038DC34  7F 83 E3 78 */	mr r3, r28
/* 8038DC38  38 80 00 20 */	li r4, 0x20
/* 8038DC3C  4B CC F4 2D */	bl bzero
/* 8038DC40  38 60 00 01 */	li r3, 1
/* 8038DC44  80 1A 00 00 */	lwz r0, 0(r26)
/* 8038DC48  90 7D 00 0C */	stw r3, 0xc(r29)
/* 8038DC4C  7F A3 EB 78 */	mr r3, r29
/* 8038DC50  80 BA 00 04 */	lwz r5, 4(r26)
/* 8038DC54  7F 84 E3 78 */	mr r4, r28
/* 8038DC58  90 1D 00 00 */	stw r0, 0(r29)
/* 8038DC5C  80 1A 00 08 */	lwz r0, 8(r26)
/* 8038DC60  90 BD 00 04 */	stw r5, 4(r29)
/* 8038DC64  90 1D 00 08 */	stw r0, 8(r29)
/* 8038DC68  D3 DD 00 10 */	stfs f30, 0x10(r29)
/* 8038DC6C  D3 FD 00 14 */	stfs f31, 0x14(r29)
/* 8038DC70  D3 DD 00 18 */	stfs f30, 0x18(r29)
/* 8038DC74  B3 7D 00 1C */	sth r27, 0x1c(r29)
/* 8038DC78  B3 7D 00 1E */	sth r27, 0x1e(r29)
/* 8038DC7C  4B FF FD E1 */	bl mCoBG_CalcTimerDecalCircleOne
/* 8038DC80  80 7F 1E 04 */	lwz r3, 0x1e04(r31)
/* 8038DC84  38 03 00 01 */	addi r0, r3, 1
/* 8038DC88  90 1F 1E 04 */	stw r0, 0x1e04(r31)
lbl_8038DC8C:
/* 8038DC8C  3B DE 00 01 */	addi r30, r30, 1
/* 8038DC90  3B 9C 00 20 */	addi r28, r28, 0x20
/* 8038DC94  2C 1E 00 03 */	cmpwi r30, 3
/* 8038DC98  3B BD 00 20 */	addi r29, r29, 0x20
/* 8038DC9C  41 80 FF 80 */	blt lbl_8038DC1C
lbl_8038DCA0:
/* 8038DCA0  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8038DCA4  38 60 FF FF */	li r3, -1
/* 8038DCA8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8038DCAC  39 61 00 20 */	addi r11, r1, 0x20
/* 8038DCB0  4B D0 D2 65 */	bl func_8009AF14
/* 8038DCB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8038DCB8  7C 08 03 A6 */	mtlr r0
/* 8038DCBC  38 21 00 30 */	addi r1, r1, 0x30
/* 8038DCC0  4E 80 00 20 */	blr 
