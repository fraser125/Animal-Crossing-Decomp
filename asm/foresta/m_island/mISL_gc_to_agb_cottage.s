lbl_803B497C:
/* 803B497C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B4980  7C 08 02 A6 */	mflr r0
/* 803B4984  38 A0 00 02 */	li r5, 2
/* 803B4988  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B498C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B4990  7C 9F 23 78 */	mr r31, r4
/* 803B4994  93 C1 00 08 */	stw r30, 8(r1)
/* 803B4998  7C 7E 1B 78 */	mr r30, r3
/* 803B499C  7F E3 FB 78 */	mr r3, r31
/* 803B49A0  7F C4 F3 78 */	mr r4, r30
/* 803B49A4  4B CA 86 79 */	bl func_8005D01C
/* 803B49A8  38 7F 00 02 */	addi r3, r31, 2
/* 803B49AC  38 9E 00 04 */	addi r4, r30, 4
/* 803B49B0  38 A0 00 02 */	li r5, 2
/* 803B49B4  4B CA 86 69 */	bl func_8005D01C
/* 803B49B8  38 7E 00 08 */	addi r3, r30, 8
/* 803B49BC  38 9F 00 08 */	addi r4, r31, 8
/* 803B49C0  4B FF FD C5 */	bl mISL_gc_to_agb_cottage_floor
/* 803B49C4  88 1F 00 04 */	lbz r0, 4(r31)
/* 803B49C8  38 7E 08 BC */	addi r3, r30, 0x8bc
/* 803B49CC  38 9F 08 B0 */	addi r4, r31, 0x8b0
/* 803B49D0  98 1E 08 B8 */	stb r0, 0x8b8(r30)
/* 803B49D4  88 1F 00 05 */	lbz r0, 5(r31)
/* 803B49D8  98 1E 08 B9 */	stb r0, 0x8b9(r30)
/* 803B49DC  4B FF FF 21 */	bl mISL_gc_to_agb_goki
/* 803B49E0  38 7E 08 CC */	addi r3, r30, 0x8cc
/* 803B49E4  38 9F 08 BC */	addi r4, r31, 0x8bc
/* 803B49E8  38 A0 00 02 */	li r5, 2
/* 803B49EC  4B FF F7 0D */	bl mISL_int
/* 803B49F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B49F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B49F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B49FC  7C 08 03 A6 */	mtlr r0
/* 803B4A00  38 21 00 10 */	addi r1, r1, 0x10
/* 803B4A04  4E 80 00 20 */	blr 
