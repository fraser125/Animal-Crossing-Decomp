lbl_80523624:
/* 80523624  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80523628  7C 08 02 A6 */	mflr r0
/* 8052362C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80523630  39 61 00 20 */	addi r11, r1, 0x20
/* 80523634  4B B7 78 9D */	bl func_8009AED0
/* 80523638  7C 7C 1B 78 */	mr r28, r3
/* 8052363C  7C 9D 23 78 */	mr r29, r4
/* 80523640  4B E9 C0 69 */	bl func_803BF6A8
/* 80523644  4B E9 D6 55 */	bl mMsg_Check_MainNormalContinue
/* 80523648  2C 03 00 01 */	cmpwi r3, 1
/* 8052364C  40 82 00 50 */	bne lbl_8052369C
/* 80523650  83 FC 09 AC */	lwz r31, 0x9ac(r28)
/* 80523654  8B DF 00 00 */	lbz r30, 0(r31)
/* 80523658  4B E5 FE E9 */	bl func_80383540
/* 8052365C  4B E6 05 11 */	bl mChoice_Get_ChoseNum
/* 80523660  2C 03 00 00 */	cmpwi r3, 0
/* 80523664  41 82 00 08 */	beq lbl_8052366C
/* 80523668  48 00 00 0C */	b lbl_80523674
lbl_8052366C:
/* 8052366C  57 DE 07 FE */	clrlwi r30, r30, 0x1f
/* 80523670  48 00 00 10 */	b lbl_80523680
lbl_80523674:
/* 80523674  57 DE 07 BD */	rlwinm. r30, r30, 0, 0x1e, 0x1e
/* 80523678  40 82 00 08 */	bne lbl_80523680
/* 8052367C  3B C0 00 03 */	li r30, 3
lbl_80523680:
/* 80523680  9B DF 00 00 */	stb r30, 0(r31)
/* 80523684  7F 83 E3 78 */	mr r3, r28
/* 80523688  7F A4 EB 78 */	mr r4, r29
/* 8052368C  38 A0 00 00 */	li r5, 0
/* 80523690  81 9C 09 9C */	lwz r12, 0x99c(r28)
/* 80523694  7D 89 03 A6 */	mtctr r12
/* 80523698  4E 80 04 21 */	bctrl 
lbl_8052369C:
/* 8052369C  39 61 00 20 */	addi r11, r1, 0x20
/* 805236A0  4B B7 78 7D */	bl func_8009AF1C
/* 805236A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805236A8  7C 08 03 A6 */	mtlr r0
/* 805236AC  38 21 00 20 */	addi r1, r1, 0x20
/* 805236B0  4E 80 00 20 */	blr 
