lbl_805387FC:
/* 805387FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80538800  7C 08 02 A6 */	mflr r0
/* 80538804  3C C0 80 6A */	lis r6, sche_proc_4499@ha /* 0x806A29C0@ha */
/* 80538808  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053880C  54 A0 10 3A */	slwi r0, r5, 2
/* 80538810  38 A6 29 C0 */	addi r5, r6, sche_proc_4499@l /* 0x806A29C0@l */
/* 80538814  7D 85 00 2E */	lwzx r12, r5, r0
/* 80538818  7D 89 03 A6 */	mtctr r12
/* 8053881C  4E 80 04 21 */	bctrl 
/* 80538820  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80538824  7C 08 03 A6 */	mtlr r0
/* 80538828  38 21 00 10 */	addi r1, r1, 0x10
/* 8053882C  4E 80 00 20 */	blr 
