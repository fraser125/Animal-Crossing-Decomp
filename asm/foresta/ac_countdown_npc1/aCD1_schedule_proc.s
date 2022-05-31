lbl_80517E40:
/* 80517E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80517E44  7C 08 02 A6 */	mflr r0
/* 80517E48  3C C0 80 6A */	lis r6, sche_proc@ha /* 0x8069FECC@ha */
/* 80517E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80517E50  54 A0 10 3A */	slwi r0, r5, 2
/* 80517E54  38 A6 FE CC */	addi r5, r6, sche_proc@l /* 0x8069FECC@l */
/* 80517E58  7D 85 00 2E */	lwzx r12, r5, r0
/* 80517E5C  7D 89 03 A6 */	mtctr r12
/* 80517E60  4E 80 04 21 */	bctrl 
/* 80517E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80517E68  7C 08 03 A6 */	mtlr r0
/* 80517E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80517E70  4E 80 00 20 */	blr 
