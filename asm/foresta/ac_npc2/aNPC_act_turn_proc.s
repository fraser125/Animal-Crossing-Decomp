lbl_8053F92C:
/* 8053F92C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053F930  7C 08 02 A6 */	mflr r0
/* 8053F934  3C C0 80 6A */	lis r6, act_proc_2030@ha /* 0x806A3BA4@ha */
/* 8053F938  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053F93C  54 A0 10 3A */	slwi r0, r5, 2
/* 8053F940  38 A6 3B A4 */	addi r5, r6, act_proc_2030@l /* 0x806A3BA4@l */
/* 8053F944  7D 85 00 2E */	lwzx r12, r5, r0
/* 8053F948  7D 89 03 A6 */	mtctr r12
/* 8053F94C  4E 80 04 21 */	bctrl 
/* 8053F950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053F954  7C 08 03 A6 */	mtlr r0
/* 8053F958  38 21 00 10 */	addi r1, r1, 0x10
/* 8053F95C  4E 80 00 20 */	blr 
