lbl_80533BEC:
/* 80533BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80533BF0  7C 08 02 A6 */	mflr r0
/* 80533BF4  3C C0 80 6A */	lis r6, act_proc_3026@ha /* 0x806A262C@ha */
/* 80533BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80533BFC  54 A0 10 3A */	slwi r0, r5, 2
/* 80533C00  38 A6 26 2C */	addi r5, r6, act_proc_3026@l /* 0x806A262C@l */
/* 80533C04  7D 85 00 2E */	lwzx r12, r5, r0
/* 80533C08  7D 89 03 A6 */	mtctr r12
/* 80533C0C  4E 80 04 21 */	bctrl 
/* 80533C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80533C14  7C 08 03 A6 */	mtlr r0
/* 80533C18  38 21 00 10 */	addi r1, r1, 0x10
/* 80533C1C  4E 80 00 20 */	blr 
