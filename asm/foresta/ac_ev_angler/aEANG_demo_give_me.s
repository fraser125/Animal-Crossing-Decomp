lbl_80518B2C:
/* 80518B2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80518B30  7C 08 02 A6 */	mflr r0
/* 80518B34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80518B38  39 61 00 20 */	addi r11, r1, 0x20
/* 80518B3C  4B B8 23 99 */	bl func_8009AED4
/* 80518B40  7C 7D 1B 78 */	mr r29, r3
/* 80518B44  7C 9E 23 78 */	mr r30, r4
/* 80518B48  38 60 00 04 */	li r3, 4
/* 80518B4C  38 80 00 09 */	li r4, 9
/* 80518B50  4B E7 F9 2D */	bl mDemo_Get_OrderValue
/* 80518B54  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80518B58  2C 00 00 03 */	cmpwi r0, 3
/* 80518B5C  40 82 00 68 */	bne lbl_80518BC4
/* 80518B60  3B E0 00 00 */	li r31, 0
/* 80518B64  38 60 00 04 */	li r3, 4
/* 80518B68  38 80 00 09 */	li r4, 9
/* 80518B6C  38 A0 00 00 */	li r5, 0
/* 80518B70  4B E7 F8 C9 */	bl mDemo_Set_OrderValue
/* 80518B74  4B E6 A9 CD */	bl func_80383540
/* 80518B78  4B E6 AF F5 */	bl mChoice_Get_ChoseNum
/* 80518B7C  2C 03 00 00 */	cmpwi r3, 0
/* 80518B80  41 82 00 08 */	beq lbl_80518B88
/* 80518B84  48 00 00 28 */	b lbl_80518BAC
lbl_80518B88:
/* 80518B88  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80518B8C  88 9D 09 A2 */	lbz r4, 0x9a2(r29)
/* 80518B90  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80518B94  A0 BD 09 A0 */	lhz r5, 0x9a0(r29)
/* 80518B98  3C 63 00 02 */	addis r3, r3, 2
/* 80518B9C  38 C0 00 00 */	li r6, 0
/* 80518BA0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80518BA4  4B EC 82 85 */	bl mPr_SetPossessionItem
/* 80518BA8  3B E0 00 06 */	li r31, 6
lbl_80518BAC:
/* 80518BAC  81 9D 09 9C */	lwz r12, 0x99c(r29)
/* 80518BB0  7F A3 EB 78 */	mr r3, r29
/* 80518BB4  7F C4 F3 78 */	mr r4, r30
/* 80518BB8  7F E5 FB 78 */	mr r5, r31
/* 80518BBC  7D 89 03 A6 */	mtctr r12
/* 80518BC0  4E 80 04 21 */	bctrl 
lbl_80518BC4:
/* 80518BC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80518BC8  4B B8 23 59 */	bl func_8009AF20
/* 80518BCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80518BD0  7C 08 03 A6 */	mtlr r0
/* 80518BD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80518BD8  4E 80 00 20 */	blr 
