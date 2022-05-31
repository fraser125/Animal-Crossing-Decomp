lbl_805679FC:
/* 805679FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80567A00  7C 08 02 A6 */	mflr r0
/* 80567A04  38 60 00 04 */	li r3, 4
/* 80567A08  38 80 00 09 */	li r4, 9
/* 80567A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80567A10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80567A14  4B E3 0A 69 */	bl mDemo_Get_OrderValue
/* 80567A18  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80567A1C  38 60 00 00 */	li r3, 0
/* 80567A20  41 82 00 90 */	beq lbl_80567AB0
/* 80567A24  3B E0 00 00 */	li r31, 0
/* 80567A28  4B E1 BB 19 */	bl func_80383540
/* 80567A2C  4B E1 C1 41 */	bl mChoice_Get_ChoseNum
/* 80567A30  2C 03 00 01 */	cmpwi r3, 1
/* 80567A34  41 82 00 28 */	beq lbl_80567A5C
/* 80567A38  40 80 00 10 */	bge lbl_80567A48
/* 80567A3C  2C 03 00 00 */	cmpwi r3, 0
/* 80567A40  40 80 00 14 */	bge lbl_80567A54
/* 80567A44  48 00 00 24 */	b lbl_80567A68
lbl_80567A48:
/* 80567A48  2C 03 00 03 */	cmpwi r3, 3
/* 80567A4C  40 80 00 1C */	bge lbl_80567A68
/* 80567A50  48 00 00 14 */	b lbl_80567A64
lbl_80567A54:
/* 80567A54  3B E0 00 00 */	li r31, 0
/* 80567A58  48 00 00 10 */	b lbl_80567A68
lbl_80567A5C:
/* 80567A5C  3B E0 00 01 */	li r31, 1
/* 80567A60  48 00 00 08 */	b lbl_80567A68
lbl_80567A64:
/* 80567A64  3B E0 00 02 */	li r31, 2
lbl_80567A68:
/* 80567A68  3C 60 80 6C */	lis r3, voice_mode@ha /* 0x806BE40C@ha */
/* 80567A6C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80567A70  38 A3 E4 0C */	addi r5, r3, voice_mode@l /* 0x806BE40C@l */
/* 80567A74  3C 60 80 6C */	lis r3, aNPS2_voice_mode@ha /* 0x806BE3A8@ha */
/* 80567A78  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80567A7C  7C 05 F8 AE */	lbzx r0, r5, r31
/* 80567A80  3C 84 00 02 */	addis r4, r4, 2
/* 80567A84  38 63 E3 A8 */	addi r3, r3, aNPS2_voice_mode@l /* 0x806BE3A8@l */
/* 80567A88  98 04 0F 11 */	stb r0, 0xf11(r4)
/* 80567A8C  7C 63 F8 AE */	lbzx r3, r3, r31
/* 80567A90  48 0C 65 C1 */	bl sAdo_SetVoiceMode
/* 80567A94  4B E5 7C 15 */	bl func_803BF6A8
/* 80567A98  4B E5 AA 15 */	bl mMsg_sound_spec_change_voice_force
/* 80567A9C  38 60 00 04 */	li r3, 4
/* 80567AA0  38 80 00 09 */	li r4, 9
/* 80567AA4  38 A0 00 00 */	li r5, 0
/* 80567AA8  4B E3 09 91 */	bl mDemo_Set_OrderValue
/* 80567AAC  38 60 00 01 */	li r3, 1
lbl_80567AB0:
/* 80567AB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80567AB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80567AB8  7C 08 03 A6 */	mtlr r0
/* 80567ABC  38 21 00 10 */	addi r1, r1, 0x10
/* 80567AC0  4E 80 00 20 */	blr 
