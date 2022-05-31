lbl_803B4A94:
/* 803B4A94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B4A98  7C 08 02 A6 */	mflr r0
/* 803B4A9C  38 A0 00 18 */	li r5, 0x18
/* 803B4AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B4AA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B4AA8  7C 9F 23 78 */	mr r31, r4
/* 803B4AAC  93 C1 00 08 */	stw r30, 8(r1)
/* 803B4AB0  7C 7E 1B 78 */	mr r30, r3
/* 803B4AB4  38 7F 00 05 */	addi r3, r31, 5
/* 803B4AB8  88 04 00 00 */	lbz r0, 0(r4)
/* 803B4ABC  38 9E 00 08 */	addi r4, r30, 8
/* 803B4AC0  98 1E 00 00 */	stb r0, 0(r30)
/* 803B4AC4  88 1F 00 01 */	lbz r0, 1(r31)
/* 803B4AC8  98 1E 00 01 */	stb r0, 1(r30)
/* 803B4ACC  A0 1F 00 02 */	lhz r0, 2(r31)
/* 803B4AD0  B0 1E 00 02 */	sth r0, 2(r30)
/* 803B4AD4  88 1F 00 04 */	lbz r0, 4(r31)
/* 803B4AD8  98 1E 00 04 */	stb r0, 4(r30)
/* 803B4ADC  4B CA 85 41 */	bl func_8005D01C
/* 803B4AE0  38 7F 00 1D */	addi r3, r31, 0x1d
/* 803B4AE4  38 9E 00 20 */	addi r4, r30, 0x20
/* 803B4AE8  38 A0 00 C0 */	li r5, 0xc0
/* 803B4AEC  4B CA 85 31 */	bl func_8005D01C
/* 803B4AF0  38 7F 00 DD */	addi r3, r31, 0xdd
/* 803B4AF4  38 9E 00 E0 */	addi r4, r30, 0xe0
/* 803B4AF8  38 A0 00 20 */	li r5, 0x20
/* 803B4AFC  4B CA 85 21 */	bl func_8005D01C
/* 803B4B00  38 7E 01 00 */	addi r3, r30, 0x100
/* 803B4B04  38 9F 00 FE */	addi r4, r31, 0xfe
/* 803B4B08  4B FF FD 45 */	bl mISL_gc_to_agb_ymd
/* 803B4B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B4B10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B4B14  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B4B18  7C 08 03 A6 */	mtlr r0
/* 803B4B1C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B4B20  4E 80 00 20 */	blr 
