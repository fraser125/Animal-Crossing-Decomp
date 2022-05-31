lbl_8054BFDC:
/* 8054BFDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054BFE0  7C 08 02 A6 */	mflr r0
/* 8054BFE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054BFE8  39 61 00 20 */	addi r11, r1, 0x20
/* 8054BFEC  4B B4 EE E9 */	bl func_8009AED4
/* 8054BFF0  7C 7D 1B 78 */	mr r29, r3
/* 8054BFF4  7C 9E 23 78 */	mr r30, r4
/* 8054BFF8  4B E7 36 B1 */	bl func_803BF6A8
/* 8054BFFC  7C 7F 1B 78 */	mr r31, r3
/* 8054C000  4B E7 3F CD */	bl mMsg_Get_msg_num
/* 8054C004  2C 03 2F 50 */	cmpwi r3, 0x2f50
/* 8054C008  40 82 00 70 */	bne lbl_8054C078
/* 8054C00C  7F E3 FB 78 */	mr r3, r31
/* 8054C010  4B E7 4C 89 */	bl mMsg_Check_MainNormalContinue
/* 8054C014  2C 03 00 01 */	cmpwi r3, 1
/* 8054C018  40 82 00 60 */	bne lbl_8054C078
/* 8054C01C  4B E3 75 25 */	bl func_80383540
/* 8054C020  4B E3 7B 4D */	bl mChoice_Get_ChoseNum
/* 8054C024  2C 03 00 01 */	cmpwi r3, 1
/* 8054C028  41 82 00 28 */	beq lbl_8054C050
/* 8054C02C  40 80 00 10 */	bge lbl_8054C03C
/* 8054C030  2C 03 00 00 */	cmpwi r3, 0
/* 8054C034  40 80 00 14 */	bge lbl_8054C048
/* 8054C038  48 00 00 28 */	b lbl_8054C060
lbl_8054C03C:
/* 8054C03C  2C 03 00 03 */	cmpwi r3, 3
/* 8054C040  40 80 00 20 */	bge lbl_8054C060
/* 8054C044  48 00 00 14 */	b lbl_8054C058
lbl_8054C048:
/* 8054C048  38 A0 00 05 */	li r5, 5
/* 8054C04C  48 00 00 18 */	b lbl_8054C064
lbl_8054C050:
/* 8054C050  38 A0 00 03 */	li r5, 3
/* 8054C054  48 00 00 10 */	b lbl_8054C064
lbl_8054C058:
/* 8054C058  38 A0 00 01 */	li r5, 1
/* 8054C05C  48 00 00 08 */	b lbl_8054C064
lbl_8054C060:
/* 8054C060  38 A0 00 00 */	li r5, 0
lbl_8054C064:
/* 8054C064  81 9D 09 A8 */	lwz r12, 0x9a8(r29)
/* 8054C068  7F A3 EB 78 */	mr r3, r29
/* 8054C06C  7F C4 F3 78 */	mr r4, r30
/* 8054C070  7D 89 03 A6 */	mtctr r12
/* 8054C074  4E 80 04 21 */	bctrl 
lbl_8054C078:
/* 8054C078  39 61 00 20 */	addi r11, r1, 0x20
/* 8054C07C  4B B4 EE A5 */	bl func_8009AF20
/* 8054C080  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054C084  7C 08 03 A6 */	mtlr r0
/* 8054C088  38 21 00 20 */	addi r1, r1, 0x20
/* 8054C08C  4E 80 00 20 */	blr 
