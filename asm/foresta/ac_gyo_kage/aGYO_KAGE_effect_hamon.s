lbl_804255E4:
/* 804255E4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804255E8  7C 08 02 A6 */	mflr r0
/* 804255EC  90 01 00 54 */	stw r0, 0x54(r1)
/* 804255F0  39 61 00 48 */	addi r11, r1, 0x48
/* 804255F4  DB E1 00 48 */	stfd f31, 0x48(r1)
/* 804255F8  4B C7 58 DD */	bl func_8009AED4
/* 804255FC  7C 7D 1B 78 */	mr r29, r3
/* 80425600  3C 60 80 68 */	lis r3, lit_444@ha /* 0x80682BE8@ha */
/* 80425604  81 1D 00 28 */	lwz r8, 0x28(r29)
/* 80425608  7C BF 2B 78 */	mr r31, r5
/* 8042560C  80 FD 00 2C */	lwz r7, 0x2c(r29)
/* 80425610  38 03 2B E8 */	addi r0, r3, lit_444@l /* 0x80682BE8@l */
/* 80425614  80 DD 00 30 */	lwz r6, 0x30(r29)
/* 80425618  7C 9E 23 78 */	mr r30, r4
/* 8042561C  91 01 00 08 */	stw r8, 8(r1)
/* 80425620  7C 04 03 78 */	mr r4, r0
/* 80425624  38 61 00 20 */	addi r3, r1, 0x20
/* 80425628  38 A0 00 8B */	li r5, 0x8b
/* 8042562C  90 E1 00 0C */	stw r7, 0xc(r1)
/* 80425630  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80425634  91 01 00 2C */	stw r8, 0x2c(r1)
/* 80425638  90 E1 00 30 */	stw r7, 0x30(r1)
/* 8042563C  90 C1 00 34 */	stw r6, 0x34(r1)
/* 80425640  91 01 00 20 */	stw r8, 0x20(r1)
/* 80425644  90 E1 00 24 */	stw r7, 0x24(r1)
/* 80425648  90 C1 00 28 */	stw r6, 0x28(r1)
/* 8042564C  4B F6 E9 6D */	bl mCoBG_GetWaterHeight_File
/* 80425650  FF E0 08 90 */	fmr f31, f1
/* 80425654  7F A3 EB 78 */	mr r3, r29
/* 80425658  4B FF FF 51 */	bl func_804255A8
/* 8042565C  D3 E1 00 30 */	stfs f31, 0x30(r1)
/* 80425660  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80425664  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 80425668  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8042566C  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 80425670  3C 84 00 02 */	addis r4, r4, 2
/* 80425674  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80425678  7F C7 F3 78 */	mr r7, r30
/* 8042567C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80425680  7C 66 1B 78 */	mr r6, r3
/* 80425684  81 44 60 9C */	lwz r10, 0x609c(r4)
/* 80425688  7F E9 FB 78 */	mr r9, r31
/* 8042568C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80425690  38 81 00 14 */	addi r4, r1, 0x14
/* 80425694  38 60 00 45 */	li r3, 0x45
/* 80425698  38 A0 00 01 */	li r5, 1
/* 8042569C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804256A0  39 00 00 00 */	li r8, 0
/* 804256A4  81 8A 00 00 */	lwz r12, 0(r10)
/* 804256A8  39 40 00 00 */	li r10, 0
/* 804256AC  7D 89 03 A6 */	mtctr r12
/* 804256B0  4E 80 04 21 */	bctrl 
/* 804256B4  39 61 00 48 */	addi r11, r1, 0x48
/* 804256B8  CB E1 00 48 */	lfd f31, 0x48(r1)
/* 804256BC  4B C7 58 65 */	bl func_8009AF20
/* 804256C0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804256C4  7C 08 03 A6 */	mtlr r0
/* 804256C8  38 21 00 50 */	addi r1, r1, 0x50
/* 804256CC  4E 80 00 20 */	blr 
