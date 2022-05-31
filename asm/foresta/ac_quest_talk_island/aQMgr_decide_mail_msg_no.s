lbl_80490C88:
/* 80490C88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80490C8C  7C 08 02 A6 */	mflr r0
/* 80490C90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80490C94  39 61 00 20 */	addi r11, r1, 0x20
/* 80490C98  4B C0 A2 3D */	bl func_8009AED4
/* 80490C9C  80 63 01 7C */	lwz r3, 0x17c(r3)
/* 80490CA0  7C 9D 23 78 */	mr r29, r4
/* 80490CA4  3B C0 FF FF */	li r30, -1
/* 80490CA8  83 E3 00 00 */	lwz r31, 0(r3)
/* 80490CAC  28 1F 00 00 */	cmplwi r31, 0
/* 80490CB0  41 82 01 70 */	beq lbl_80490E20
/* 80490CB4  4B BC C0 41 */	bl fqrand
/* 80490CB8  3C 60 80 64 */	lis r3, lit_1529@ha /* 0x80644C5C@ha */
/* 80490CBC  C0 03 4C 5C */	lfs f0, lit_1529@l(r3)  /* 0x80644C5C@l */
/* 80490CC0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80490CC4  FC 00 00 1E */	fctiwz f0, f0
/* 80490CC8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80490CCC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80490CD0  2C 00 00 01 */	cmpwi r0, 1
/* 80490CD4  41 82 00 54 */	beq lbl_80490D28
/* 80490CD8  40 80 00 10 */	bge lbl_80490CE8
/* 80490CDC  2C 00 00 00 */	cmpwi r0, 0
/* 80490CE0  40 80 00 14 */	bge lbl_80490CF4
/* 80490CE4  48 00 00 F8 */	b lbl_80490DDC
lbl_80490CE8:
/* 80490CE8  2C 00 00 03 */	cmpwi r0, 3
/* 80490CEC  40 80 00 F0 */	bge lbl_80490DDC
/* 80490CF0  48 00 00 88 */	b lbl_80490D78
lbl_80490CF4:
/* 80490CF4  4B F4 36 B5 */	bl mNpc_GetIslandGetLetter
/* 80490CF8  2C 03 00 00 */	cmpwi r3, 0
/* 80490CFC  40 82 00 E0 */	bne lbl_80490DDC
/* 80490D00  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CEBF0@ha */
/* 80490D04  3C 60 80 69 */	lis r3, msg_table_1506@ha /* 0x8068B3D8@ha */
/* 80490D08  38 A4 EB F0 */	addi r5, r4, l_normal_info@l /* 0x811CEBF0@l */
/* 80490D0C  38 9F 00 32 */	addi r4, r31, 0x32
/* 80490D10  57 A0 10 3A */	slwi r0, r29, 2
/* 80490D14  38 63 B3 D8 */	addi r3, r3, msg_table_1506@l /* 0x8068B3D8@l */
/* 80490D18  93 E5 00 00 */	stw r31, 0(r5)
/* 80490D1C  7F C3 00 2E */	lwzx r30, r3, r0
/* 80490D20  90 85 00 04 */	stw r4, 4(r5)
/* 80490D24  48 00 00 B8 */	b lbl_80490DDC
lbl_80490D28:
/* 80490D28  4B F4 36 81 */	bl mNpc_GetIslandGetLetter
/* 80490D2C  2C 03 00 00 */	cmpwi r3, 0
/* 80490D30  40 82 00 AC */	bne lbl_80490DDC
/* 80490D34  88 1F 00 31 */	lbz r0, 0x31(r31)
/* 80490D38  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 80490D3C  28 00 00 01 */	cmplwi r0, 1
/* 80490D40  40 82 00 9C */	bne lbl_80490DDC
/* 80490D44  3C 60 80 69 */	lis r3, msg_table_1506@ha /* 0x8068B3D8@ha */
/* 80490D48  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CEBF0@ha */
/* 80490D4C  57 A0 10 3A */	slwi r0, r29, 2
/* 80490D50  38 BF 00 32 */	addi r5, r31, 0x32
/* 80490D54  38 C4 EB F0 */	addi r6, r4, l_normal_info@l /* 0x811CEBF0@l */
/* 80490D58  38 63 B3 D8 */	addi r3, r3, msg_table_1506@l /* 0x8068B3D8@l */
/* 80490D5C  7C 83 00 2E */	lwzx r4, r3, r0
/* 80490D60  38 60 00 01 */	li r3, 1
/* 80490D64  93 E6 00 00 */	stw r31, 0(r6)
/* 80490D68  3B C4 00 01 */	addi r30, r4, 1
/* 80490D6C  90 A6 00 04 */	stw r5, 4(r6)
/* 80490D70  4B F4 36 2D */	bl mNpc_SetIslandGetLetter
/* 80490D74  48 00 00 68 */	b lbl_80490DDC
lbl_80490D78:
/* 80490D78  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80490D7C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80490D80  3C 63 00 02 */	addis r3, r3, 2
/* 80490D84  80 A3 61 3C */	lwz r5, 0x613c(r3)
/* 80490D88  28 05 00 00 */	cmplwi r5, 0
/* 80490D8C  41 82 00 50 */	beq lbl_80490DDC
/* 80490D90  38 80 00 07 */	li r4, 7
/* 80490D94  38 C0 00 01 */	li r6, 1
/* 80490D98  38 63 34 50 */	addi r3, r3, 0x3450
/* 80490D9C  4B FF FC 95 */	bl aQMgr_get_other_memory
/* 80490DA0  28 03 00 00 */	cmplwi r3, 0
/* 80490DA4  41 82 00 38 */	beq lbl_80490DDC
/* 80490DA8  88 03 00 31 */	lbz r0, 0x31(r3)
/* 80490DAC  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 80490DB0  28 00 00 01 */	cmplwi r0, 1
/* 80490DB4  40 82 00 28 */	bne lbl_80490DDC
/* 80490DB8  3C 80 80 69 */	lis r4, msg_table_1506@ha /* 0x8068B3D8@ha */
/* 80490DBC  3C C0 81 1D */	lis r6, l_normal_info@ha /* 0x811CEBF0@ha */
/* 80490DC0  57 A0 10 3A */	slwi r0, r29, 2
/* 80490DC4  94 66 EB F0 */	stwu r3, l_normal_info@l(r6)  /* 0x811CEBF0@l */
/* 80490DC8  38 84 B3 D8 */	addi r4, r4, msg_table_1506@l /* 0x8068B3D8@l */
/* 80490DCC  38 A3 00 32 */	addi r5, r3, 0x32
/* 80490DD0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80490DD4  90 A6 00 04 */	stw r5, 4(r6)
/* 80490DD8  3B C4 00 02 */	addi r30, r4, 2
lbl_80490DDC:
/* 80490DDC  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CEBF0@ha */
/* 80490DE0  83 A3 EB F0 */	lwz r29, l_normal_info@l(r3)  /* 0x811CEBF0@l */
/* 80490DE4  28 1D 00 00 */	cmplwi r29, 0
/* 80490DE8  41 82 00 38 */	beq lbl_80490E20
/* 80490DEC  4B F2 E8 BD */	bl func_803BF6A8
/* 80490DF0  7F A5 EB 78 */	mr r5, r29
/* 80490DF4  38 80 00 00 */	li r4, 0
/* 80490DF8  38 C0 00 08 */	li r6, 8
/* 80490DFC  4B F2 EE 59 */	bl mMsg_Set_free_str
/* 80490E00  4B F2 E8 A9 */	bl func_803BF6A8
/* 80490E04  3C A0 81 1D */	lis r5, l_normal_info@ha /* 0x811CEBF0@ha */
/* 80490E08  38 80 00 01 */	li r4, 1
/* 80490E0C  38 A5 EB F0 */	addi r5, r5, l_normal_info@l /* 0x811CEBF0@l */
/* 80490E10  38 C0 00 08 */	li r6, 8
/* 80490E14  80 A5 00 00 */	lwz r5, 0(r5)
/* 80490E18  38 A5 00 08 */	addi r5, r5, 8
/* 80490E1C  4B F2 EE 39 */	bl mMsg_Set_free_str
lbl_80490E20:
/* 80490E20  7F C3 F3 78 */	mr r3, r30
/* 80490E24  39 61 00 20 */	addi r11, r1, 0x20
/* 80490E28  4B C0 A0 F9 */	bl func_8009AF20
/* 80490E2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80490E30  7C 08 03 A6 */	mtlr r0
/* 80490E34  38 21 00 20 */	addi r1, r1, 0x20
/* 80490E38  4E 80 00 20 */	blr 
