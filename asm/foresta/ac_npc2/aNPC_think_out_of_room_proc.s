lbl_80542C04:
/* 80542C04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80542C08  7C 08 02 A6 */	mflr r0
/* 80542C0C  3C C0 80 6A */	lis r6, think_proc_3124@ha /* 0x806A3E2C@ha */
/* 80542C10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80542C14  54 A0 10 3A */	slwi r0, r5, 2
/* 80542C18  38 A6 3E 2C */	addi r5, r6, think_proc_3124@l /* 0x806A3E2C@l */
/* 80542C1C  7D 85 00 2E */	lwzx r12, r5, r0
/* 80542C20  7D 89 03 A6 */	mtctr r12
/* 80542C24  4E 80 04 21 */	bctrl 
/* 80542C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80542C2C  7C 08 03 A6 */	mtlr r0
/* 80542C30  38 21 00 10 */	addi r1, r1, 0x10
/* 80542C34  4E 80 00 20 */	blr 
