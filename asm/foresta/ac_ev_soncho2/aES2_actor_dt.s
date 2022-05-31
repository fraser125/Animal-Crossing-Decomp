lbl_805247A4:
/* 805247A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805247A8  7C 08 02 A6 */	mflr r0
/* 805247AC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805247B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805247B4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805247B8  3C A5 00 02 */	addis r5, r5, 2
/* 805247BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805247C0  7C 9F 23 78 */	mr r31, r4
/* 805247C4  93 C1 00 08 */	stw r30, 8(r1)
/* 805247C8  7C 7E 1B 78 */	mr r30, r3
/* 805247CC  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 805247D0  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 805247D4  7D 89 03 A6 */	mtctr r12
/* 805247D8  4E 80 04 21 */	bctrl 
/* 805247DC  7F C3 F3 78 */	mr r3, r30
/* 805247E0  7F E4 FB 78 */	mr r4, r31
/* 805247E4  4B EC 7A BD */	bl mSC_delete_soncho
/* 805247E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805247EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805247F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805247F4  7C 08 03 A6 */	mtlr r0
/* 805247F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805247FC  4E 80 00 20 */	blr 
