lbl_803C4A98:
/* 803C4A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4A9C  7C 08 02 A6 */	mflr r0
/* 803C4AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4AA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C4AA8  7C 9F 23 78 */	mr r31, r4
/* 803C4AAC  93 C1 00 08 */	stw r30, 8(r1)
/* 803C4AB0  7C 7E 1B 78 */	mr r30, r3
/* 803C4AB4  80 84 00 00 */	lwz r4, 0(r4)
/* 803C4AB8  4B FF B5 91 */	bl func_803C0048
/* 803C4ABC  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C4AC0  7C 00 1A 14 */	add r0, r0, r3
/* 803C4AC4  38 60 00 00 */	li r3, 0
/* 803C4AC8  90 1F 00 00 */	stw r0, 0(r31)
/* 803C4ACC  80 1E 04 0C */	lwz r0, 0x40c(r30)
/* 803C4AD0  60 00 00 02 */	ori r0, r0, 2
/* 803C4AD4  90 1E 04 0C */	stw r0, 0x40c(r30)
/* 803C4AD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C4ADC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C4AE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4AE4  7C 08 03 A6 */	mtlr r0
/* 803C4AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4AEC  4E 80 00 20 */	blr 
