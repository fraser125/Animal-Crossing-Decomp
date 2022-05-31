lbl_803B47E8:
/* 803B47E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B47EC  7C 08 02 A6 */	mflr r0
/* 803B47F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B47F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B47F8  7C 9F 23 78 */	mr r31, r4
/* 803B47FC  93 C1 00 08 */	stw r30, 8(r1)
/* 803B4800  7C 7E 1B 78 */	mr r30, r3
/* 803B4804  4B FF FE 35 */	bl mISL_gc_to_agb_layer
/* 803B4808  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 803B480C  38 9E 08 A0 */	addi r4, r30, 0x8a0
/* 803B4810  38 A0 00 02 */	li r5, 2
/* 803B4814  4B CA 88 09 */	bl func_8005D01C
/* 803B4818  38 7F 08 A4 */	addi r3, r31, 0x8a4
/* 803B481C  38 9E 08 A2 */	addi r4, r30, 0x8a2
/* 803B4820  38 A0 00 02 */	li r5, 2
/* 803B4824  4B CA 87 F9 */	bl func_8005D01C
/* 803B4828  38 7E 08 A4 */	addi r3, r30, 0x8a4
/* 803B482C  38 9F 08 A8 */	addi r4, r31, 0x8a8
/* 803B4830  4B FF FE ED */	bl mISL_agb_to_gc_fllot_bit
/* 803B4834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B4838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B483C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B4840  7C 08 03 A6 */	mtlr r0
/* 803B4844  38 21 00 10 */	addi r1, r1, 0x10
/* 803B4848  4E 80 00 20 */	blr 
