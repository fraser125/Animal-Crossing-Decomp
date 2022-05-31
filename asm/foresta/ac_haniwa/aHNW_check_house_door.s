lbl_80427A58:
/* 80427A58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80427A5C  7C 08 02 A6 */	mflr r0
/* 80427A60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80427A64  39 61 00 20 */	addi r11, r1, 0x20
/* 80427A68  4B C7 34 6D */	bl func_8009AED4
/* 80427A6C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80427A70  7C 7D 1B 78 */	mr r29, r3
/* 80427A74  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80427A78  7C 9E 23 78 */	mr r30, r4
/* 80427A7C  3C 65 00 03 */	addis r3, r5, 3
/* 80427A80  3B E0 00 00 */	li r31, 0
/* 80427A84  88 03 88 68 */	lbz r0, -0x7798(r3)
/* 80427A88  28 00 00 01 */	cmplwi r0, 1
/* 80427A8C  40 82 00 6C */	bne lbl_80427AF8
/* 80427A90  4B F7 09 69 */	bl mDemo_Get_talk_actor
/* 80427A94  28 03 00 00 */	cmplwi r3, 0
/* 80427A98  40 82 00 58 */	bne lbl_80427AF0
/* 80427A9C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80427AA0  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 80427AA4  4B F6 E4 6D */	bl chkTrigger
/* 80427AA8  2C 03 00 00 */	cmpwi r3, 0
/* 80427AAC  41 82 00 44 */	beq lbl_80427AF0
/* 80427AB0  7F C3 F3 78 */	mr r3, r30
/* 80427AB4  4B FB 1B 8D */	bl get_player_actor_withoutCheck
/* 80427AB8  A8 63 00 DE */	lha r3, 0xde(r3)
/* 80427ABC  A8 1D 00 B6 */	lha r0, 0xb6(r29)
/* 80427AC0  7C 63 00 50 */	subf r3, r3, r0
/* 80427AC4  3C 63 00 01 */	addis r3, r3, 1
/* 80427AC8  38 03 80 00 */	addi r0, r3, -32768
/* 80427ACC  7C 03 07 34 */	extsh r3, r0
/* 80427AD0  4B F7 29 55 */	bl mDemo_Check_DiffAngle_forTalk
/* 80427AD4  2C 03 00 01 */	cmpwi r3, 1
/* 80427AD8  40 82 00 18 */	bne lbl_80427AF0
/* 80427ADC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80427AE0  38 00 00 04 */	li r0, 4
/* 80427AE4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80427AE8  3C 63 00 03 */	addis r3, r3, 3
/* 80427AEC  98 03 88 69 */	stb r0, -0x7797(r3)
lbl_80427AF0:
/* 80427AF0  3B E0 00 01 */	li r31, 1
/* 80427AF4  48 00 00 48 */	b lbl_80427B3C
lbl_80427AF8:
/* 80427AF8  3C 65 00 02 */	addis r3, r5, 2
/* 80427AFC  80 63 60 AC */	lwz r3, 0x60ac(r3)
/* 80427B00  28 03 00 00 */	cmplwi r3, 0
/* 80427B04  41 82 00 38 */	beq lbl_80427B3C
/* 80427B08  83 C3 00 00 */	lwz r30, 0(r3)
/* 80427B0C  28 1E 00 00 */	cmplwi r30, 0
/* 80427B10  41 82 00 2C */	beq lbl_80427B3C
/* 80427B14  80 03 00 04 */	lwz r0, 4(r3)
/* 80427B18  2C 00 00 01 */	cmpwi r0, 1
/* 80427B1C  40 82 00 20 */	bne lbl_80427B3C
/* 80427B20  4B F7 32 0D */	bl mEv_CheckFirstIntro
/* 80427B24  2C 03 00 00 */	cmpwi r3, 0
/* 80427B28  41 82 00 14 */	beq lbl_80427B3C
/* 80427B2C  80 1E 01 90 */	lwz r0, 0x190(r30)
/* 80427B30  2C 00 00 00 */	cmpwi r0, 0
/* 80427B34  41 82 00 08 */	beq lbl_80427B3C
/* 80427B38  3B E0 00 01 */	li r31, 1
lbl_80427B3C:
/* 80427B3C  7F E3 FB 78 */	mr r3, r31
/* 80427B40  39 61 00 20 */	addi r11, r1, 0x20
/* 80427B44  4B C7 33 DD */	bl func_8009AF20
/* 80427B48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80427B4C  7C 08 03 A6 */	mtlr r0
/* 80427B50  38 21 00 20 */	addi r1, r1, 0x20
/* 80427B54  4E 80 00 20 */	blr 
