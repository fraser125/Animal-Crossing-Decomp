lbl_803B5164:
/* 803B5164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B5168  7C 08 02 A6 */	mflr r0
/* 803B516C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B5170  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B5174  7C 9F 23 78 */	mr r31, r4
/* 803B5178  93 C1 00 08 */	stw r30, 8(r1)
/* 803B517C  7C 7E 1B 78 */	mr r30, r3
/* 803B5180  4B FF FE 89 */	bl mISL_agb_to_gc_qclass
/* 803B5184  38 7E 00 0C */	addi r3, r30, 0xc
/* 803B5188  38 9F 00 0C */	addi r4, r31, 0xc
/* 803B518C  38 A0 00 01 */	li r5, 1
/* 803B5190  4B FF EF 8D */	bl mISL_short
/* 803B5194  38 7F 00 10 */	addi r3, r31, 0x10
/* 803B5198  38 9E 00 0E */	addi r4, r30, 0xe
/* 803B519C  4B FF FA F1 */	bl mISL_gc_to_agb_personal
/* 803B51A0  88 1F 00 24 */	lbz r0, 0x24(r31)
/* 803B51A4  38 7E 00 24 */	addi r3, r30, 0x24
/* 803B51A8  38 9F 00 28 */	addi r4, r31, 0x28
/* 803B51AC  98 1E 00 22 */	stb r0, 0x22(r30)
/* 803B51B0  4B FF FF 29 */	bl mISL_agb_to_gc_qdata
/* 803B51B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B51B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B51BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B51C0  7C 08 03 A6 */	mtlr r0
/* 803B51C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803B51C8  4E 80 00 20 */	blr 
