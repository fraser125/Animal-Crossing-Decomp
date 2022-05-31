lbl_8056DBB0:
/* 8056DBB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056DBB4  7C 08 02 A6 */	mflr r0
/* 8056DBB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056DBBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056DBC0  7C 9F 23 78 */	mr r31, r4
/* 8056DBC4  93 C1 00 08 */	stw r30, 8(r1)
/* 8056DBC8  7C 7E 1B 78 */	mr r30, r3
/* 8056DBCC  4B E7 1C F5 */	bl mPO_delivery_all_address_proc
/* 8056DBD0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8056DBD4  7F C3 F3 78 */	mr r3, r30
/* 8056DBD8  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8056DBDC  7F E4 FB 78 */	mr r4, r31
/* 8056DBE0  3C A5 00 02 */	addis r5, r5, 2
/* 8056DBE4  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8056DBE8  81 85 00 D8 */	lwz r12, 0xd8(r5)
/* 8056DBEC  7D 89 03 A6 */	mtctr r12
/* 8056DBF0  4E 80 04 21 */	bctrl 
/* 8056DBF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056DBF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056DBFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056DC00  7C 08 03 A6 */	mtlr r0
/* 8056DC04  38 21 00 10 */	addi r1, r1, 0x10
/* 8056DC08  4E 80 00 20 */	blr 
