lbl_803C69CC:
/* 803C69CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C69D0  7C 08 02 A6 */	mflr r0
/* 803C69D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C69D8  39 61 00 20 */	addi r11, r1, 0x20
/* 803C69DC  4B CD 44 F5 */	bl func_8009AED0
/* 803C69E0  7C 7C 1B 79 */	or. r28, r3, r3
/* 803C69E4  3B A0 00 00 */	li r29, 0
/* 803C69E8  41 82 00 E0 */	beq lbl_803C6AC8
/* 803C69EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C69F0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803C69F4  3F E3 00 02 */	addis r31, r3, 2
/* 803C69F8  80 1F 61 3C */	lwz r0, 0x613c(r31)
/* 803C69FC  28 00 00 00 */	cmplwi r0, 0
/* 803C6A00  41 82 00 C8 */	beq lbl_803C6AC8
/* 803C6A04  88 1C 00 2A */	lbz r0, 0x2a(r28)
/* 803C6A08  28 00 00 00 */	cmplwi r0, 0
/* 803C6A0C  40 82 00 BC */	bne lbl_803C6AC8
/* 803C6A10  3B DC 00 16 */	addi r30, r28, 0x16
/* 803C6A14  7F C3 F3 78 */	mr r3, r30
/* 803C6A18  48 01 96 2D */	bl mPr_NullCheckPersonalID
/* 803C6A1C  2C 03 00 00 */	cmpwi r3, 0
/* 803C6A20  40 82 00 A8 */	bne lbl_803C6AC8
/* 803C6A24  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 803C6A28  7F C3 F3 78 */	mr r3, r30
/* 803C6A2C  48 01 97 19 */	bl mPr_CheckCmpPersonalID
/* 803C6A30  2C 03 00 01 */	cmpwi r3, 1
/* 803C6A34  40 82 00 0C */	bne lbl_803C6A40
/* 803C6A38  83 BF 61 3C */	lwz r29, 0x613c(r31)
/* 803C6A3C  48 00 00 28 */	b lbl_803C6A64
lbl_803C6A40:
/* 803C6A40  7F C3 F3 78 */	mr r3, r30
/* 803C6A44  48 01 9C 65 */	bl mPr_GetPrivateIdx
/* 803C6A48  2C 03 FF FF */	cmpwi r3, -1
/* 803C6A4C  41 82 00 18 */	beq lbl_803C6A64
/* 803C6A50  1C 83 24 40 */	mulli r4, r3, 0x2440
/* 803C6A54  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C6A58  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803C6A5C  7C 60 22 14 */	add r3, r0, r4
/* 803C6A60  3B A3 00 20 */	addi r29, r3, 0x20
lbl_803C6A64:
/* 803C6A64  28 1D 00 00 */	cmplwi r29, 0
/* 803C6A68  41 82 00 60 */	beq lbl_803C6AC8
/* 803C6A6C  A0 BC 00 2C */	lhz r5, 0x2c(r28)
/* 803C6A70  28 05 00 00 */	cmplwi r5, 0
/* 803C6A74  41 82 00 54 */	beq lbl_803C6AC8
/* 803C6A78  28 05 FF FF */	cmplwi r5, 0xffff
/* 803C6A7C  41 82 00 4C */	beq lbl_803C6AC8
/* 803C6A80  28 05 25 11 */	cmplwi r5, 0x2511
/* 803C6A84  3B DD 00 18 */	addi r30, r29, 0x18
/* 803C6A88  40 82 00 24 */	bne lbl_803C6AAC
/* 803C6A8C  88 7E 00 00 */	lbz r3, 0(r30)
/* 803C6A90  54 64 06 FE */	clrlwi r4, r3, 0x1b
/* 803C6A94  28 04 00 1E */	cmplwi r4, 0x1e
/* 803C6A98  40 80 00 30 */	bge lbl_803C6AC8
/* 803C6A9C  38 04 00 01 */	addi r0, r4, 1
/* 803C6AA0  50 03 06 FE */	rlwimi r3, r0, 0, 0x1b, 0x1f
/* 803C6AA4  98 7E 00 00 */	stb r3, 0(r30)
/* 803C6AA8  48 00 00 20 */	b lbl_803C6AC8
lbl_803C6AAC:
/* 803C6AAC  7F A4 EB 78 */	mr r4, r29
/* 803C6AB0  38 7E 00 02 */	addi r3, r30, 2
/* 803C6AB4  4B FF FB 69 */	bl mMsm_SetRemailInfo
/* 803C6AB8  88 1E 00 00 */	lbz r0, 0(r30)
/* 803C6ABC  38 60 00 01 */	li r3, 1
/* 803C6AC0  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 803C6AC4  98 1E 00 00 */	stb r0, 0(r30)
lbl_803C6AC8:
/* 803C6AC8  39 61 00 20 */	addi r11, r1, 0x20
/* 803C6ACC  4B CD 44 51 */	bl func_8009AF1C
/* 803C6AD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C6AD4  7C 08 03 A6 */	mtlr r0
/* 803C6AD8  38 21 00 20 */	addi r1, r1, 0x20
/* 803C6ADC  4E 80 00 20 */	blr 
