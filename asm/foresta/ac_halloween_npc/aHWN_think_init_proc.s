lbl_805280F4:
/* 805280F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805280F8  7C 08 02 A6 */	mflr r0
/* 805280FC  38 A0 00 00 */	li r5, 0
/* 80528100  90 01 00 14 */	stw r0, 0x14(r1)
/* 80528104  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80528108  7C 7F 1B 78 */	mr r31, r3
/* 8052810C  48 00 00 A1 */	bl aHWN_setup_think_proc
/* 80528110  38 00 00 00 */	li r0, 0
/* 80528114  38 60 00 0C */	li r3, 0xc
/* 80528118  98 1F 08 31 */	stb r0, 0x831(r31)
/* 8052811C  38 00 00 02 */	li r0, 2
/* 80528120  90 7F 07 D8 */	stw r3, 0x7d8(r31)
/* 80528124  90 1F 08 40 */	stw r0, 0x840(r31)
/* 80528128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052812C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80528130  7C 08 03 A6 */	mtlr r0
/* 80528134  38 21 00 10 */	addi r1, r1, 0x10
/* 80528138  4E 80 00 20 */	blr 
