lbl_80427FB4:
/* 80427FB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80427FB8  7C 08 02 A6 */	mflr r0
/* 80427FBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80427FC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80427FC4  4B C7 2F 11 */	bl func_8009AED4
/* 80427FC8  7C 7D 1B 78 */	mr r29, r3
/* 80427FCC  7C 9E 23 78 */	mr r30, r4
/* 80427FD0  4B F9 76 D9 */	bl func_803BF6A8
/* 80427FD4  7C 60 1B 78 */	mr r0, r3
/* 80427FD8  38 60 00 04 */	li r3, 4
/* 80427FDC  7C 1F 03 78 */	mr r31, r0
/* 80427FE0  38 80 00 09 */	li r4, 9
/* 80427FE4  4B F7 04 99 */	bl mDemo_Get_OrderValue
/* 80427FE8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80427FEC  41 82 00 94 */	beq lbl_80428080
/* 80427FF0  7F E3 FB 78 */	mr r3, r31
/* 80427FF4  4B F9 8C A5 */	bl mMsg_Check_MainNormalContinue
/* 80427FF8  2C 03 00 01 */	cmpwi r3, 1
/* 80427FFC  40 82 00 84 */	bne lbl_80428080
/* 80428000  3B E0 FF FF */	li r31, -1
/* 80428004  4B F5 B5 3D */	bl func_80383540
/* 80428008  4B F5 BB 65 */	bl mChoice_Get_ChoseNum
/* 8042800C  2C 03 00 02 */	cmpwi r3, 2
/* 80428010  41 82 00 3C */	beq lbl_8042804C
/* 80428014  40 80 00 14 */	bge lbl_80428028
/* 80428018  2C 03 00 00 */	cmpwi r3, 0
/* 8042801C  41 82 00 18 */	beq lbl_80428034
/* 80428020  40 80 00 1C */	bge lbl_8042803C
/* 80428024  48 00 00 34 */	b lbl_80428058
lbl_80428028:
/* 80428028  2C 03 00 04 */	cmpwi r3, 4
/* 8042802C  40 80 00 2C */	bge lbl_80428058
/* 80428030  48 00 00 24 */	b lbl_80428054
lbl_80428034:
/* 80428034  3B E0 00 0B */	li r31, 0xb
/* 80428038  48 00 00 20 */	b lbl_80428058
lbl_8042803C:
/* 8042803C  38 00 00 02 */	li r0, 2
/* 80428040  3B E0 00 06 */	li r31, 6
/* 80428044  98 1D 02 82 */	stb r0, 0x282(r29)
/* 80428048  48 00 00 10 */	b lbl_80428058
lbl_8042804C:
/* 8042804C  3B E0 00 03 */	li r31, 3
/* 80428050  48 00 00 08 */	b lbl_80428058
lbl_80428054:
/* 80428054  3B E0 00 05 */	li r31, 5
lbl_80428058:
/* 80428058  2C 1F FF FF */	cmpwi r31, -1
/* 8042805C  41 82 00 24 */	beq lbl_80428080
/* 80428060  38 60 00 04 */	li r3, 4
/* 80428064  38 80 00 09 */	li r4, 9
/* 80428068  38 A0 00 00 */	li r5, 0
/* 8042806C  4B F7 03 CD */	bl mDemo_Set_OrderValue
/* 80428070  7F A3 EB 78 */	mr r3, r29
/* 80428074  7F C4 F3 78 */	mr r4, r30
/* 80428078  7F E5 FB 78 */	mr r5, r31
/* 8042807C  48 00 09 D9 */	bl aHNW_setupAction
lbl_80428080:
/* 80428080  39 61 00 20 */	addi r11, r1, 0x20
/* 80428084  4B C7 2E 9D */	bl func_8009AF20
/* 80428088  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042808C  7C 08 03 A6 */	mtlr r0
/* 80428090  38 21 00 20 */	addi r1, r1, 0x20
/* 80428094  4E 80 00 20 */	blr 
