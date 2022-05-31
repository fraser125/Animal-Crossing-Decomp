lbl_80573CA8:
/* 80573CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80573CAC  7C 08 02 A6 */	mflr r0
/* 80573CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80573CB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80573CB8  7C 7F 1B 78 */	mr r31, r3
/* 80573CBC  4B E4 B9 ED */	bl func_803BF6A8
/* 80573CC0  4B E4 CF D9 */	bl mMsg_Check_MainNormalContinue
/* 80573CC4  2C 03 00 01 */	cmpwi r3, 1
/* 80573CC8  40 82 00 6C */	bne lbl_80573D34
/* 80573CCC  7F E3 FB 78 */	mr r3, r31
/* 80573CD0  38 80 00 0A */	li r4, 0xa
/* 80573CD4  48 00 00 75 */	bl aNRTC_change_talk_proc
/* 80573CD8  4B E0 F8 69 */	bl func_80383540
/* 80573CDC  4B E0 FE 91 */	bl mChoice_Get_ChoseNum
/* 80573CE0  2C 03 00 02 */	cmpwi r3, 2
/* 80573CE4  41 82 00 3C */	beq lbl_80573D20
/* 80573CE8  40 80 00 14 */	bge lbl_80573CFC
/* 80573CEC  2C 03 00 00 */	cmpwi r3, 0
/* 80573CF0  41 82 00 18 */	beq lbl_80573D08
/* 80573CF4  40 80 00 20 */	bge lbl_80573D14
/* 80573CF8  48 00 00 3C */	b lbl_80573D34
lbl_80573CFC:
/* 80573CFC  2C 03 00 04 */	cmpwi r3, 4
/* 80573D00  40 80 00 34 */	bge lbl_80573D34
/* 80573D04  48 00 00 28 */	b lbl_80573D2C
lbl_80573D08:
/* 80573D08  38 00 00 03 */	li r0, 3
/* 80573D0C  90 1F 09 A8 */	stw r0, 0x9a8(r31)
/* 80573D10  48 00 00 24 */	b lbl_80573D34
lbl_80573D14:
/* 80573D14  38 00 00 02 */	li r0, 2
/* 80573D18  90 1F 09 A8 */	stw r0, 0x9a8(r31)
/* 80573D1C  48 00 00 18 */	b lbl_80573D34
lbl_80573D20:
/* 80573D20  38 00 00 01 */	li r0, 1
/* 80573D24  90 1F 09 A8 */	stw r0, 0x9a8(r31)
/* 80573D28  48 00 00 0C */	b lbl_80573D34
lbl_80573D2C:
/* 80573D2C  38 00 00 04 */	li r0, 4
/* 80573D30  90 1F 09 A8 */	stw r0, 0x9a8(r31)
lbl_80573D34:
/* 80573D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80573D38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80573D3C  7C 08 03 A6 */	mtlr r0
/* 80573D40  38 21 00 10 */	addi r1, r1, 0x10
/* 80573D44  4E 80 00 20 */	blr 
