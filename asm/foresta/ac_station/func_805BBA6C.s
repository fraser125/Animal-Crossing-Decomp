lbl_805BBA6C:
/* 805BBA6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BBA70  7C 08 02 A6 */	mflr r0
/* 805BBA74  2C 05 00 03 */	cmpwi r5, 3
/* 805BBA78  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BBA7C  41 82 00 60 */	beq lbl_805BBADC
/* 805BBA80  40 80 00 10 */	bge lbl_805BBA90
/* 805BBA84  2C 05 00 02 */	cmpwi r5, 2
/* 805BBA88  40 80 00 34 */	bge lbl_805BBABC
/* 805BBA8C  48 00 00 50 */	b lbl_805BBADC
lbl_805BBA90:
/* 805BBA90  2C 05 00 05 */	cmpwi r5, 5
/* 805BBA94  40 80 00 48 */	bge lbl_805BBADC
/* 805BBA98  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BBA9C  38 80 00 01 */	li r4, 1
/* 805BBAA0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BBAA4  3C 63 00 02 */	addis r3, r3, 2
/* 805BBAA8  A8 03 61 2A */	lha r0, 0x612a(r3)
/* 805BBAAC  7C 00 00 D0 */	neg r0, r0
/* 805BBAB0  7C 03 07 34 */	extsh r3, r0
/* 805BBAB4  4B E5 0D 3D */	bl Matrix_RotateZ
/* 805BBAB8  48 00 00 24 */	b lbl_805BBADC
lbl_805BBABC:
/* 805BBABC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BBAC0  38 80 00 01 */	li r4, 1
/* 805BBAC4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BBAC8  3C 63 00 02 */	addis r3, r3, 2
/* 805BBACC  A8 03 61 28 */	lha r0, 0x6128(r3)
/* 805BBAD0  7C 00 00 D0 */	neg r0, r0
/* 805BBAD4  7C 03 07 34 */	extsh r3, r0
/* 805BBAD8  4B E5 0D 19 */	bl Matrix_RotateZ
lbl_805BBADC:
/* 805BBADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BBAE0  38 60 00 01 */	li r3, 1
/* 805BBAE4  7C 08 03 A6 */	mtlr r0
/* 805BBAE8  38 21 00 10 */	addi r1, r1, 0x10
/* 805BBAEC  4E 80 00 20 */	blr 
