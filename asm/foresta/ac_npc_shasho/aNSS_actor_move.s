lbl_80576B2C:
/* 80576B2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80576B30  7C 08 02 A6 */	mflr r0
/* 80576B34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80576B38  39 61 00 20 */	addi r11, r1, 0x20
/* 80576B3C  4B B2 43 99 */	bl func_8009AED4
/* 80576B40  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80576B44  7C 7E 1B 78 */	mr r30, r3
/* 80576B48  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80576B4C  7C 9D 23 78 */	mr r29, r4
/* 80576B50  3F E5 00 02 */	addis r31, r5, 2
/* 80576B54  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80576B58  81 85 00 E4 */	lwz r12, 0xe4(r5)
/* 80576B5C  7D 89 03 A6 */	mtctr r12
/* 80576B60  4E 80 04 21 */	bctrl 
/* 80576B64  81 9E 09 9C */	lwz r12, 0x99c(r30)
/* 80576B68  7F C3 F3 78 */	mr r3, r30
/* 80576B6C  7F A4 EB 78 */	mr r4, r29
/* 80576B70  7D 89 03 A6 */	mtctr r12
/* 80576B74  4E 80 04 21 */	bctrl 
/* 80576B78  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80576B7C  7F C3 F3 78 */	mr r3, r30
/* 80576B80  7F A4 EB 78 */	mr r4, r29
/* 80576B84  81 85 00 E8 */	lwz r12, 0xe8(r5)
/* 80576B88  7D 89 03 A6 */	mtctr r12
/* 80576B8C  4E 80 04 21 */	bctrl 
/* 80576B90  80 1E 09 94 */	lwz r0, 0x994(r30)
/* 80576B94  2C 00 FF FF */	cmpwi r0, -1
/* 80576B98  40 82 00 0C */	bne lbl_80576BA4
/* 80576B9C  7F C3 F3 78 */	mr r3, r30
/* 80576BA0  4B DF D8 A1 */	bl Actor_delete
lbl_80576BA4:
/* 80576BA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80576BA8  4B B2 43 79 */	bl func_8009AF20
/* 80576BAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80576BB0  7C 08 03 A6 */	mtlr r0
/* 80576BB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80576BB8  4E 80 00 20 */	blr 
