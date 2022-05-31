lbl_80587D2C:
/* 80587D2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80587D30  7C 08 02 A6 */	mflr r0
/* 80587D34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80587D38  39 61 00 20 */	addi r11, r1, 0x20
/* 80587D3C  4B B1 31 95 */	bl func_8009AED0
/* 80587D40  7C 7D 1B 78 */	mr r29, r3
/* 80587D44  4B E4 A1 BD */	bl mNpc_GetNpcLooks
/* 80587D48  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80587D4C  3C A0 80 58 */	lis r5, aPST_present_send_start_wait_talk_proc@ha /* 0x80587B60@ha */
/* 80587D50  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80587D54  7C 7C 1B 78 */	mr r28, r3
/* 80587D58  3C 84 00 02 */	addis r4, r4, 2
/* 80587D5C  38 05 7B 60 */	addi r0, r5, aPST_present_send_start_wait_talk_proc@l /* 0x80587B60@l */
/* 80587D60  80 64 60 B0 */	lwz r3, 0x60b0(r4)
/* 80587D64  7C 1E 03 78 */	mr r30, r0
/* 80587D68  3B E0 31 9F */	li r31, 0x319f
/* 80587D6C  28 03 00 00 */	cmplwi r3, 0
/* 80587D70  41 82 01 50 */	beq lbl_80587EC0
/* 80587D74  80 03 00 04 */	lwz r0, 4(r3)
/* 80587D78  2C 00 00 03 */	cmpwi r0, 3
/* 80587D7C  40 82 01 44 */	bne lbl_80587EC0
/* 80587D80  80 63 00 00 */	lwz r3, 0(r3)
/* 80587D84  28 03 00 00 */	cmplwi r3, 0
/* 80587D88  41 82 01 38 */	beq lbl_80587EC0
/* 80587D8C  80 03 01 84 */	lwz r0, 0x184(r3)
/* 80587D90  28 00 00 06 */	cmplwi r0, 6
/* 80587D94  41 81 01 2C */	bgt lbl_80587EC0
/* 80587D98  3C 60 80 6C */	lis r3, lit_578@ha /* 0x806C1CEC@ha */
/* 80587D9C  54 00 10 3A */	slwi r0, r0, 2
/* 80587DA0  38 63 1C EC */	addi r3, r3, lit_578@l /* 0x806C1CEC@l */
/* 80587DA4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80587DA8  7C 09 03 A6 */	mtctr r0
/* 80587DAC  4E 80 04 20 */	bctr 
lbl_80587DB0:
/* 80587DB0  4B AD 4F 45 */	bl fqrand
/* 80587DB4  3C 60 80 65 */	lis r3, data_80649AF4@ha /* 0x80649AF4@ha */
/* 80587DB8  C0 03 9A F4 */	lfs f0, data_80649AF4@l(r3)  /* 0x80649AF4@l */
/* 80587DBC  1C 1C 00 06 */	mulli r0, r28, 6
/* 80587DC0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80587DC4  FC 00 00 1E */	fctiwz f0, f0
/* 80587DC8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80587DCC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80587DD0  7F E0 1A 14 */	add r31, r0, r3
/* 80587DD4  3B FF 31 9F */	addi r31, r31, 0x319f
/* 80587DD8  48 00 00 E8 */	b lbl_80587EC0
lbl_80587DDC:
/* 80587DDC  38 60 00 01 */	li r3, 1
/* 80587DE0  4B FF FD 4D */	bl aPST_check_first_present
/* 80587DE4  2C 03 00 01 */	cmpwi r3, 1
/* 80587DE8  40 82 00 0C */	bne lbl_80587DF4
/* 80587DEC  3B E0 31 C3 */	li r31, 0x31c3
/* 80587DF0  48 00 00 D0 */	b lbl_80587EC0
lbl_80587DF4:
/* 80587DF4  3B E0 31 C7 */	li r31, 0x31c7
/* 80587DF8  48 00 00 C8 */	b lbl_80587EC0
lbl_80587DFC:
/* 80587DFC  38 60 00 02 */	li r3, 2
/* 80587E00  4B FF FD 2D */	bl aPST_check_first_present
/* 80587E04  2C 03 00 01 */	cmpwi r3, 1
/* 80587E08  40 82 00 0C */	bne lbl_80587E14
/* 80587E0C  3B E0 31 C5 */	li r31, 0x31c5
/* 80587E10  48 00 00 B0 */	b lbl_80587EC0
lbl_80587E14:
/* 80587E14  3B E0 31 C9 */	li r31, 0x31c9
/* 80587E18  48 00 00 A8 */	b lbl_80587EC0
lbl_80587E1C:
/* 80587E1C  80 64 61 3C */	lwz r3, 0x613c(r4)
/* 80587E20  38 80 00 00 */	li r4, 0
/* 80587E24  4B E5 89 05 */	bl mPr_GetPossessionItemIdx
/* 80587E28  2C 03 FF FF */	cmpwi r3, -1
/* 80587E2C  40 82 00 18 */	bne lbl_80587E44
/* 80587E30  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 80587E34  3B E0 33 FF */	li r31, 0x33ff
/* 80587E38  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 80587E3C  7C 1E 03 78 */	mr r30, r0
/* 80587E40  48 00 00 80 */	b lbl_80587EC0
lbl_80587E44:
/* 80587E44  3B E0 33 FD */	li r31, 0x33fd
/* 80587E48  38 60 FF FF */	li r3, -1
/* 80587E4C  4B E6 5A BD */	bl mSC_LightHouse_Event_Clear
/* 80587E50  48 00 00 70 */	b lbl_80587EC0
lbl_80587E54:
/* 80587E54  80 64 61 3C */	lwz r3, 0x613c(r4)
/* 80587E58  38 80 00 00 */	li r4, 0
/* 80587E5C  4B E5 88 CD */	bl mPr_GetPossessionItemIdx
/* 80587E60  2C 03 FF FF */	cmpwi r3, -1
/* 80587E64  40 82 00 18 */	bne lbl_80587E7C
/* 80587E68  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 80587E6C  3B E0 34 16 */	li r31, 0x3416
/* 80587E70  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 80587E74  7C 1E 03 78 */	mr r30, r0
/* 80587E78  48 00 00 48 */	b lbl_80587EC0
lbl_80587E7C:
/* 80587E7C  3B E0 34 14 */	li r31, 0x3414
/* 80587E80  38 60 FF FF */	li r3, -1
/* 80587E84  4B E6 5A 85 */	bl mSC_LightHouse_Event_Clear
/* 80587E88  48 00 00 38 */	b lbl_80587EC0
lbl_80587E8C:
/* 80587E8C  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 80587E90  3B E0 34 00 */	li r31, 0x3400
/* 80587E94  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 80587E98  38 60 FF FF */	li r3, -1
/* 80587E9C  7C 1E 03 78 */	mr r30, r0
/* 80587EA0  4B E6 5A 69 */	bl mSC_LightHouse_Event_Clear
/* 80587EA4  48 00 00 1C */	b lbl_80587EC0
lbl_80587EA8:
/* 80587EA8  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 80587EAC  3B E0 34 17 */	li r31, 0x3417
/* 80587EB0  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 80587EB4  38 60 FF FF */	li r3, -1
/* 80587EB8  7C 1E 03 78 */	mr r30, r0
/* 80587EBC  4B E6 5A 4D */	bl mSC_LightHouse_Event_Clear
lbl_80587EC0:
/* 80587EC0  7F E3 FB 78 */	mr r3, r31
/* 80587EC4  4B E1 06 51 */	bl mDemo_Set_msg_num
/* 80587EC8  38 00 00 00 */	li r0, 0
/* 80587ECC  98 1D 09 A8 */	stb r0, 0x9a8(r29)
/* 80587ED0  93 DD 09 A4 */	stw r30, 0x9a4(r29)
/* 80587ED4  39 61 00 20 */	addi r11, r1, 0x20
/* 80587ED8  4B B1 30 45 */	bl func_8009AF1C
/* 80587EDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80587EE0  7C 08 03 A6 */	mtlr r0
/* 80587EE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80587EE8  4E 80 00 20 */	blr 
