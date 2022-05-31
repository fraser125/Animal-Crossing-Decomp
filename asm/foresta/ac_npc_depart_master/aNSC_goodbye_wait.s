lbl_80551CA8:
/* 80551CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80551CAC  7C 08 02 A6 */	mflr r0
/* 80551CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80551CB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80551CB8  7C 7F 1B 78 */	mr r31, r3
/* 80551CBC  38 60 00 08 */	li r3, 8
/* 80551CC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80551CC4  7C 9E 23 78 */	mr r30, r4
/* 80551CC8  7F E4 FB 78 */	mr r4, r31
/* 80551CCC  4B E4 85 99 */	bl mDemo_Check
/* 80551CD0  2C 03 00 01 */	cmpwi r3, 1
/* 80551CD4  40 82 00 44 */	bne lbl_80551D18
/* 80551CD8  4B E4 87 39 */	bl mDemo_Check_ListenAble
/* 80551CDC  2C 03 00 00 */	cmpwi r3, 0
/* 80551CE0  40 82 00 4C */	bne lbl_80551D2C
/* 80551CE4  A8 9F 09 A6 */	lha r4, 0x9a6(r31)
/* 80551CE8  38 7F 00 DE */	addi r3, r31, 0xde
/* 80551CEC  38 A0 08 00 */	li r5, 0x800
/* 80551CF0  4B E6 8E 55 */	bl chase_angle
/* 80551CF4  2C 03 00 01 */	cmpwi r3, 1
/* 80551CF8  40 82 00 34 */	bne lbl_80551D2C
/* 80551CFC  7F E3 FB 78 */	mr r3, r31
/* 80551D00  4B FF B8 49 */	bl aNSC_Set_ListenAble
/* 80551D04  7F E3 FB 78 */	mr r3, r31
/* 80551D08  7F C4 F3 78 */	mr r4, r30
/* 80551D0C  38 A0 00 44 */	li r5, 0x44
/* 80551D10  48 00 0B 25 */	bl aNSC_setupAction
/* 80551D14  48 00 00 18 */	b lbl_80551D2C
lbl_80551D18:
/* 80551D18  3C 60 80 55 */	lis r3, aNSC_set_talk_info_goodbye_wait@ha /* 0x80551C78@ha */
/* 80551D1C  7F E4 FB 78 */	mr r4, r31
/* 80551D20  38 A3 1C 78 */	addi r5, r3, aNSC_set_talk_info_goodbye_wait@l /* 0x80551C78@l */
/* 80551D24  38 60 00 08 */	li r3, 8
/* 80551D28  4B E4 84 35 */	bl mDemo_Request
lbl_80551D2C:
/* 80551D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80551D30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80551D34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80551D38  7C 08 03 A6 */	mtlr r0
/* 80551D3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80551D40  4E 80 00 20 */	blr 
