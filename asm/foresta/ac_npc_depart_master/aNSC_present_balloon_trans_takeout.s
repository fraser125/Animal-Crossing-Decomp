lbl_8054FC8C:
/* 8054FC8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054FC90  7C 08 02 A6 */	mflr r0
/* 8054FC94  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054FC98  39 61 00 20 */	addi r11, r1, 0x20
/* 8054FC9C  4B B4 B2 35 */	bl func_8009AED0
/* 8054FCA0  7C 7C 1B 78 */	mr r28, r3
/* 8054FCA4  7C 9D 23 78 */	mr r29, r4
/* 8054FCA8  80 03 08 84 */	lwz r0, 0x884(r3)
/* 8054FCAC  28 00 00 00 */	cmplwi r0, 0
/* 8054FCB0  40 82 00 54 */	bne lbl_8054FD04
/* 8054FCB4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054FCB8  7F 86 E3 78 */	mr r6, r28
/* 8054FCBC  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8054FCC0  38 60 22 44 */	li r3, 0x2244
/* 8054FCC4  3F C4 00 02 */	addis r30, r4, 2
/* 8054FCC8  38 80 00 07 */	li r4, 7
/* 8054FCCC  80 FE 60 94 */	lwz r7, 0x6094(r30)
/* 8054FCD0  38 A0 00 01 */	li r5, 1
/* 8054FCD4  81 87 00 00 */	lwz r12, 0(r7)
/* 8054FCD8  7D 89 03 A6 */	mtctr r12
/* 8054FCDC  4E 80 04 21 */	bctrl 
/* 8054FCE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8054FCE4  41 82 00 20 */	beq lbl_8054FD04
/* 8054FCE8  80 BE 60 94 */	lwz r5, 0x6094(r30)
/* 8054FCEC  7F 83 E3 78 */	mr r3, r28
/* 8054FCF0  38 80 00 01 */	li r4, 1
/* 8054FCF4  81 85 00 08 */	lwz r12, 8(r5)
/* 8054FCF8  7D 89 03 A6 */	mtctr r12
/* 8054FCFC  4E 80 04 21 */	bctrl 
/* 8054FD00  93 FC 08 84 */	stw r31, 0x884(r28)
lbl_8054FD04:
/* 8054FD04  80 1C 01 98 */	lwz r0, 0x198(r28)
/* 8054FD08  2C 00 00 01 */	cmpwi r0, 1
/* 8054FD0C  40 82 00 44 */	bne lbl_8054FD50
/* 8054FD10  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054FD14  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054FD18  3C 63 00 02 */	addis r3, r3, 2
/* 8054FD1C  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 8054FD20  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8054FD24  7C 00 E0 40 */	cmplw r0, r28
/* 8054FD28  40 82 00 28 */	bne lbl_8054FD50
/* 8054FD2C  81 83 00 08 */	lwz r12, 8(r3)
/* 8054FD30  7F 83 E3 78 */	mr r3, r28
/* 8054FD34  38 80 00 02 */	li r4, 2
/* 8054FD38  7D 89 03 A6 */	mtctr r12
/* 8054FD3C  4E 80 04 21 */	bctrl 
/* 8054FD40  7F 83 E3 78 */	mr r3, r28
/* 8054FD44  7F A4 EB 78 */	mr r4, r29
/* 8054FD48  38 A0 00 0A */	li r5, 0xa
/* 8054FD4C  48 00 2A E9 */	bl aNSC_setupAction
lbl_8054FD50:
/* 8054FD50  39 61 00 20 */	addi r11, r1, 0x20
/* 8054FD54  4B B4 B1 C9 */	bl func_8009AF1C
/* 8054FD58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054FD5C  7C 08 03 A6 */	mtlr r0
/* 8054FD60  38 21 00 20 */	addi r1, r1, 0x20
/* 8054FD64  4E 80 00 20 */	blr 
