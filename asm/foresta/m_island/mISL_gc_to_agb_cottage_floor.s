lbl_803B4784:
/* 803B4784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B4788  7C 08 02 A6 */	mflr r0
/* 803B478C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B4790  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B4794  7C 9F 23 78 */	mr r31, r4
/* 803B4798  93 C1 00 08 */	stw r30, 8(r1)
/* 803B479C  7C 7E 1B 78 */	mr r30, r3
/* 803B47A0  4B FF FE 99 */	bl mISL_gc_to_agb_layer
/* 803B47A4  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 803B47A8  38 9E 08 A0 */	addi r4, r30, 0x8a0
/* 803B47AC  38 A0 00 02 */	li r5, 2
/* 803B47B0  4B CA 88 6D */	bl func_8005D01C
/* 803B47B4  38 7F 08 A2 */	addi r3, r31, 0x8a2
/* 803B47B8  38 9E 08 A4 */	addi r4, r30, 0x8a4
/* 803B47BC  38 A0 00 02 */	li r5, 2
/* 803B47C0  4B CA 88 5D */	bl func_8005D01C
/* 803B47C4  38 7E 08 A8 */	addi r3, r30, 0x8a8
/* 803B47C8  38 9F 08 A4 */	addi r4, r31, 0x8a4
/* 803B47CC  4B FF FE E5 */	bl mISL_gc_to_agb_fllot_bit
/* 803B47D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B47D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B47D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B47DC  7C 08 03 A6 */	mtlr r0
/* 803B47E0  38 21 00 10 */	addi r1, r1, 0x10
/* 803B47E4  4E 80 00 20 */	blr 
