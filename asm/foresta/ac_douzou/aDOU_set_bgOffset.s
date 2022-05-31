lbl_805ADD20:
/* 805ADD20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805ADD24  7C 08 02 A6 */	mflr r0
/* 805ADD28  90 01 00 34 */	stw r0, 0x34(r1)
/* 805ADD2C  39 61 00 30 */	addi r11, r1, 0x30
/* 805ADD30  4B AE D1 A1 */	bl func_8009AED0
/* 805ADD34  2C 04 00 00 */	cmpwi r4, 0
/* 805ADD38  7C 7C 1B 78 */	mr r28, r3
/* 805ADD3C  38 00 00 09 */	li r0, 9
/* 805ADD40  7C 1E 07 34 */	extsh r30, r0
/* 805ADD44  3B A0 00 00 */	li r29, 0
/* 805ADD48  3B E0 00 00 */	li r31, 0
lbl_805ADD4C:
/* 805ADD4C  7F A3 EB 78 */	mr r3, r29
/* 805ADD50  4B FF F9 D1 */	bl func_805AD720
/* 805ADD54  2C 03 00 00 */	cmpwi r3, 0
/* 805ADD58  41 82 00 68 */	beq lbl_805ADDC0
/* 805ADD5C  38 61 00 14 */	addi r3, r1, 0x14
/* 805ADD60  38 9C 00 0C */	addi r4, r28, 0xc
/* 805ADD64  4B E0 D1 59 */	bl xyz_t_move
/* 805ADD68  3C 80 80 6C */	lis r4, xpostbl@ha /* 0x806C4E24@ha */
/* 805ADD6C  3C 60 80 6C */	lis r3, zpostbl@ha /* 0x806C4E14@ha */
/* 805ADD70  38 84 4E 24 */	addi r4, r4, xpostbl@l /* 0x806C4E24@l */
/* 805ADD74  80 01 00 18 */	lwz r0, 0x18(r1)
/* 805ADD78  38 A3 4E 14 */	addi r5, r3, zpostbl@l /* 0x806C4E14@l */
/* 805ADD7C  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 805ADD80  7C 44 FC 2E */	lfsx f2, r4, r31
/* 805ADD84  7F C4 F3 78 */	mr r4, r30
/* 805ADD88  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 805ADD8C  38 61 00 08 */	addi r3, r1, 8
/* 805ADD90  7C 05 FC 2E */	lfsx f0, r5, r31
/* 805ADD94  EC 43 10 2A */	fadds f2, f3, f2
/* 805ADD98  90 01 00 0C */	stw r0, 0xc(r1)
/* 805ADD9C  38 A0 00 64 */	li r5, 0x64
/* 805ADDA0  EC 01 00 2A */	fadds f0, f1, f0
/* 805ADDA4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805ADDA8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805ADDAC  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 805ADDB0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805ADDB4  90 C1 00 08 */	stw r6, 8(r1)
/* 805ADDB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805ADDBC  4B DE 3C E1 */	bl mCoBG_SetPlussOffset
lbl_805ADDC0:
/* 805ADDC0  3B BD 00 01 */	addi r29, r29, 1
/* 805ADDC4  3B FF 00 04 */	addi r31, r31, 4
/* 805ADDC8  2C 1D 00 04 */	cmpwi r29, 4
/* 805ADDCC  41 80 FF 80 */	blt lbl_805ADD4C
/* 805ADDD0  39 61 00 30 */	addi r11, r1, 0x30
/* 805ADDD4  4B AE D1 49 */	bl func_8009AF1C
/* 805ADDD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805ADDDC  7C 08 03 A6 */	mtlr r0
/* 805ADDE0  38 21 00 30 */	addi r1, r1, 0x30
/* 805ADDE4  4E 80 00 20 */	blr 
