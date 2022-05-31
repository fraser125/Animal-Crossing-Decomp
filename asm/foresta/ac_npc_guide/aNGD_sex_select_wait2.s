lbl_80553B1C:
/* 80553B1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80553B20  7C 08 02 A6 */	mflr r0
/* 80553B24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80553B28  39 61 00 20 */	addi r11, r1, 0x20
/* 80553B2C  4B B4 73 A9 */	bl func_8009AED4
/* 80553B30  7C 7E 1B 78 */	mr r30, r3
/* 80553B34  7C 9F 23 78 */	mr r31, r4
/* 80553B38  38 60 00 04 */	li r3, 4
/* 80553B3C  38 80 00 09 */	li r4, 9
/* 80553B40  4B E4 49 3D */	bl mDemo_Get_OrderValue
/* 80553B44  54 7D 04 3F */	clrlwi. r29, r3, 0x10
/* 80553B48  41 82 01 08 */	beq lbl_80553C50
/* 80553B4C  4B E6 BB 5D */	bl func_803BF6A8
/* 80553B50  4B E6 D1 49 */	bl mMsg_Check_MainNormalContinue
/* 80553B54  2C 03 00 01 */	cmpwi r3, 1
/* 80553B58  40 82 00 F8 */	bne lbl_80553C50
/* 80553B5C  4B E2 F9 E5 */	bl func_80383540
/* 80553B60  4B E3 00 0D */	bl mChoice_Get_ChoseNum
/* 80553B64  2C 03 00 01 */	cmpwi r3, 1
/* 80553B68  41 82 00 7C */	beq lbl_80553BE4
/* 80553B6C  40 80 00 D4 */	bge lbl_80553C40
/* 80553B70  2C 03 00 00 */	cmpwi r3, 0
/* 80553B74  40 80 00 08 */	bge lbl_80553B7C
/* 80553B78  48 00 00 C8 */	b lbl_80553C40
lbl_80553B7C:
/* 80553B7C  2C 1D 00 02 */	cmpwi r29, 2
/* 80553B80  41 82 00 30 */	beq lbl_80553BB0
/* 80553B84  40 80 00 44 */	bge lbl_80553BC8
/* 80553B88  2C 1D 00 01 */	cmpwi r29, 1
/* 80553B8C  40 80 00 08 */	bge lbl_80553B94
/* 80553B90  48 00 00 38 */	b lbl_80553BC8
lbl_80553B94:
/* 80553B94  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80553B98  38 00 00 00 */	li r0, 0
/* 80553B9C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80553BA0  3C 63 00 02 */	addis r3, r3, 2
/* 80553BA4  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80553BA8  98 03 00 14 */	stb r0, 0x14(r3)
/* 80553BAC  48 00 00 1C */	b lbl_80553BC8
lbl_80553BB0:
/* 80553BB0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80553BB4  38 00 00 01 */	li r0, 1
/* 80553BB8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80553BBC  3C 63 00 02 */	addis r3, r3, 2
/* 80553BC0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80553BC4  98 03 00 14 */	stb r0, 0x14(r3)
lbl_80553BC8:
/* 80553BC8  38 00 00 10 */	li r0, 0x10
/* 80553BCC  7F C3 F3 78 */	mr r3, r30
/* 80553BD0  90 1E 09 98 */	stw r0, 0x998(r30)
/* 80553BD4  7F E4 FB 78 */	mr r4, r31
/* 80553BD8  38 A0 00 04 */	li r5, 4
/* 80553BDC  48 00 0D 2D */	bl aNGD_setupAction
/* 80553BE0  48 00 00 60 */	b lbl_80553C40
lbl_80553BE4:
/* 80553BE4  2C 1D 00 02 */	cmpwi r29, 2
/* 80553BE8  41 82 00 30 */	beq lbl_80553C18
/* 80553BEC  40 80 00 44 */	bge lbl_80553C30
/* 80553BF0  2C 1D 00 01 */	cmpwi r29, 1
/* 80553BF4  40 80 00 08 */	bge lbl_80553BFC
/* 80553BF8  48 00 00 38 */	b lbl_80553C30
lbl_80553BFC:
/* 80553BFC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80553C00  38 00 00 01 */	li r0, 1
/* 80553C04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80553C08  3C 63 00 02 */	addis r3, r3, 2
/* 80553C0C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80553C10  98 03 00 14 */	stb r0, 0x14(r3)
/* 80553C14  48 00 00 1C */	b lbl_80553C30
lbl_80553C18:
/* 80553C18  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80553C1C  38 00 00 00 */	li r0, 0
/* 80553C20  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80553C24  3C 63 00 02 */	addis r3, r3, 2
/* 80553C28  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80553C2C  98 03 00 14 */	stb r0, 0x14(r3)
lbl_80553C30:
/* 80553C30  7F C3 F3 78 */	mr r3, r30
/* 80553C34  7F E4 FB 78 */	mr r4, r31
/* 80553C38  38 A0 00 0F */	li r5, 0xf
/* 80553C3C  48 00 0C CD */	bl aNGD_setupAction
lbl_80553C40:
/* 80553C40  38 60 00 04 */	li r3, 4
/* 80553C44  38 80 00 09 */	li r4, 9
/* 80553C48  38 A0 00 00 */	li r5, 0
/* 80553C4C  4B E4 47 ED */	bl mDemo_Set_OrderValue
lbl_80553C50:
/* 80553C50  39 61 00 20 */	addi r11, r1, 0x20
/* 80553C54  4B B4 72 CD */	bl func_8009AF20
/* 80553C58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80553C5C  7C 08 03 A6 */	mtlr r0
/* 80553C60  38 21 00 20 */	addi r1, r1, 0x20
/* 80553C64  4E 80 00 20 */	blr 
