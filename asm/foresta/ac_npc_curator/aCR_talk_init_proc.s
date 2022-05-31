lbl_8054CB5C:
/* 8054CB5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054CB60  7C 08 02 A6 */	mflr r0
/* 8054CB64  3C C0 80 6A */	lis r6, init_proc_1036@ha /* 0x806A52BC@ha */
/* 8054CB68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054CB6C  54 A0 10 3A */	slwi r0, r5, 2
/* 8054CB70  38 A6 52 BC */	addi r5, r6, init_proc_1036@l /* 0x806A52BC@l */
/* 8054CB74  7D 85 00 2E */	lwzx r12, r5, r0
/* 8054CB78  7D 89 03 A6 */	mtctr r12
/* 8054CB7C  4E 80 04 21 */	bctrl 
/* 8054CB80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054CB84  7C 08 03 A6 */	mtlr r0
/* 8054CB88  38 21 00 10 */	addi r1, r1, 0x10
/* 8054CB8C  4E 80 00 20 */	blr 
