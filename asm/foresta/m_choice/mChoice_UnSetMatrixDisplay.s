lbl_8038509C:
/* 8038509C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803850A0  7C 08 02 A6 */	mflr r0
/* 803850A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803850A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803850AC  7C 9F 23 78 */	mr r31, r4
/* 803850B0  93 C1 00 08 */	stw r30, 8(r1)
/* 803850B4  83 C3 00 00 */	lwz r30, 0(r3)
/* 803850B8  48 08 71 5D */	bl Matrix_pull
/* 803850BC  2C 1F 00 01 */	cmpwi r31, 1
/* 803850C0  40 82 00 2C */	bne lbl_803850EC
/* 803850C4  83 FE 02 F0 */	lwz r31, 0x2f0(r30)
/* 803850C8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 803850CC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 803850D0  7F C3 F3 78 */	mr r3, r30
/* 803850D4  38 9F 00 08 */	addi r4, r31, 8
/* 803850D8  90 9E 02 F0 */	stw r4, 0x2f0(r30)
/* 803850DC  90 1F 00 00 */	stw r0, 0(r31)
/* 803850E0  48 08 82 F5 */	bl _Matrix_to_Mtx_new
/* 803850E4  90 7F 00 04 */	stw r3, 4(r31)
/* 803850E8  48 00 00 28 */	b lbl_80385110
lbl_803850EC:
/* 803850EC  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 803850F0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 803850F4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 803850F8  7F C3 F3 78 */	mr r3, r30
/* 803850FC  38 9F 00 08 */	addi r4, r31, 8
/* 80385100  90 9E 02 D0 */	stw r4, 0x2d0(r30)
/* 80385104  90 1F 00 00 */	stw r0, 0(r31)
/* 80385108  48 08 82 CD */	bl _Matrix_to_Mtx_new
/* 8038510C  90 7F 00 04 */	stw r3, 4(r31)
lbl_80385110:
/* 80385110  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80385114  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80385118  83 C1 00 08 */	lwz r30, 8(r1)
/* 8038511C  7C 08 03 A6 */	mtlr r0
/* 80385120  38 21 00 10 */	addi r1, r1, 0x10
/* 80385124  4E 80 00 20 */	blr 
