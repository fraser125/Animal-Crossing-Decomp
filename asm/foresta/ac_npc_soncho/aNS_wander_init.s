lbl_8057EE0C:
/* 8057EE0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057EE10  7C 08 02 A6 */	mflr r0
/* 8057EE14  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8057EE18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057EE1C  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 8057EE20  3C C6 00 02 */	addis r6, r6, 2
/* 8057EE24  38 A0 00 05 */	li r5, 5
/* 8057EE28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057EE2C  7C 7F 1B 78 */	mr r31, r3
/* 8057EE30  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 8057EE34  81 86 01 18 */	lwz r12, 0x118(r6)
/* 8057EE38  7D 89 03 A6 */	mtctr r12
/* 8057EE3C  4E 80 04 21 */	bctrl 
/* 8057EE40  38 00 00 50 */	li r0, 0x50
/* 8057EE44  98 1F 00 D6 */	stb r0, 0xd6(r31)
/* 8057EE48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057EE4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057EE50  7C 08 03 A6 */	mtlr r0
/* 8057EE54  38 21 00 10 */	addi r1, r1, 0x10
/* 8057EE58  4E 80 00 20 */	blr 
