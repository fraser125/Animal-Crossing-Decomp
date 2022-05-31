lbl_80553F60:
/* 80553F60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80553F64  7C 08 02 A6 */	mflr r0
/* 80553F68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80553F6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80553F70  7C 9F 23 78 */	mr r31, r4
/* 80553F74  93 C1 00 08 */	stw r30, 8(r1)
/* 80553F78  7C 7E 1B 78 */	mr r30, r3
/* 80553F7C  4B FF F2 39 */	bl aNGD_make_keitai
/* 80553F80  3C 80 80 6A */	lis r4, anmSpd@ha /* 0x806A62F0@ha */
/* 80553F84  54 60 10 3A */	slwi r0, r3, 2
/* 80553F88  38 84 62 F0 */	addi r4, r4, anmSpd@l /* 0x806A62F0@l */
/* 80553F8C  2C 03 00 00 */	cmpwi r3, 0
/* 80553F90  7C 04 04 2E */	lfsx f0, r4, r0
/* 80553F94  D0 1E 01 B4 */	stfs f0, 0x1b4(r30)
/* 80553F98  41 82 00 40 */	beq lbl_80553FD8
/* 80553F9C  7F C4 F3 78 */	mr r4, r30
/* 80553FA0  38 60 00 08 */	li r3, 8
/* 80553FA4  4B E4 62 C1 */	bl mDemo_Check
/* 80553FA8  2C 03 00 01 */	cmpwi r3, 1
/* 80553FAC  40 82 00 18 */	bne lbl_80553FC4
/* 80553FB0  4B E4 64 61 */	bl mDemo_Check_ListenAble
/* 80553FB4  2C 03 00 00 */	cmpwi r3, 0
/* 80553FB8  40 82 00 20 */	bne lbl_80553FD8
/* 80553FBC  4B E4 63 F9 */	bl mDemo_Set_ListenAble
/* 80553FC0  48 00 00 18 */	b lbl_80553FD8
lbl_80553FC4:
/* 80553FC4  3C 60 80 55 */	lis r3, aNGD_set_talk_info_keitai_on@ha /* 0x80553F38@ha */
/* 80553FC8  7F C4 F3 78 */	mr r4, r30
/* 80553FCC  38 A3 3F 38 */	addi r5, r3, aNGD_set_talk_info_keitai_on@l /* 0x80553F38@l */
/* 80553FD0  38 60 00 08 */	li r3, 8
/* 80553FD4  4B E4 61 89 */	bl mDemo_Request
lbl_80553FD8:
/* 80553FD8  80 1E 01 98 */	lwz r0, 0x198(r30)
/* 80553FDC  2C 00 00 01 */	cmpwi r0, 1
/* 80553FE0  40 82 00 14 */	bne lbl_80553FF4
/* 80553FE4  7F C3 F3 78 */	mr r3, r30
/* 80553FE8  7F E4 FB 78 */	mr r4, r31
/* 80553FEC  38 A0 00 19 */	li r5, 0x19
/* 80553FF0  48 00 09 19 */	bl aNGD_setupAction
lbl_80553FF4:
/* 80553FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80553FF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80553FFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80554000  7C 08 03 A6 */	mtlr r0
/* 80554004  38 21 00 10 */	addi r1, r1, 0x10
/* 80554008  4E 80 00 20 */	blr 
