lbl_8057CE74:
/* 8057CE74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057CE78  7C 08 02 A6 */	mflr r0
/* 8057CE7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057CE80  38 A1 00 0C */	addi r5, r1, 0xc
/* 8057CE84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8057CE88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8057CE8C  7C 7E 1B 78 */	mr r30, r3
/* 8057CE90  7C 83 23 78 */	mr r3, r4
/* 8057CE94  38 81 00 10 */	addi r4, r1, 0x10
/* 8057CE98  4B FF FF 49 */	bl aSHM_get_Fgitem_pos
/* 8057CE9C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057CEA0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057CEA4  3F E3 00 02 */	addis r31, r3, 2
/* 8057CEA8  80 7F 60 8C */	lwz r3, 0x608c(r31)
/* 8057CEAC  28 03 00 00 */	cmplwi r3, 0
/* 8057CEB0  41 82 00 40 */	beq lbl_8057CEF0
/* 8057CEB4  81 83 00 1C */	lwz r12, 0x1c(r3)
/* 8057CEB8  38 81 00 08 */	addi r4, r1, 8
/* 8057CEBC  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8057CEC0  38 60 00 00 */	li r3, 0
/* 8057CEC4  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8057CEC8  38 E0 00 00 */	li r7, 0
/* 8057CECC  7D 89 03 A6 */	mtctr r12
/* 8057CED0  4E 80 04 21 */	bctrl 
/* 8057CED4  2C 03 00 00 */	cmpwi r3, 0
/* 8057CED8  41 82 00 18 */	beq lbl_8057CEF0
/* 8057CEDC  80 9F 60 8C */	lwz r4, 0x608c(r31)
/* 8057CEE0  80 61 00 08 */	lwz r3, 8(r1)
/* 8057CEE4  81 84 00 20 */	lwz r12, 0x20(r4)
/* 8057CEE8  7D 89 03 A6 */	mtctr r12
/* 8057CEEC  4E 80 04 21 */	bctrl 
lbl_8057CEF0:
/* 8057CEF0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8057CEF4  90 1E 09 BC */	stw r0, 0x9bc(r30)
/* 8057CEF8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8057CEFC  90 1E 09 C0 */	stw r0, 0x9c0(r30)
/* 8057CF00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8057CF04  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8057CF08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057CF0C  7C 08 03 A6 */	mtlr r0
/* 8057CF10  38 21 00 20 */	addi r1, r1, 0x20
/* 8057CF14  4E 80 00 20 */	blr 
