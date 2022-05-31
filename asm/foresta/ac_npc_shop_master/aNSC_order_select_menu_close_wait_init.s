lbl_8057BECC:
/* 8057BECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BED0  7C 08 02 A6 */	mflr r0
/* 8057BED4  38 A0 00 00 */	li r5, 0
/* 8057BED8  38 C0 00 00 */	li r6, 0
/* 8057BEDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BEE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057BEE4  7C 7F 1B 78 */	mr r31, r3
/* 8057BEE8  38 64 1D EC */	addi r3, r4, 0x1dec
/* 8057BEEC  38 80 00 14 */	li r4, 0x14
/* 8057BEF0  4B E7 37 ED */	bl mSM_open_submenu
/* 8057BEF4  38 00 00 1C */	li r0, 0x1c
/* 8057BEF8  90 1F 09 98 */	stw r0, 0x998(r31)
/* 8057BEFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BF00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057BF04  7C 08 03 A6 */	mtlr r0
/* 8057BF08  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BF0C  4E 80 00 20 */	blr 
