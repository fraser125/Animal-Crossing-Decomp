lbl_80627CAC:
/* 80627CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80627CB0  7C 08 02 A6 */	mflr r0
/* 80627CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80627CB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80627CBC  7C 7F 1B 78 */	mr r31, r3
/* 80627CC0  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80627CC4  7C 65 1B 78 */	mr r5, r3
/* 80627CC8  38 9F 00 28 */	addi r4, r31, 0x28
/* 80627CCC  4B D9 32 79 */	bl xyz_t_add
/* 80627CD0  38 7F 00 10 */	addi r3, r31, 0x10
/* 80627CD4  38 9F 00 1C */	addi r4, r31, 0x1c
/* 80627CD8  7C 65 1B 78 */	mr r5, r3
/* 80627CDC  4B D9 32 69 */	bl xyz_t_add
/* 80627CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80627CE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80627CE8  7C 08 03 A6 */	mtlr r0
/* 80627CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80627CF0  4E 80 00 20 */	blr 
