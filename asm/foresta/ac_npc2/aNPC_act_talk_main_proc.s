lbl_8053FC40:
/* 8053FC40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053FC44  7C 08 02 A6 */	mflr r0
/* 8053FC48  3C A0 80 6A */	lis r5, act_proc_2105@ha /* 0x806A3BB8@ha */
/* 8053FC4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053FC50  38 A5 3B B8 */	addi r5, r5, act_proc_2105@l /* 0x806A3BB8@l */
/* 8053FC54  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 8053FC58  54 00 10 3A */	slwi r0, r0, 2
/* 8053FC5C  7D 85 00 2E */	lwzx r12, r5, r0
/* 8053FC60  7D 89 03 A6 */	mtctr r12
/* 8053FC64  4E 80 04 21 */	bctrl 
/* 8053FC68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053FC6C  7C 08 03 A6 */	mtlr r0
/* 8053FC70  38 21 00 10 */	addi r1, r1, 0x10
/* 8053FC74  4E 80 00 20 */	blr 
