lbl_805B5468:
/* 805B5468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B546C  7C 08 02 A6 */	mflr r0
/* 805B5470  3C 80 80 65 */	lis r4, lit_457@ha /* 0x8064A970@ha */
/* 805B5474  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B5478  C0 24 A9 70 */	lfs f1, lit_457@l(r4)  /* 0x8064A970@l */
/* 805B547C  80 03 02 B4 */	lwz r0, 0x2b4(r3)
/* 805B5480  3C 60 80 6C */	lis r3, direct@ha /* 0x806C5EBC@ha */
/* 805B5484  38 63 5E BC */	addi r3, r3, direct@l /* 0x806C5EBC@l */
/* 805B5488  54 00 17 7A */	rlwinm r0, r0, 2, 0x1d, 0x1d
/* 805B548C  7C 63 00 2E */	lwzx r3, r3, r0
/* 805B5490  4B DE 3E 61 */	bl mDemo_Set_house_info
/* 805B5494  38 60 00 07 */	li r3, 7
/* 805B5498  4B DE 34 89 */	bl mDemo_Set_camera
/* 805B549C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B54A0  7C 08 03 A6 */	mtlr r0
/* 805B54A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805B54A8  4E 80 00 20 */	blr 
