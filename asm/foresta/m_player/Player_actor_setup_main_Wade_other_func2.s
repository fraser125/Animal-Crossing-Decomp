lbl_804DFD28:
/* 804DFD28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DFD2C  7C 08 02 A6 */	mflr r0
/* 804DFD30  7C 87 23 78 */	mr r7, r4
/* 804DFD34  38 A0 00 01 */	li r5, 1
/* 804DFD38  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DFD3C  38 81 00 08 */	addi r4, r1, 8
/* 804DFD40  80 C3 0D 28 */	lwz r6, 0xd28(r3)
/* 804DFD44  80 03 0D 2C */	lwz r0, 0xd2c(r3)
/* 804DFD48  90 C1 00 08 */	stw r6, 8(r1)
/* 804DFD4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DFD50  80 03 0D 30 */	lwz r0, 0xd30(r3)
/* 804DFD54  7C E3 3B 78 */	mr r3, r7
/* 804DFD58  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DFD5C  4B EC 81 81 */	bl mFI_SetBearActor
/* 804DFD60  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DFD64  38 00 00 00 */	li r0, 0
/* 804DFD68  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DFD6C  3C 63 00 02 */	addis r3, r3, 2
/* 804DFD70  98 03 65 20 */	stb r0, 0x6520(r3)
/* 804DFD74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DFD78  7C 08 03 A6 */	mtlr r0
/* 804DFD7C  38 21 00 20 */	addi r1, r1, 0x20
/* 804DFD80  4E 80 00 20 */	blr 
