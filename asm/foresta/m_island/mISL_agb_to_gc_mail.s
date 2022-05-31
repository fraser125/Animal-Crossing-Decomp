lbl_803B4B24:
/* 803B4B24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B4B28  7C 08 02 A6 */	mflr r0
/* 803B4B2C  38 A0 00 18 */	li r5, 0x18
/* 803B4B30  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B4B34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B4B38  7C 9F 23 78 */	mr r31, r4
/* 803B4B3C  93 C1 00 08 */	stw r30, 8(r1)
/* 803B4B40  7C 7E 1B 78 */	mr r30, r3
/* 803B4B44  38 7F 00 08 */	addi r3, r31, 8
/* 803B4B48  88 04 00 00 */	lbz r0, 0(r4)
/* 803B4B4C  38 9E 00 05 */	addi r4, r30, 5
/* 803B4B50  98 1E 00 00 */	stb r0, 0(r30)
/* 803B4B54  88 1F 00 01 */	lbz r0, 1(r31)
/* 803B4B58  98 1E 00 01 */	stb r0, 1(r30)
/* 803B4B5C  A0 1F 00 02 */	lhz r0, 2(r31)
/* 803B4B60  B0 1E 00 02 */	sth r0, 2(r30)
/* 803B4B64  88 1F 00 04 */	lbz r0, 4(r31)
/* 803B4B68  98 1E 00 04 */	stb r0, 4(r30)
/* 803B4B6C  4B CA 84 B1 */	bl func_8005D01C
/* 803B4B70  38 7F 00 20 */	addi r3, r31, 0x20
/* 803B4B74  38 9E 00 1D */	addi r4, r30, 0x1d
/* 803B4B78  38 A0 00 C0 */	li r5, 0xc0
/* 803B4B7C  4B CA 84 A1 */	bl func_8005D01C
/* 803B4B80  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 803B4B84  38 9E 00 DD */	addi r4, r30, 0xdd
/* 803B4B88  38 A0 00 20 */	li r5, 0x20
/* 803B4B8C  4B CA 84 91 */	bl func_8005D01C
/* 803B4B90  38 7E 00 FE */	addi r3, r30, 0xfe
/* 803B4B94  38 9F 01 00 */	addi r4, r31, 0x100
/* 803B4B98  4B FF FC B5 */	bl mISL_gc_to_agb_ymd
/* 803B4B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B4BA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B4BA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B4BA8  7C 08 03 A6 */	mtlr r0
/* 803B4BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 803B4BB0  4E 80 00 20 */	blr 
