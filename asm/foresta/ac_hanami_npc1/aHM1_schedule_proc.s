lbl_8052A940:
/* 8052A940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052A944  7C 08 02 A6 */	mflr r0
/* 8052A948  3C C0 80 6A */	lis r6, sche_proc@ha /* 0x806A12A4@ha */
/* 8052A94C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052A950  54 A0 10 3A */	slwi r0, r5, 2
/* 8052A954  38 A6 12 A4 */	addi r5, r6, sche_proc@l /* 0x806A12A4@l */
/* 8052A958  7D 85 00 2E */	lwzx r12, r5, r0
/* 8052A95C  7D 89 03 A6 */	mtctr r12
/* 8052A960  4E 80 04 21 */	bctrl 
/* 8052A964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052A968  7C 08 03 A6 */	mtlr r0
/* 8052A96C  38 21 00 10 */	addi r1, r1, 0x10
/* 8052A970  4E 80 00 20 */	blr 
