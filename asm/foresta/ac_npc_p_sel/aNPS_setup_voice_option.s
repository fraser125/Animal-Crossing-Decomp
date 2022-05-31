lbl_80566960:
/* 80566960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80566964  7C 08 02 A6 */	mflr r0
/* 80566968  38 60 00 04 */	li r3, 4
/* 8056696C  38 80 00 09 */	li r4, 9
/* 80566970  90 01 00 14 */	stw r0, 0x14(r1)
/* 80566974  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80566978  4B E3 1B 05 */	bl mDemo_Get_OrderValue
/* 8056697C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80566980  38 60 00 00 */	li r3, 0
/* 80566984  41 82 00 90 */	beq lbl_80566A14
/* 80566988  3B E0 00 00 */	li r31, 0
/* 8056698C  4B E1 CB B5 */	bl func_80383540
/* 80566990  4B E1 D1 DD */	bl mChoice_Get_ChoseNum
/* 80566994  2C 03 00 01 */	cmpwi r3, 1
/* 80566998  41 82 00 28 */	beq lbl_805669C0
/* 8056699C  40 80 00 10 */	bge lbl_805669AC
/* 805669A0  2C 03 00 00 */	cmpwi r3, 0
/* 805669A4  40 80 00 14 */	bge lbl_805669B8
/* 805669A8  48 00 00 24 */	b lbl_805669CC
lbl_805669AC:
/* 805669AC  2C 03 00 03 */	cmpwi r3, 3
/* 805669B0  40 80 00 1C */	bge lbl_805669CC
/* 805669B4  48 00 00 14 */	b lbl_805669C8
lbl_805669B8:
/* 805669B8  3B E0 00 00 */	li r31, 0
/* 805669BC  48 00 00 10 */	b lbl_805669CC
lbl_805669C0:
/* 805669C0  3B E0 00 01 */	li r31, 1
/* 805669C4  48 00 00 08 */	b lbl_805669CC
lbl_805669C8:
/* 805669C8  3B E0 00 02 */	li r31, 2
lbl_805669CC:
/* 805669CC  3C 60 80 6C */	lis r3, voice_mode@ha /* 0x806BE360@ha */
/* 805669D0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805669D4  38 A3 E3 60 */	addi r5, r3, voice_mode@l /* 0x806BE360@l */
/* 805669D8  3C 60 80 6C */	lis r3, aNPS_voice_mode@ha /* 0x806BE318@ha */
/* 805669DC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805669E0  7C 05 F8 AE */	lbzx r0, r5, r31
/* 805669E4  3C 84 00 02 */	addis r4, r4, 2
/* 805669E8  38 63 E3 18 */	addi r3, r3, aNPS_voice_mode@l /* 0x806BE318@l */
/* 805669EC  98 04 0F 11 */	stb r0, 0xf11(r4)
/* 805669F0  7C 63 F8 AE */	lbzx r3, r3, r31
/* 805669F4  48 0C 76 5D */	bl sAdo_SetVoiceMode
/* 805669F8  4B E5 8C B1 */	bl func_803BF6A8
/* 805669FC  4B E5 BA B1 */	bl mMsg_sound_spec_change_voice_force
/* 80566A00  38 60 00 04 */	li r3, 4
/* 80566A04  38 80 00 09 */	li r4, 9
/* 80566A08  38 A0 00 00 */	li r5, 0
/* 80566A0C  4B E3 1A 2D */	bl mDemo_Set_OrderValue
/* 80566A10  38 60 00 01 */	li r3, 1
lbl_80566A14:
/* 80566A14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80566A18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80566A1C  7C 08 03 A6 */	mtlr r0
/* 80566A20  38 21 00 10 */	addi r1, r1, 0x10
/* 80566A24  4E 80 00 20 */	blr 
