lbl_80398E74:
/* 80398E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80398E78  7C 08 02 A6 */	mflr r0
/* 80398E7C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80398E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80398E84  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80398E88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80398E8C  93 C1 00 08 */	stw r30, 8(r1)
/* 80398E90  80 63 00 00 */	lwz r3, 0(r3)
/* 80398E94  48 04 07 AD */	bl get_player_actor_withoutCheck
/* 80398E98  3C 80 80 64 */	lis r4, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80398E9C  7C 7F 1B 78 */	mr r31, r3
/* 80398EA0  38 64 1C BC */	addi r3, r4, data_80641CBC@l /* 0x80641CBC@l */
/* 80398EA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80398EA8  80 03 03 10 */	lwz r0, 0x310(r3)
/* 80398EAC  2C 00 00 00 */	cmpwi r0, 0
/* 80398EB0  41 82 00 50 */	beq lbl_80398F00
/* 80398EB4  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80398EB8  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80398EBC  80 63 00 00 */	lwz r3, 0(r3)
/* 80398EC0  48 04 07 B1 */	bl mPlib_get_player_actor_main_index
/* 80398EC4  2C 03 00 41 */	cmpwi r3, 0x41
/* 80398EC8  41 82 00 3C */	beq lbl_80398F04
/* 80398ECC  3C 80 80 64 */	lis r4, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80398ED0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80398ED4  80 A4 1C BC */	lwz r5, data_80641CBC@l(r4)  /* 0x80641CBC@l */
/* 80398ED8  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 80398EDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80398EE0  38 C0 00 00 */	li r6, 0
/* 80398EE4  80 85 00 E0 */	lwz r4, 0xe0(r5)
/* 80398EE8  80 A5 03 04 */	lwz r5, 0x304(r5)
/* 80398EEC  48 04 14 11 */	bl mPlib_request_main_talk_type1
/* 80398EF0  2C 03 00 00 */	cmpwi r3, 0
/* 80398EF4  40 82 00 10 */	bne lbl_80398F04
/* 80398EF8  38 60 00 00 */	li r3, 0
/* 80398EFC  48 00 01 1C */	b lbl_80399018
lbl_80398F00:
/* 80398F00  48 00 14 9D */	bl mDemo_Set_SpeakerAble
lbl_80398F04:
/* 80398F04  48 00 14 F9 */	bl mDemo_Check_SpeakerAble
/* 80398F08  2C 03 00 00 */	cmpwi r3, 0
/* 80398F0C  41 82 01 08 */	beq lbl_80399014
/* 80398F10  48 00 15 01 */	bl mDemo_Check_ListenAble
/* 80398F14  2C 03 00 00 */	cmpwi r3, 0
/* 80398F18  41 82 00 FC */	beq lbl_80399014
/* 80398F1C  48 02 67 8D */	bl func_803BF6A8
/* 80398F20  7C 7E 1B 78 */	mr r30, r3
/* 80398F24  4B FF F5 A5 */	bl mDemo_Init_OrderValue
/* 80398F28  7F C3 F3 78 */	mr r3, r30
/* 80398F2C  38 80 00 01 */	li r4, 1
/* 80398F30  48 02 67 FD */	bl mMsg_Check_main_index
/* 80398F34  2C 03 00 00 */	cmpwi r3, 0
/* 80398F38  40 82 00 DC */	bne lbl_80399014
/* 80398F3C  3C 80 80 64 */	lis r4, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80398F40  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80398F44  81 24 1C BC */	lwz r9, data_80641CBC@l(r4)  /* 0x80641CBC@l */
/* 80398F48  38 00 00 FF */	li r0, 0xff
/* 80398F4C  64 64 40 00 */	oris r4, r3, 0x4000
/* 80398F50  7F C3 F3 78 */	mr r3, r30
/* 80398F54  80 E9 03 00 */	lwz r7, 0x300(r9)
/* 80398F58  39 00 00 05 */	li r8, 5
/* 80398F5C  38 C9 03 1C */	addi r6, r9, 0x31c
/* 80398F60  90 9F 00 20 */	stw r4, 0x20(r31)
/* 80398F64  80 A9 00 E0 */	lwz r5, 0xe0(r9)
/* 80398F68  80 85 00 20 */	lwz r4, 0x20(r5)
/* 80398F6C  64 84 40 00 */	oris r4, r4, 0x4000
/* 80398F70  90 85 00 20 */	stw r4, 0x20(r5)
/* 80398F74  80 89 00 E0 */	lwz r4, 0xe0(r9)
/* 80398F78  88 84 00 D6 */	lbz r4, 0xd6(r4)
/* 80398F7C  98 89 03 20 */	stb r4, 0x320(r9)
/* 80398F80  80 89 00 E0 */	lwz r4, 0xe0(r9)
/* 80398F84  98 04 00 D6 */	stb r0, 0xd6(r4)
/* 80398F88  80 89 00 E0 */	lwz r4, 0xe0(r9)
/* 80398F8C  80 A9 03 0C */	lwz r5, 0x30c(r9)
/* 80398F90  48 02 69 91 */	bl mMsg_request_main_appear
/* 80398F94  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80398F98  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 80398F9C  80 63 00 00 */	lwz r3, 0(r3)
/* 80398FA0  80 03 03 08 */	lwz r0, 0x308(r3)
/* 80398FA4  2C 00 00 00 */	cmpwi r0, 0
/* 80398FA8  41 82 00 20 */	beq lbl_80398FC8
/* 80398FAC  80 03 02 F8 */	lwz r0, 0x2f8(r3)
/* 80398FB0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008004@ha */
/* 80398FB4  38 64 80 04 */	addi r3, r4, 0x8004 /* 0x00008004@l */
/* 80398FB8  2C 00 00 03 */	cmpwi r0, 3
/* 80398FBC  40 82 00 08 */	bne lbl_80398FC4
/* 80398FC0  38 64 80 14 */	addi r3, r4, -32748
lbl_80398FC4:
/* 80398FC4  48 29 4D 41 */	bl sAdo_SysTrgStart
lbl_80398FC8:
/* 80398FC8  48 00 BD 05 */	bl mFI_GetFieldId
/* 80398FCC  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 80398FD0  2C 00 50 00 */	cmpwi r0, 0x5000
/* 80398FD4  41 82 00 38 */	beq lbl_8039900C
/* 80398FD8  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80398FDC  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 80398FE0  80 63 00 00 */	lwz r3, 0(r3)
/* 80398FE4  80 03 03 00 */	lwz r0, 0x300(r3)
/* 80398FE8  2C 00 07 DD */	cmpwi r0, 0x7dd
/* 80398FEC  41 82 00 20 */	beq lbl_8039900C
/* 80398FF0  2C 00 09 49 */	cmpwi r0, 0x949
/* 80398FF4  41 82 00 18 */	beq lbl_8039900C
/* 80398FF8  2C 00 09 65 */	cmpwi r0, 0x965
/* 80398FFC  41 82 00 10 */	beq lbl_8039900C
/* 80399000  2C 00 07 DE */	cmpwi r0, 0x7de
/* 80399004  41 82 00 08 */	beq lbl_8039900C
/* 80399008  4B FE 37 35 */	bl mBGMPsComp_volume_talk_start
lbl_8039900C:
/* 8039900C  38 60 00 01 */	li r3, 1
/* 80399010  48 00 00 08 */	b lbl_80399018
lbl_80399014:
/* 80399014  38 60 00 00 */	li r3, 0
lbl_80399018:
/* 80399018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039901C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80399020  83 C1 00 08 */	lwz r30, 8(r1)
/* 80399024  7C 08 03 A6 */	mtlr r0
/* 80399028  38 21 00 10 */	addi r1, r1, 0x10
/* 8039902C  4E 80 00 20 */	blr 
