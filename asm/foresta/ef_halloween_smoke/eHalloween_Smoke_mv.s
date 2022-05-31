lbl_8060D690:
/* 8060D690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060D694  7C 08 02 A6 */	mflr r0
/* 8060D698  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060D69C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060D6A0  7C 7F 1B 78 */	mr r31, r3
/* 8060D6A4  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8060D6A8  7C 65 1B 78 */	mr r5, r3
/* 8060D6AC  38 9F 00 28 */	addi r4, r31, 0x28
/* 8060D6B0  4B DA D8 95 */	bl xyz_t_add
/* 8060D6B4  38 7F 00 10 */	addi r3, r31, 0x10
/* 8060D6B8  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8060D6BC  7C 65 1B 78 */	mr r5, r3
/* 8060D6C0  4B DA D8 85 */	bl xyz_t_add
/* 8060D6C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060D6C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060D6CC  7C 08 03 A6 */	mtlr r0
/* 8060D6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8060D6D4  4E 80 00 20 */	blr 
