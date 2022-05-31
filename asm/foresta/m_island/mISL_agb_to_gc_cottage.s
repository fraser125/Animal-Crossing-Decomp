lbl_803B4A08:
/* 803B4A08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B4A0C  7C 08 02 A6 */	mflr r0
/* 803B4A10  38 A0 00 02 */	li r5, 2
/* 803B4A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B4A18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B4A1C  7C 9F 23 78 */	mr r31, r4
/* 803B4A20  93 C1 00 08 */	stw r30, 8(r1)
/* 803B4A24  7C 7E 1B 78 */	mr r30, r3
/* 803B4A28  7F E3 FB 78 */	mr r3, r31
/* 803B4A2C  7F C4 F3 78 */	mr r4, r30
/* 803B4A30  4B CA 85 ED */	bl func_8005D01C
/* 803B4A34  38 7F 00 04 */	addi r3, r31, 4
/* 803B4A38  38 9E 00 02 */	addi r4, r30, 2
/* 803B4A3C  38 A0 00 02 */	li r5, 2
/* 803B4A40  4B CA 85 DD */	bl func_8005D01C
/* 803B4A44  88 1F 08 B8 */	lbz r0, 0x8b8(r31)
/* 803B4A48  38 7E 00 08 */	addi r3, r30, 8
/* 803B4A4C  38 9F 00 08 */	addi r4, r31, 8
/* 803B4A50  98 1E 00 04 */	stb r0, 4(r30)
/* 803B4A54  88 1F 08 B9 */	lbz r0, 0x8b9(r31)
/* 803B4A58  98 1E 00 05 */	stb r0, 5(r30)
/* 803B4A5C  4B FF FD 8D */	bl mISL_agb_to_gc_cottage_floor
/* 803B4A60  38 7E 08 B0 */	addi r3, r30, 0x8b0
/* 803B4A64  38 9F 08 BC */	addi r4, r31, 0x8bc
/* 803B4A68  4B FF FE D5 */	bl mISL_agb_to_gc_goki
/* 803B4A6C  38 7E 08 BC */	addi r3, r30, 0x8bc
/* 803B4A70  38 9F 08 CC */	addi r4, r31, 0x8cc
/* 803B4A74  38 A0 00 02 */	li r5, 2
/* 803B4A78  4B FF F6 81 */	bl mISL_int
/* 803B4A7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B4A80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B4A84  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B4A88  7C 08 03 A6 */	mtlr r0
/* 803B4A8C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B4A90  4E 80 00 20 */	blr 
