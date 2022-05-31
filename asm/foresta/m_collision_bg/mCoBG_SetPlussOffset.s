lbl_80391A9C:
/* 80391A9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80391AA0  7C 08 02 A6 */	mflr r0
/* 80391AA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80391AA8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80391AAC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80391AB0  7C BE 2B 78 */	mr r30, r5
/* 80391AB4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80391AB8  80 E3 00 00 */	lwz r7, 0(r3)
/* 80391ABC  80 C3 00 04 */	lwz r6, 4(r3)
/* 80391AC0  80 03 00 08 */	lwz r0, 8(r3)
/* 80391AC4  38 61 00 10 */	addi r3, r1, 0x10
/* 80391AC8  B0 81 00 08 */	sth r4, 8(r1)
/* 80391ACC  38 81 00 0C */	addi r4, r1, 0xc
/* 80391AD0  90 E1 00 14 */	stw r7, 0x14(r1)
/* 80391AD4  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80391AD8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80391ADC  48 01 38 8D */	bl mFI_Wpos2UtNum
/* 80391AE0  2C 03 00 00 */	cmpwi r3, 0
/* 80391AE4  41 82 01 44 */	beq lbl_80391C28
/* 80391AE8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80391AEC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80391AF0  48 01 4B 01 */	bl mFI_UtNum2UtCol
/* 80391AF4  7C 60 1B 78 */	mr r0, r3
/* 80391AF8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80391AFC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80391B00  7C 1F 03 78 */	mr r31, r0
/* 80391B04  48 01 4C 6D */	bl mFI_UtNum2UtKeepH
/* 80391B08  88 1F 00 00 */	lbz r0, 0(r31)
/* 80391B0C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80391B10  54 04 F6 FE */	rlwinm r4, r0, 0x1e, 0x1b, 0x1f
/* 80391B14  7C 03 20 40 */	cmplw r3, r4
/* 80391B18  40 82 00 14 */	bne lbl_80391B2C
/* 80391B1C  7F E4 FB 78 */	mr r4, r31
/* 80391B20  38 61 00 08 */	addi r3, r1, 8
/* 80391B24  4B FF FE BD */	bl mCoBG_TidyChangeOffset
/* 80391B28  48 00 00 6C */	b lbl_80391B94
lbl_80391B2C:
/* 80391B2C  50 60 16 7A */	rlwimi r0, r3, 2, 0x19, 0x1d
/* 80391B30  7C C4 18 50 */	subf r6, r4, r3
/* 80391B34  98 1F 00 00 */	stb r0, 0(r31)
/* 80391B38  7F E4 FB 78 */	mr r4, r31
/* 80391B3C  38 61 00 08 */	addi r3, r1, 8
/* 80391B40  A0 BF 00 00 */	lhz r5, 0(r31)
/* 80391B44  54 A0 DE FE */	rlwinm r0, r5, 0x1b, 0x1b, 0x1f
/* 80391B48  7C 00 32 14 */	add r0, r0, r6
/* 80391B4C  50 05 2D B4 */	rlwimi r5, r0, 5, 0x16, 0x1a
/* 80391B50  B0 BF 00 00 */	sth r5, 0(r31)
/* 80391B54  88 BF 00 01 */	lbz r5, 1(r31)
/* 80391B58  54 A0 06 FE */	clrlwi r0, r5, 0x1b
/* 80391B5C  7C 00 32 14 */	add r0, r0, r6
/* 80391B60  50 05 06 FE */	rlwimi r5, r0, 0, 0x1b, 0x1f
/* 80391B64  98 BF 00 01 */	stb r5, 1(r31)
/* 80391B68  88 BF 00 02 */	lbz r5, 2(r31)
/* 80391B6C  54 A0 EE FE */	rlwinm r0, r5, 0x1d, 0x1b, 0x1f
/* 80391B70  7C 00 32 14 */	add r0, r0, r6
/* 80391B74  50 05 1E 38 */	rlwimi r5, r0, 3, 0x18, 0x1c
/* 80391B78  98 BF 00 02 */	stb r5, 2(r31)
/* 80391B7C  A0 BF 00 02 */	lhz r5, 2(r31)
/* 80391B80  54 A0 D6 FE */	rlwinm r0, r5, 0x1a, 0x1b, 0x1f
/* 80391B84  7C 00 32 14 */	add r0, r0, r6
/* 80391B88  50 05 35 72 */	rlwimi r5, r0, 6, 0x15, 0x19
/* 80391B8C  B0 BF 00 02 */	sth r5, 2(r31)
/* 80391B90  4B FF FE 51 */	bl mCoBG_TidyChangeOffset
lbl_80391B94:
/* 80391B94  88 BF 00 00 */	lbz r5, 0(r31)
/* 80391B98  7F C0 07 34 */	extsh r0, r30
/* 80391B9C  A8 61 00 08 */	lha r3, 8(r1)
/* 80391BA0  2C 00 00 64 */	cmpwi r0, 0x64
/* 80391BA4  54 A4 F6 FE */	rlwinm r4, r5, 0x1e, 0x1b, 0x1f
/* 80391BA8  7C 64 1A 14 */	add r3, r4, r3
/* 80391BAC  50 65 16 7A */	rlwimi r5, r3, 2, 0x19, 0x1d
/* 80391BB0  98 BF 00 00 */	stb r5, 0(r31)
/* 80391BB4  88 BF 00 01 */	lbz r5, 1(r31)
/* 80391BB8  A8 61 00 08 */	lha r3, 8(r1)
/* 80391BBC  54 A4 06 FE */	clrlwi r4, r5, 0x1b
/* 80391BC0  7C 64 1A 14 */	add r3, r4, r3
/* 80391BC4  50 65 06 FE */	rlwimi r5, r3, 0, 0x1b, 0x1f
/* 80391BC8  98 BF 00 01 */	stb r5, 1(r31)
/* 80391BCC  A0 BF 00 00 */	lhz r5, 0(r31)
/* 80391BD0  A8 61 00 08 */	lha r3, 8(r1)
/* 80391BD4  54 A4 DE FE */	rlwinm r4, r5, 0x1b, 0x1b, 0x1f
/* 80391BD8  7C 64 1A 14 */	add r3, r4, r3
/* 80391BDC  50 65 2D B4 */	rlwimi r5, r3, 5, 0x16, 0x1a
/* 80391BE0  B0 BF 00 00 */	sth r5, 0(r31)
/* 80391BE4  A0 BF 00 02 */	lhz r5, 2(r31)
/* 80391BE8  A8 61 00 08 */	lha r3, 8(r1)
/* 80391BEC  54 A4 D6 FE */	rlwinm r4, r5, 0x1a, 0x1b, 0x1f
/* 80391BF0  7C 64 1A 14 */	add r3, r4, r3
/* 80391BF4  50 65 35 72 */	rlwimi r5, r3, 6, 0x15, 0x19
/* 80391BF8  B0 BF 00 02 */	sth r5, 2(r31)
/* 80391BFC  88 BF 00 02 */	lbz r5, 2(r31)
/* 80391C00  A8 61 00 08 */	lha r3, 8(r1)
/* 80391C04  54 A4 EE FE */	rlwinm r4, r5, 0x1d, 0x1b, 0x1f
/* 80391C08  7C 64 1A 14 */	add r3, r4, r3
/* 80391C0C  50 65 1E 38 */	rlwimi r5, r3, 3, 0x18, 0x1c
/* 80391C10  98 BF 00 02 */	stb r5, 2(r31)
/* 80391C14  41 82 00 14 */	beq lbl_80391C28
/* 80391C18  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80391C1C  88 1F 00 03 */	lbz r0, 3(r31)
/* 80391C20  50 60 06 BE */	rlwimi r0, r3, 0, 0x1a, 0x1f
/* 80391C24  98 1F 00 03 */	stb r0, 3(r31)
lbl_80391C28:
/* 80391C28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80391C2C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80391C30  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80391C34  7C 08 03 A6 */	mtlr r0
/* 80391C38  38 21 00 30 */	addi r1, r1, 0x30
/* 80391C3C  4E 80 00 20 */	blr 
