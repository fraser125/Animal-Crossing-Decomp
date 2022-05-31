lbl_8050AC3C:
/* 8050AC3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050AC40  7C 08 02 A6 */	mflr r0
/* 8050AC44  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050AC48  39 61 00 20 */	addi r11, r1, 0x20
/* 8050AC4C  4B B9 02 7D */	bl func_8009AEC8
/* 8050AC50  7C 7A 1B 78 */	mr r26, r3
/* 8050AC54  3B A0 00 00 */	li r29, 0
/* 8050AC58  38 60 00 03 */	li r3, 3
/* 8050AC5C  4B FF E1 85 */	bl mRF_GetRandom
/* 8050AC60  7C 7E 1B 78 */	mr r30, r3
/* 8050AC64  3B 60 00 00 */	li r27, 0
/* 8050AC68  38 60 00 05 */	li r3, 5
/* 8050AC6C  38 80 00 06 */	li r4, 6
/* 8050AC70  4B FF E1 CD */	bl mRF_D2ToD1
/* 8050AC74  7C 1A 18 AE */	lbzx r0, r26, r3
/* 8050AC78  28 00 00 3F */	cmplwi r0, 0x3f
/* 8050AC7C  40 82 00 1C */	bne lbl_8050AC98
/* 8050AC80  3B E0 00 64 */	li r31, 0x64
/* 8050AC84  38 60 00 05 */	li r3, 5
/* 8050AC88  38 80 00 06 */	li r4, 6
/* 8050AC8C  4B FF E1 B1 */	bl mRF_D2ToD1
/* 8050AC90  7F FA 19 AE */	stbx r31, r26, r3
/* 8050AC94  48 00 00 0C */	b lbl_8050ACA0
lbl_8050AC98:
/* 8050AC98  38 60 00 00 */	li r3, 0
/* 8050AC9C  48 00 00 48 */	b lbl_8050ACE4
lbl_8050ACA0:
/* 8050ACA0  3B 80 00 01 */	li r28, 1
/* 8050ACA4  3B E0 00 55 */	li r31, 0x55
lbl_8050ACA8:
/* 8050ACA8  7F 83 E3 78 */	mr r3, r28
/* 8050ACAC  38 80 00 06 */	li r4, 6
/* 8050ACB0  4B FF E1 8D */	bl mRF_D2ToD1
/* 8050ACB4  7C 1A 18 AE */	lbzx r0, r26, r3
/* 8050ACB8  28 00 00 3F */	cmplwi r0, 0x3f
/* 8050ACBC  40 82 00 18 */	bne lbl_8050ACD4
/* 8050ACC0  7C 1E D8 00 */	cmpw r30, r27
/* 8050ACC4  40 82 00 0C */	bne lbl_8050ACD0
/* 8050ACC8  7F FA 19 AE */	stbx r31, r26, r3
/* 8050ACCC  63 BD 01 00 */	ori r29, r29, 0x100
lbl_8050ACD0:
/* 8050ACD0  3B 7B 00 01 */	addi r27, r27, 1
lbl_8050ACD4:
/* 8050ACD4  3B 9C 00 01 */	addi r28, r28, 1
/* 8050ACD8  2C 1C 00 06 */	cmpwi r28, 6
/* 8050ACDC  41 80 FF CC */	blt lbl_8050ACA8
/* 8050ACE0  7F A3 EB 78 */	mr r3, r29
lbl_8050ACE4:
/* 8050ACE4  39 61 00 20 */	addi r11, r1, 0x20
/* 8050ACE8  4B B9 02 2D */	bl func_8009AF14
/* 8050ACEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050ACF0  7C 08 03 A6 */	mtlr r0
/* 8050ACF4  38 21 00 20 */	addi r1, r1, 0x20
/* 8050ACF8  4E 80 00 20 */	blr 
