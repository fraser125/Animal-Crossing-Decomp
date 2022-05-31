lbl_803D744C:
/* 803D744C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D7450  7C 08 02 A6 */	mflr r0
/* 803D7454  3C 80 80 66 */	lis r4, print_proc@ha /* 0x8065B52C@ha */
/* 803D7458  3C A0 81 17 */	lis r5, l_mnpc_display@ha /* 0x8116ED64@ha */
/* 803D745C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D7460  38 84 B5 2C */	addi r4, r4, print_proc@l /* 0x8065B52C@l */
/* 803D7464  80 05 ED 64 */	lwz r0, l_mnpc_display@l(r5)  /* 0x8116ED64@l */
/* 803D7468  54 00 17 7A */	rlwinm r0, r0, 2, 0x1d, 0x1d
/* 803D746C  7D 84 00 2E */	lwzx r12, r4, r0
/* 803D7470  7D 89 03 A6 */	mtctr r12
/* 803D7474  4E 80 04 21 */	bctrl 
/* 803D7478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D747C  7C 08 03 A6 */	mtlr r0
/* 803D7480  38 21 00 10 */	addi r1, r1, 0x10
/* 803D7484  4E 80 00 20 */	blr 
