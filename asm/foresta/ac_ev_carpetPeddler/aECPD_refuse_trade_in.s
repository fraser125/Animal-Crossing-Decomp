lbl_8051C4B4:
/* 8051C4B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051C4B8  7C 08 02 A6 */	mflr r0
/* 8051C4BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051C4C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051C4C4  7C 9F 23 78 */	mr r31, r4
/* 8051C4C8  38 80 00 01 */	li r4, 1
/* 8051C4CC  93 C1 00 08 */	stw r30, 8(r1)
/* 8051C4D0  7C 7E 1B 78 */	mr r30, r3
/* 8051C4D4  38 60 00 04 */	li r3, 4
/* 8051C4D8  4B E7 BF A5 */	bl mDemo_Get_OrderValue
/* 8051C4DC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8051C4E0  2C 00 00 02 */	cmpwi r0, 2
/* 8051C4E4  40 82 00 68 */	bne lbl_8051C54C
/* 8051C4E8  A0 BE 09 AA */	lhz r5, 0x9aa(r30)
/* 8051C4EC  38 60 00 05 */	li r3, 5
/* 8051C4F0  38 80 00 00 */	li r4, 0
/* 8051C4F4  4B E7 BF 45 */	bl mDemo_Set_OrderValue
/* 8051C4F8  38 60 00 05 */	li r3, 5
/* 8051C4FC  38 80 00 01 */	li r4, 1
/* 8051C500  38 A0 00 07 */	li r5, 7
/* 8051C504  4B E7 BF 35 */	bl mDemo_Set_OrderValue
/* 8051C508  38 60 00 05 */	li r3, 5
/* 8051C50C  38 80 00 02 */	li r4, 2
/* 8051C510  38 A0 00 00 */	li r5, 0
/* 8051C514  4B E7 BF 25 */	bl mDemo_Set_OrderValue
/* 8051C518  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051C51C  A0 9E 09 AA */	lhz r4, 0x9aa(r30)
/* 8051C520  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051C524  38 A0 00 00 */	li r5, 0
/* 8051C528  3C 63 00 02 */	addis r3, r3, 2
/* 8051C52C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8051C530  4B EC 49 D9 */	bl mPr_SetFreePossessionItem
/* 8051C534  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 8051C538  7F C3 F3 78 */	mr r3, r30
/* 8051C53C  7F E4 FB 78 */	mr r4, r31
/* 8051C540  38 A0 00 0E */	li r5, 0xe
/* 8051C544  7D 89 03 A6 */	mtctr r12
/* 8051C548  4E 80 04 21 */	bctrl 
lbl_8051C54C:
/* 8051C54C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051C550  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051C554  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051C558  7C 08 03 A6 */	mtlr r0
/* 8051C55C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051C560  4E 80 00 20 */	blr 
