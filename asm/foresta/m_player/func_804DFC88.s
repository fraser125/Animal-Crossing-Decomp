lbl_804DFC88:
/* 804DFC88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DFC8C  7C 08 02 A6 */	mflr r0
/* 804DFC90  7C 6C 1B 78 */	mr r12, r3
/* 804DFC94  38 A0 00 01 */	li r5, 1
/* 804DFC98  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DFC9C  39 60 FF FF */	li r11, -1
/* 804DFCA0  38 00 00 00 */	li r0, 0
/* 804DFCA4  38 64 1D A8 */	addi r3, r4, 0x1da8
/* 804DFCA8  98 A4 1F 51 */	stb r5, 0x1f51(r4)
/* 804DFCAC  38 C0 00 00 */	li r6, 0
/* 804DFCB0  38 E0 00 00 */	li r7, 0
/* 804DFCB4  39 00 00 00 */	li r8, 0
/* 804DFCB8  98 AC 00 B4 */	stb r5, 0xb4(r12)
/* 804DFCBC  38 A0 00 04 */	li r5, 4
/* 804DFCC0  39 20 FF FF */	li r9, -1
/* 804DFCC4  39 40 FF FF */	li r10, -1
/* 804DFCC8  91 61 00 08 */	stw r11, 8(r1)
/* 804DFCCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DFCD0  91 61 00 10 */	stw r11, 0x10(r1)
/* 804DFCD4  91 61 00 14 */	stw r11, 0x14(r1)
/* 804DFCD8  91 61 00 18 */	stw r11, 0x18(r1)
/* 804DFCDC  C0 2C 00 28 */	lfs f1, 0x28(r12)
/* 804DFCE0  C0 4C 00 2C */	lfs f2, 0x2c(r12)
/* 804DFCE4  C0 6C 00 30 */	lfs f3, 0x30(r12)
/* 804DFCE8  4B E9 5A 61 */	bl Actor_info_make_actor
/* 804DFCEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DFCF0  7C 08 03 A6 */	mtlr r0
/* 804DFCF4  38 21 00 20 */	addi r1, r1, 0x20
/* 804DFCF8  4E 80 00 20 */	blr 
