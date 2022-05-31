lbl_804F43AC:
/* 804F43AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F43B0  7C 08 02 A6 */	mflr r0
/* 804F43B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F43B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F43BC  7C 7F 1B 78 */	mr r31, r3
/* 804F43C0  80 03 0D 28 */	lwz r0, 0xd28(r3)
/* 804F43C4  2C 00 00 00 */	cmpwi r0, 0
/* 804F43C8  41 82 00 34 */	beq lbl_804F43FC
/* 804F43CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804F43D0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 804F43D4  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 804F43D8  38 60 00 70 */	li r3, 0x70
/* 804F43DC  3C A4 00 02 */	addis r5, r4, 2
/* 804F43E0  38 86 FF FF */	addi r4, r6, 0xFFFF /* 0x0000FFFF@l */
/* 804F43E4  80 A5 60 9C */	lwz r5, 0x609c(r5)
/* 804F43E8  81 85 00 04 */	lwz r12, 4(r5)
/* 804F43EC  7D 89 03 A6 */	mtctr r12
/* 804F43F0  4E 80 04 21 */	bctrl 
/* 804F43F4  38 00 00 00 */	li r0, 0
/* 804F43F8  90 1F 0D 28 */	stw r0, 0xd28(r31)
lbl_804F43FC:
/* 804F43FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F4400  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F4404  7C 08 03 A6 */	mtlr r0
/* 804F4408  38 21 00 10 */	addi r1, r1, 0x10
/* 804F440C  4E 80 00 20 */	blr 
