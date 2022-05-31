lbl_80573A58:
/* 80573A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80573A5C  7C 08 02 A6 */	mflr r0
/* 80573A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80573A64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80573A68  7C 7F 1B 78 */	mr r31, r3
/* 80573A6C  4B E4 BC 3D */	bl func_803BF6A8
/* 80573A70  4B E4 D2 29 */	bl mMsg_Check_MainNormalContinue
/* 80573A74  2C 03 00 01 */	cmpwi r3, 1
/* 80573A78  40 82 00 78 */	bne lbl_80573AF0
/* 80573A7C  7F E3 FB 78 */	mr r3, r31
/* 80573A80  38 80 00 0A */	li r4, 0xa
/* 80573A84  48 00 02 C5 */	bl aNRTC_change_talk_proc
/* 80573A88  4B E0 FA B9 */	bl func_80383540
/* 80573A8C  4B E1 00 E1 */	bl mChoice_Get_ChoseNum
/* 80573A90  2C 03 00 02 */	cmpwi r3, 2
/* 80573A94  41 82 00 3C */	beq lbl_80573AD0
/* 80573A98  40 80 00 14 */	bge lbl_80573AAC
/* 80573A9C  2C 03 00 00 */	cmpwi r3, 0
/* 80573AA0  41 82 00 18 */	beq lbl_80573AB8
/* 80573AA4  40 80 00 20 */	bge lbl_80573AC4
/* 80573AA8  48 00 00 48 */	b lbl_80573AF0
lbl_80573AAC:
/* 80573AAC  2C 03 00 04 */	cmpwi r3, 4
/* 80573AB0  40 80 00 40 */	bge lbl_80573AF0
/* 80573AB4  48 00 00 28 */	b lbl_80573ADC
lbl_80573AB8:
/* 80573AB8  38 00 00 03 */	li r0, 3
/* 80573ABC  90 1F 09 A8 */	stw r0, 0x9a8(r31)
/* 80573AC0  48 00 00 30 */	b lbl_80573AF0
lbl_80573AC4:
/* 80573AC4  38 00 00 02 */	li r0, 2
/* 80573AC8  90 1F 09 A8 */	stw r0, 0x9a8(r31)
/* 80573ACC  48 00 00 24 */	b lbl_80573AF0
lbl_80573AD0:
/* 80573AD0  38 00 00 01 */	li r0, 1
/* 80573AD4  90 1F 09 A8 */	stw r0, 0x9a8(r31)
/* 80573AD8  48 00 00 18 */	b lbl_80573AF0
lbl_80573ADC:
/* 80573ADC  38 00 00 03 */	li r0, 3
/* 80573AE0  7F E3 FB 78 */	mr r3, r31
/* 80573AE4  90 1F 09 A8 */	stw r0, 0x9a8(r31)
/* 80573AE8  38 80 00 09 */	li r4, 9
/* 80573AEC  48 00 02 5D */	bl aNRTC_change_talk_proc
lbl_80573AF0:
/* 80573AF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80573AF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80573AF8  7C 08 03 A6 */	mtlr r0
/* 80573AFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80573B00  4E 80 00 20 */	blr 
