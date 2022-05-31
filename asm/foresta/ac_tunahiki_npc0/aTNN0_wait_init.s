lbl_8058ED1C:
/* 8058ED1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058ED20  7C 08 02 A6 */	mflr r0
/* 8058ED24  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058ED28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058ED2C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8058ED30  3C C5 00 02 */	addis r6, r5, 2
/* 8058ED34  38 80 00 70 */	li r4, 0x70
/* 8058ED38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058ED3C  7C 7F 1B 78 */	mr r31, r3
/* 8058ED40  38 A0 00 00 */	li r5, 0
/* 8058ED44  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 8058ED48  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8058ED4C  7D 89 03 A6 */	mtctr r12
/* 8058ED50  4E 80 04 21 */	bctrl 
/* 8058ED54  38 00 00 00 */	li r0, 0
/* 8058ED58  7F E3 FB 78 */	mr r3, r31
/* 8058ED5C  98 1F 07 F5 */	stb r0, 0x7f5(r31)
/* 8058ED60  38 80 00 04 */	li r4, 4
/* 8058ED64  38 A0 00 00 */	li r5, 0
/* 8058ED68  38 C0 00 00 */	li r6, 0
/* 8058ED6C  38 E0 00 00 */	li r7, 0
/* 8058ED70  39 00 00 00 */	li r8, 0
/* 8058ED74  39 20 00 00 */	li r9, 0
/* 8058ED78  4B FF FA 9D */	bl aTNN0_set_request_act
/* 8058ED7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058ED80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058ED84  7C 08 03 A6 */	mtlr r0
/* 8058ED88  38 21 00 10 */	addi r1, r1, 0x10
/* 8058ED8C  4E 80 00 20 */	blr 
