lbl_805A52A0:
/* 805A52A0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805A52A4  7C 08 02 A6 */	mflr r0
/* 805A52A8  90 01 00 54 */	stw r0, 0x54(r1)
/* 805A52AC  39 61 00 48 */	addi r11, r1, 0x48
/* 805A52B0  DB E1 00 48 */	stfd f31, 0x48(r1)
/* 805A52B4  4B AF 5C 21 */	bl func_8009AED4
/* 805A52B8  7C 7D 1B 78 */	mr r29, r3
/* 805A52BC  3C 60 80 6C */	lis r3, lit_500@ha /* 0x806C4238@ha */
/* 805A52C0  81 1D 00 28 */	lwz r8, 0x28(r29)
/* 805A52C4  7C BF 2B 78 */	mr r31, r5
/* 805A52C8  80 FD 00 2C */	lwz r7, 0x2c(r29)
/* 805A52CC  38 03 42 38 */	addi r0, r3, lit_500@l /* 0x806C4238@l */
/* 805A52D0  80 DD 00 30 */	lwz r6, 0x30(r29)
/* 805A52D4  7C 9E 23 78 */	mr r30, r4
/* 805A52D8  91 01 00 08 */	stw r8, 8(r1)
/* 805A52DC  7C 04 03 78 */	mr r4, r0
/* 805A52E0  38 61 00 20 */	addi r3, r1, 0x20
/* 805A52E4  38 A0 01 DA */	li r5, 0x1da
/* 805A52E8  90 E1 00 0C */	stw r7, 0xc(r1)
/* 805A52EC  90 C1 00 10 */	stw r6, 0x10(r1)
/* 805A52F0  91 01 00 2C */	stw r8, 0x2c(r1)
/* 805A52F4  90 E1 00 30 */	stw r7, 0x30(r1)
/* 805A52F8  90 C1 00 34 */	stw r6, 0x34(r1)
/* 805A52FC  91 01 00 20 */	stw r8, 0x20(r1)
/* 805A5300  90 E1 00 24 */	stw r7, 0x24(r1)
/* 805A5304  90 C1 00 28 */	stw r6, 0x28(r1)
/* 805A5308  4B DE EC B1 */	bl mCoBG_GetWaterHeight_File
/* 805A530C  FF E0 08 90 */	fmr f31, f1
/* 805A5310  7F A3 EB 78 */	mr r3, r29
/* 805A5314  48 00 02 79 */	bl aGKK_Get_flow_angle
/* 805A5318  D3 E1 00 30 */	stfs f31, 0x30(r1)
/* 805A531C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805A5320  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 805A5324  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805A5328  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 805A532C  3C 84 00 02 */	addis r4, r4, 2
/* 805A5330  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A5334  7F C7 F3 78 */	mr r7, r30
/* 805A5338  90 C1 00 14 */	stw r6, 0x14(r1)
/* 805A533C  7C 66 1B 78 */	mr r6, r3
/* 805A5340  81 44 60 9C */	lwz r10, 0x609c(r4)
/* 805A5344  7F E9 FB 78 */	mr r9, r31
/* 805A5348  90 A1 00 18 */	stw r5, 0x18(r1)
/* 805A534C  38 81 00 14 */	addi r4, r1, 0x14
/* 805A5350  38 60 00 45 */	li r3, 0x45
/* 805A5354  38 A0 00 01 */	li r5, 1
/* 805A5358  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805A535C  39 00 00 00 */	li r8, 0
/* 805A5360  81 8A 00 00 */	lwz r12, 0(r10)
/* 805A5364  39 40 00 00 */	li r10, 0
/* 805A5368  7D 89 03 A6 */	mtctr r12
/* 805A536C  4E 80 04 21 */	bctrl 
/* 805A5370  39 61 00 48 */	addi r11, r1, 0x48
/* 805A5374  CB E1 00 48 */	lfd f31, 0x48(r1)
/* 805A5378  4B AF 5B A9 */	bl func_8009AF20
/* 805A537C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805A5380  7C 08 03 A6 */	mtlr r0
/* 805A5384  38 21 00 50 */	addi r1, r1, 0x50
/* 805A5388  4E 80 00 20 */	blr 
