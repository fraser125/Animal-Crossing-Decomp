lbl_8056C100:
/* 8056C100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056C104  7C 08 02 A6 */	mflr r0
/* 8056C108  3C A0 80 6C */	lis r5, process@ha /* 0x806BE918@ha */
/* 8056C10C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056C110  54 80 10 3A */	slwi r0, r4, 2
/* 8056C114  38 A5 E9 18 */	addi r5, r5, process@l /* 0x806BE918@l */
/* 8056C118  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056C11C  7C 9F 23 78 */	mr r31, r4
/* 8056C120  93 C1 00 08 */	stw r30, 8(r1)
/* 8056C124  7C 7E 1B 78 */	mr r30, r3
/* 8056C128  93 E3 09 94 */	stw r31, 0x994(r3)
/* 8056C12C  7C 05 00 2E */	lwzx r0, r5, r0
/* 8056C130  90 03 09 98 */	stw r0, 0x998(r3)
/* 8056C134  4B FF FF 99 */	bl aPOL2_init_proc
/* 8056C138  7F C3 F3 78 */	mr r3, r30
/* 8056C13C  7F E4 FB 78 */	mr r4, r31
/* 8056C140  4B FF F0 31 */	bl aPOL2_set_animation
/* 8056C144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056C148  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056C14C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056C150  7C 08 03 A6 */	mtlr r0
/* 8056C154  38 21 00 10 */	addi r1, r1, 0x10
/* 8056C158  4E 80 00 20 */	blr 
