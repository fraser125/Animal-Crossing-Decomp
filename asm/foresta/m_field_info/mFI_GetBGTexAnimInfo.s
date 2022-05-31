lbl_803A69A0:
/* 803A69A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A69A4  7C 08 02 A6 */	mflr r0
/* 803A69A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A69AC  39 61 00 20 */	addi r11, r1, 0x20
/* 803A69B0  4B CF 45 21 */	bl func_8009AED0
/* 803A69B4  7C 9D 23 78 */	mr r29, r4
/* 803A69B8  7C BE 2B 78 */	mr r30, r5
/* 803A69BC  7C 7C 1B 78 */	mr r28, r3
/* 803A69C0  7F A3 EB 78 */	mr r3, r29
/* 803A69C4  7F C4 F3 78 */	mr r4, r30
/* 803A69C8  4B FF E7 F1 */	bl mFI_GetBlockNum
/* 803A69CC  7C 7F 1B 78 */	mr r31, r3
/* 803A69D0  7F A3 EB 78 */	mr r3, r29
/* 803A69D4  7F C4 F3 78 */	mr r4, r30
/* 803A69D8  4B FF E8 31 */	bl mFI_BlockCheck
/* 803A69DC  2C 03 00 00 */	cmpwi r3, 0
/* 803A69E0  40 82 00 14 */	bne lbl_803A69F4
/* 803A69E4  38 00 00 00 */	li r0, 0
/* 803A69E8  38 60 00 00 */	li r3, 0
/* 803A69EC  98 1C 00 00 */	stb r0, 0(r28)
/* 803A69F0  48 00 00 28 */	b lbl_803A6A18
lbl_803A69F4:
/* 803A69F4  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A69F8  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A69FC  80 63 00 00 */	lwz r3, 0(r3)
/* 803A6A00  1C 1F 06 14 */	mulli r0, r31, 0x614
/* 803A6A04  80 63 00 74 */	lwz r3, 0x74(r3)
/* 803A6A08  7C 83 02 14 */	add r4, r3, r0
/* 803A6A0C  80 64 00 0C */	lwz r3, 0xc(r4)
/* 803A6A10  88 04 00 10 */	lbz r0, 0x10(r4)
/* 803A6A14  98 1C 00 00 */	stb r0, 0(r28)
lbl_803A6A18:
/* 803A6A18  39 61 00 20 */	addi r11, r1, 0x20
/* 803A6A1C  4B CF 45 01 */	bl func_8009AF1C
/* 803A6A20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A6A24  7C 08 03 A6 */	mtlr r0
/* 803A6A28  38 21 00 20 */	addi r1, r1, 0x20
/* 803A6A2C  4E 80 00 20 */	blr 
