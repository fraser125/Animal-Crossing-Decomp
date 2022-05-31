lbl_8052B6E8:
/* 8052B6E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052B6EC  7C 08 02 A6 */	mflr r0
/* 8052B6F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052B6F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052B6F8  7C 9F 23 78 */	mr r31, r4
/* 8052B6FC  38 80 00 07 */	li r4, 7
/* 8052B700  93 C1 00 08 */	stw r30, 8(r1)
/* 8052B704  7C 7E 1B 78 */	mr r30, r3
/* 8052B708  38 60 00 01 */	li r3, 1
/* 8052B70C  4B E7 26 C1 */	bl mEv_get_save_area
/* 8052B710  A0 DE 00 06 */	lhz r6, 6(r30)
/* 8052B714  7F E4 FB 78 */	mr r4, r31
/* 8052B718  38 A0 00 02 */	li r5, 2
/* 8052B71C  3C C6 FF FF */	addis r6, r6, 0xffff
/* 8052B720  38 06 2F A8 */	addi r0, r6, 0x2fa8
/* 8052B724  98 03 00 0C */	stb r0, 0xc(r3)
/* 8052B728  7F C3 F3 78 */	mr r3, r30
/* 8052B72C  48 00 03 1D */	bl aHN0_setup_think_proc
/* 8052B730  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052B734  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052B738  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052B73C  7C 08 03 A6 */	mtlr r0
/* 8052B740  38 21 00 10 */	addi r1, r1, 0x10
/* 8052B744  4E 80 00 20 */	blr 
