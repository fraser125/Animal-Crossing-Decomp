lbl_8063C358:
/* 8063C358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063C35C  7C 08 02 A6 */	mflr r0
/* 8063C360  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8063C364  38 A0 00 08 */	li r5, 8
/* 8063C368  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8063C36C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063C370  3C C6 00 02 */	addis r6, r6, 2
/* 8063C374  80 C6 60 8C */	lwz r6, 0x608c(r6)
/* 8063C378  81 86 00 64 */	lwz r12, 0x64(r6)
/* 8063C37C  7D 89 03 A6 */	mtctr r12
/* 8063C380  4E 80 04 21 */	bctrl 
/* 8063C384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063C388  7C 08 03 A6 */	mtlr r0
/* 8063C38C  38 21 00 10 */	addi r1, r1, 0x10
/* 8063C390  4E 80 00 20 */	blr 
