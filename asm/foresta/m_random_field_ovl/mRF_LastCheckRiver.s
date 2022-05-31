lbl_80509A08:
/* 80509A08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80509A0C  7C 08 02 A6 */	mflr r0
/* 80509A10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80509A14  39 61 00 20 */	addi r11, r1, 0x20
/* 80509A18  4B B9 14 B9 */	bl func_8009AED0
/* 80509A1C  7C 7C 1B 78 */	mr r28, r3
/* 80509A20  7C 9F 23 78 */	mr r31, r4
/* 80509A24  7C 83 23 78 */	mr r3, r4
/* 80509A28  7C BE 2B 78 */	mr r30, r5
/* 80509A2C  7C A4 2B 78 */	mr r4, r5
/* 80509A30  4B FF F4 0D */	bl mRF_D2ToD1
/* 80509A34  7F BC 18 AE */	lbzx r29, r28, r3
/* 80509A38  48 00 00 40 */	b lbl_80509A78
lbl_80509A3C:
/* 80509A3C  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 80509A40  38 63 FF D8 */	addi r3, r3, -40
/* 80509A44  4B ED B3 A5 */	bl mRF_RiverIdx2NextDirect
/* 80509A48  54 67 06 3E */	clrlwi r7, r3, 0x18
/* 80509A4C  7F E5 FB 78 */	mr r5, r31
/* 80509A50  7F C6 F3 78 */	mr r6, r30
/* 80509A54  38 61 00 0C */	addi r3, r1, 0xc
/* 80509A58  38 81 00 08 */	addi r4, r1, 8
/* 80509A5C  4B FF F3 ED */	bl mRF_Direct2BlockNo
/* 80509A60  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80509A64  80 81 00 08 */	lwz r4, 8(r1)
/* 80509A68  4B FF F3 D5 */	bl mRF_D2ToD1
/* 80509A6C  7F BC 18 AE */	lbzx r29, r28, r3
/* 80509A70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80509A74  83 C1 00 08 */	lwz r30, 8(r1)
lbl_80509A78:
/* 80509A78  7F A3 EB 78 */	mr r3, r29
/* 80509A7C  38 80 00 01 */	li r4, 1
/* 80509A80  4B FF F4 3D */	bl mRF_CheckBlockGroup
/* 80509A84  2C 03 00 00 */	cmpwi r3, 0
/* 80509A88  40 82 FF B4 */	bne lbl_80509A3C
/* 80509A8C  38 00 00 06 */	li r0, 6
/* 80509A90  39 61 00 20 */	addi r11, r1, 0x20
/* 80509A94  7F C0 02 78 */	xor r0, r30, r0
/* 80509A98  7C 03 0E 70 */	srawi r3, r0, 1
/* 80509A9C  7C 00 F0 38 */	and r0, r0, r30
/* 80509AA0  7C 00 18 50 */	subf r0, r0, r3
/* 80509AA4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80509AA8  4B B9 14 75 */	bl func_8009AF1C
/* 80509AAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80509AB0  7C 08 03 A6 */	mtlr r0
/* 80509AB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80509AB8  4E 80 00 20 */	blr 
