lbl_803E5A80:
/* 803E5A80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E5A84  7C 08 02 A6 */	mflr r0
/* 803E5A88  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E5A8C  39 61 00 20 */	addi r11, r1, 0x20
/* 803E5A90  4B CB 54 45 */	bl func_8009AED4
/* 803E5A94  54 E7 08 3C */	slwi r7, r7, 1
/* 803E5A98  54 C6 08 3C */	slwi r6, r6, 1
/* 803E5A9C  7C FD 07 34 */	extsh r29, r7
/* 803E5AA0  54 A0 08 3C */	slwi r0, r5, 1
/* 803E5AA4  7C DF 07 34 */	extsh r31, r6
/* 803E5AA8  54 84 08 3C */	slwi r4, r4, 1
/* 803E5AAC  7C BD 00 D0 */	neg r5, r29
/* 803E5AB0  7C 0C 07 34 */	extsh r12, r0
/* 803E5AB4  7C A6 E8 78 */	andc r6, r5, r29
/* 803E5AB8  7D 7F 00 D0 */	neg r11, r31
/* 803E5ABC  7C DE FE 70 */	srawi r30, r6, 0x1f
/* 803E5AC0  7C AC 00 D0 */	neg r5, r12
/* 803E5AC4  7D 6B F8 78 */	andc r11, r11, r31
/* 803E5AC8  7C 87 07 34 */	extsh r7, r4
/* 803E5ACC  7C A6 60 78 */	andc r6, r5, r12
/* 803E5AD0  7F BD F0 38 */	and r29, r29, r30
/* 803E5AD4  7D 6B FE 70 */	srawi r11, r11, 0x1f
/* 803E5AD8  7C A7 00 D0 */	neg r5, r7
/* 803E5ADC  7F FE 58 38 */	and r30, r31, r11
/* 803E5AE0  7C C6 FE 70 */	srawi r6, r6, 0x1f
/* 803E5AE4  7C A5 38 78 */	andc r5, r5, r7
/* 803E5AE8  57 AB 05 3E */	clrlwi r11, r29, 0x14
/* 803E5AEC  7C A5 FE 70 */	srawi r5, r5, 0x1f
/* 803E5AF0  7D 9D 30 38 */	and r29, r12, r6
/* 803E5AF4  57 DF 62 26 */	rlwinm r31, r30, 0xc, 8, 0x13
/* 803E5AF8  7C 00 07 35 */	extsh. r0, r0
/* 803E5AFC  7C E7 28 38 */	and r7, r7, r5
/* 803E5B00  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 803E5B04  67 E5 E4 00 */	oris r5, r31, 0xe400
/* 803E5B08  38 C3 00 08 */	addi r6, r3, 8
/* 803E5B0C  7C A5 5B 78 */	or r5, r5, r11
/* 803E5B10  54 EB 62 26 */	rlwinm r11, r7, 0xc, 8, 0x13
/* 803E5B14  90 A3 00 00 */	stw r5, 0(r3)
/* 803E5B18  51 0B C1 4E */	rlwimi r11, r8, 0x18, 5, 7
/* 803E5B1C  53 AB 05 3E */	rlwimi r11, r29, 0, 0x14, 0x1f
/* 803E5B20  3C E0 E1 00 */	lis r7, 0xe100
/* 803E5B24  91 63 00 04 */	stw r11, 4(r3)
/* 803E5B28  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 803E5B2C  90 E3 00 08 */	stw r7, 8(r3)
/* 803E5B30  40 80 00 48 */	bge lbl_803E5B78
/* 803E5B34  7C 07 0E 70 */	srawi r7, r0, 1
/* 803E5B38  7C E3 07 35 */	extsh. r3, r7
/* 803E5B3C  40 80 00 24 */	bge lbl_803E5B60
/* 803E5B40  7C E3 07 34 */	extsh r3, r7
/* 803E5B44  7C 63 61 D6 */	mullw r3, r3, r12
/* 803E5B48  7C 67 3E 70 */	srawi r7, r3, 7
/* 803E5B4C  7C 67 00 D0 */	neg r3, r7
/* 803E5B50  7C 63 38 78 */	andc r3, r3, r7
/* 803E5B54  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 803E5B58  7C E8 18 38 */	and r8, r7, r3
/* 803E5B5C  48 00 00 20 */	b lbl_803E5B7C
lbl_803E5B60:
/* 803E5B60  7C E3 07 34 */	extsh r3, r7
/* 803E5B64  7C 63 61 D6 */	mullw r3, r3, r12
/* 803E5B68  7C 67 3E 70 */	srawi r7, r3, 7
/* 803E5B6C  7C E3 FE 70 */	srawi r3, r7, 0x1f
/* 803E5B70  7C E8 18 38 */	and r8, r7, r3
/* 803E5B74  48 00 00 08 */	b lbl_803E5B7C
lbl_803E5B78:
/* 803E5B78  39 00 00 00 */	li r8, 0
lbl_803E5B7C:
/* 803E5B7C  7C 83 07 35 */	extsh. r3, r4
/* 803E5B80  40 80 00 50 */	bge lbl_803E5BD0
/* 803E5B84  7C A7 0E 70 */	srawi r7, r5, 1
/* 803E5B88  7C E3 07 35 */	extsh. r3, r7
/* 803E5B8C  40 80 00 28 */	bge lbl_803E5BB4
/* 803E5B90  7C 84 07 34 */	extsh r4, r4
/* 803E5B94  7C E3 07 34 */	extsh r3, r7
/* 803E5B98  7C 63 21 D6 */	mullw r3, r3, r4
/* 803E5B9C  7C 64 3E 70 */	srawi r4, r3, 7
/* 803E5BA0  7C 64 00 D0 */	neg r3, r4
/* 803E5BA4  7C 63 20 78 */	andc r3, r3, r4
/* 803E5BA8  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 803E5BAC  7C 83 18 38 */	and r3, r4, r3
/* 803E5BB0  48 00 00 24 */	b lbl_803E5BD4
lbl_803E5BB4:
/* 803E5BB4  7C 84 07 34 */	extsh r4, r4
/* 803E5BB8  7C E3 07 34 */	extsh r3, r7
/* 803E5BBC  7C 63 21 D6 */	mullw r3, r3, r4
/* 803E5BC0  7C 64 3E 70 */	srawi r4, r3, 7
/* 803E5BC4  7C 83 FE 70 */	srawi r3, r4, 0x1f
/* 803E5BC8  7C 83 18 38 */	and r3, r4, r3
/* 803E5BCC  48 00 00 08 */	b lbl_803E5BD4
lbl_803E5BD0:
/* 803E5BD0  38 60 00 00 */	li r3, 0
lbl_803E5BD4:
/* 803E5BD4  7C E3 48 50 */	subf r7, r3, r9
/* 803E5BD8  7C 88 50 50 */	subf r4, r8, r10
/* 803E5BDC  50 E4 80 1E */	rlwimi r4, r7, 0x10, 0, 0xf
/* 803E5BE0  7C A3 0E 70 */	srawi r3, r5, 1
/* 803E5BE4  90 86 00 04 */	stw r4, 4(r6)
/* 803E5BE8  3C 80 F1 00 */	lis r4, 0xf100
/* 803E5BEC  7C 00 0E 70 */	srawi r0, r0, 1
/* 803E5BF0  39 61 00 20 */	addi r11, r1, 0x20
/* 803E5BF4  90 86 00 08 */	stw r4, 8(r6)
/* 803E5BF8  50 60 80 1E */	rlwimi r0, r3, 0x10, 0, 0xf
/* 803E5BFC  90 06 00 0C */	stw r0, 0xc(r6)
/* 803E5C00  38 C6 00 10 */	addi r6, r6, 0x10
/* 803E5C04  7C C3 33 78 */	mr r3, r6
/* 803E5C08  4B CB 53 19 */	bl func_8009AF20
/* 803E5C0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E5C10  7C 08 03 A6 */	mtlr r0
/* 803E5C14  38 21 00 20 */	addi r1, r1, 0x20
/* 803E5C18  4E 80 00 20 */	blr 
