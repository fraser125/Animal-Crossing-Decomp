lbl_8053F798:
/* 8053F798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053F79C  7C 08 02 A6 */	mflr r0
/* 8053F7A0  3C 80 80 6A */	lis r4, act_proc_2001@ha /* 0x806A3B94@ha */
/* 8053F7A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053F7A8  38 84 3B 94 */	addi r4, r4, act_proc_2001@l /* 0x806A3B94@l */
/* 8053F7AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053F7B0  7C 7F 1B 78 */	mr r31, r3
/* 8053F7B4  88 03 07 F7 */	lbz r0, 0x7f7(r3)
/* 8053F7B8  54 00 10 3A */	slwi r0, r0, 2
/* 8053F7BC  7D 84 00 2E */	lwzx r12, r4, r0
/* 8053F7C0  7D 89 03 A6 */	mtctr r12
/* 8053F7C4  4E 80 04 21 */	bctrl 
/* 8053F7C8  2C 03 00 00 */	cmpwi r3, 0
/* 8053F7CC  40 82 00 0C */	bne lbl_8053F7D8
/* 8053F7D0  38 00 00 FF */	li r0, 0xff
/* 8053F7D4  98 1F 07 F6 */	stb r0, 0x7f6(r31)
lbl_8053F7D8:
/* 8053F7D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053F7DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053F7E0  7C 08 03 A6 */	mtlr r0
/* 8053F7E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8053F7E8  4E 80 00 20 */	blr 
