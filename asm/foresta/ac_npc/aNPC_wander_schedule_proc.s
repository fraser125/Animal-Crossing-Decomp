lbl_80537F4C:
/* 80537F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80537F50  7C 08 02 A6 */	mflr r0
/* 80537F54  3C C0 80 6A */	lis r6, sche_proc_4534@ha /* 0x806A29D0@ha */
/* 80537F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80537F5C  54 A0 10 3A */	slwi r0, r5, 2
/* 80537F60  38 A6 29 D0 */	addi r5, r6, sche_proc_4534@l /* 0x806A29D0@l */
/* 80537F64  7D 85 00 2E */	lwzx r12, r5, r0
/* 80537F68  7D 89 03 A6 */	mtctr r12
/* 80537F6C  4E 80 04 21 */	bctrl 
/* 80537F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80537F74  7C 08 03 A6 */	mtlr r0
/* 80537F78  38 21 00 10 */	addi r1, r1, 0x10
/* 80537F7C  4E 80 00 20 */	blr 
