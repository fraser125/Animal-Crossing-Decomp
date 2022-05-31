lbl_80555E08:
/* 80555E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80555E0C  7C 08 02 A6 */	mflr r0
/* 80555E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80555E14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80555E18  7C 9F 23 78 */	mr r31, r4
/* 80555E1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80555E20  7C 7E 1B 78 */	mr r30, r3
/* 80555E24  4B FF F2 A1 */	bl aNG2_make_keitai
/* 80555E28  3C 80 80 6A */	lis r4, anmSpd@ha /* 0x806A65F0@ha */
/* 80555E2C  54 60 10 3A */	slwi r0, r3, 2
/* 80555E30  38 84 65 F0 */	addi r4, r4, anmSpd@l /* 0x806A65F0@l */
/* 80555E34  2C 03 00 00 */	cmpwi r3, 0
/* 80555E38  7C 04 04 2E */	lfsx f0, r4, r0
/* 80555E3C  D0 1E 01 B4 */	stfs f0, 0x1b4(r30)
/* 80555E40  41 82 00 40 */	beq lbl_80555E80
/* 80555E44  7F C4 F3 78 */	mr r4, r30
/* 80555E48  38 60 00 08 */	li r3, 8
/* 80555E4C  4B E4 44 19 */	bl mDemo_Check
/* 80555E50  2C 03 00 01 */	cmpwi r3, 1
/* 80555E54  40 82 00 18 */	bne lbl_80555E6C
/* 80555E58  4B E4 45 B9 */	bl mDemo_Check_ListenAble
/* 80555E5C  2C 03 00 00 */	cmpwi r3, 0
/* 80555E60  40 82 00 20 */	bne lbl_80555E80
/* 80555E64  4B E4 45 51 */	bl mDemo_Set_ListenAble
/* 80555E68  48 00 00 18 */	b lbl_80555E80
lbl_80555E6C:
/* 80555E6C  3C 60 80 55 */	lis r3, aNG2_set_talk_info_keitai_on@ha /* 0x80555DE0@ha */
/* 80555E70  7F C4 F3 78 */	mr r4, r30
/* 80555E74  38 A3 5D E0 */	addi r5, r3, aNG2_set_talk_info_keitai_on@l /* 0x80555DE0@l */
/* 80555E78  38 60 00 08 */	li r3, 8
/* 80555E7C  4B E4 42 E1 */	bl mDemo_Request
lbl_80555E80:
/* 80555E80  80 1E 01 98 */	lwz r0, 0x198(r30)
/* 80555E84  2C 00 00 01 */	cmpwi r0, 1
/* 80555E88  40 82 00 14 */	bne lbl_80555E9C
/* 80555E8C  7F C3 F3 78 */	mr r3, r30
/* 80555E90  7F E4 FB 78 */	mr r4, r31
/* 80555E94  38 A0 00 14 */	li r5, 0x14
/* 80555E98  48 00 06 85 */	bl aNG2_setupAction
lbl_80555E9C:
/* 80555E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80555EA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80555EA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80555EA8  7C 08 03 A6 */	mtlr r0
/* 80555EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80555EB0  4E 80 00 20 */	blr 
