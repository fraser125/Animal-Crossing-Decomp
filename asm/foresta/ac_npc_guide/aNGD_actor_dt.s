lbl_80552BD4:
/* 80552BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80552BD8  7C 08 02 A6 */	mflr r0
/* 80552BDC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80552BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80552BE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80552BE8  7C 9F 23 78 */	mr r31, r4
/* 80552BEC  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 80552BF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80552BF4  7C 7E 1B 78 */	mr r30, r3
/* 80552BF8  3C 64 00 01 */	addis r3, r4, 1
/* 80552BFC  38 80 00 0F */	li r4, 0xf
/* 80552C00  38 63 74 38 */	addi r3, r3, 0x7438
/* 80552C04  4B E7 9E C5 */	bl mNpc_SetAnimalThisLand
/* 80552C08  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80552C0C  7F C3 F3 78 */	mr r3, r30
/* 80552C10  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80552C14  7F E4 FB 78 */	mr r4, r31
/* 80552C18  3C A5 00 02 */	addis r5, r5, 2
/* 80552C1C  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80552C20  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 80552C24  7D 89 03 A6 */	mtctr r12
/* 80552C28  4E 80 04 21 */	bctrl 
/* 80552C2C  38 60 00 8D */	li r3, 0x8d
/* 80552C30  48 0D B2 F5 */	bl sAdo_SysLevStop
/* 80552C34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80552C38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80552C3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80552C40  7C 08 03 A6 */	mtlr r0
/* 80552C44  38 21 00 10 */	addi r1, r1, 0x10
/* 80552C48  4E 80 00 20 */	blr 
