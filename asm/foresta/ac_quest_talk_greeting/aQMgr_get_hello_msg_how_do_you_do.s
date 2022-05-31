lbl_80488C84:
/* 80488C84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80488C88  7C 08 02 A6 */	mflr r0
/* 80488C8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80488C90  39 61 00 20 */	addi r11, r1, 0x20
/* 80488C94  4B C1 22 35 */	bl func_8009AEC8
/* 80488C98  83 E3 01 7C */	lwz r31, 0x17c(r3)
/* 80488C9C  7C 9A 23 78 */	mr r26, r4
/* 80488CA0  83 C3 01 80 */	lwz r30, 0x180(r3)
/* 80488CA4  7C BB 2B 78 */	mr r27, r5
/* 80488CA8  8B BF 08 E2 */	lbz r29, 0x8e2(r31)
/* 80488CAC  4B F4 92 55 */	bl mNpc_GetNpcLooks
/* 80488CB0  88 1F 08 E9 */	lbz r0, 0x8e9(r31)
/* 80488CB4  7C 7C 1B 78 */	mr r28, r3
/* 80488CB8  28 00 00 01 */	cmplwi r0, 1
/* 80488CBC  40 82 00 30 */	bne lbl_80488CEC
/* 80488CC0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80488CC4  7F 43 D3 78 */	mr r3, r26
/* 80488CC8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80488CCC  7F 85 E3 78 */	mr r5, r28
/* 80488CD0  3C C4 00 02 */	addis r6, r4, 2
/* 80488CD4  38 80 2D 35 */	li r4, 0x2d35
/* 80488CD8  88 C6 61 22 */	lbz r6, 0x6122(r6)
/* 80488CDC  38 E0 00 03 */	li r7, 3
/* 80488CE0  4B FF F7 11 */	bl aQMgr_actor_get_my_hello_msg_com
/* 80488CE4  7C 7C 1B 78 */	mr r28, r3
/* 80488CE8  48 00 00 A4 */	b lbl_80488D8C
lbl_80488CEC:
/* 80488CEC  A0 9F 00 02 */	lhz r4, 2(r31)
/* 80488CF0  38 7F 00 04 */	addi r3, r31, 4
/* 80488CF4  4B F2 AE 45 */	bl mLd_CheckThisLand
/* 80488CF8  2C 03 00 00 */	cmpwi r3, 0
/* 80488CFC  40 82 00 30 */	bne lbl_80488D2C
/* 80488D00  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80488D04  7F 43 D3 78 */	mr r3, r26
/* 80488D08  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80488D0C  7F 85 E3 78 */	mr r5, r28
/* 80488D10  3C C4 00 02 */	addis r6, r4, 2
/* 80488D14  38 80 2D 92 */	li r4, 0x2d92
/* 80488D18  88 C6 61 22 */	lbz r6, 0x6122(r6)
/* 80488D1C  38 E0 00 03 */	li r7, 3
/* 80488D20  4B FF F6 D1 */	bl aQMgr_actor_get_my_hello_msg_com
/* 80488D24  7C 7C 1B 78 */	mr r28, r3
/* 80488D28  48 00 00 64 */	b lbl_80488D8C
lbl_80488D2C:
/* 80488D2C  2C 1D 00 01 */	cmpwi r29, 1
/* 80488D30  40 82 00 1C */	bne lbl_80488D4C
/* 80488D34  7F 63 DB 78 */	mr r3, r27
/* 80488D38  7F 84 E3 78 */	mr r4, r28
/* 80488D3C  7F 45 D3 78 */	mr r5, r26
/* 80488D40  4B FF FE 31 */	bl aQMgr_get_hello_msg_npc_feel_grad
/* 80488D44  7C 7C 1B 78 */	mr r28, r3
/* 80488D48  48 00 00 44 */	b lbl_80488D8C
lbl_80488D4C:
/* 80488D4C  7F E3 FB 78 */	mr r3, r31
/* 80488D50  7F 84 E3 78 */	mr r4, r28
/* 80488D54  7F 65 DB 78 */	mr r5, r27
/* 80488D58  7F 46 D3 78 */	mr r6, r26
/* 80488D5C  4B FF FA F9 */	bl aQMgr_get_hello_msg_npc_feel_normal
/* 80488D60  7C 7C 1B 78 */	mr r28, r3
/* 80488D64  2C 1C FF FF */	cmpwi r28, -1
/* 80488D68  41 82 00 24 */	beq lbl_80488D8C
/* 80488D6C  38 1D FF FE */	addi r0, r29, -2
/* 80488D70  28 00 00 02 */	cmplwi r0, 2
/* 80488D74  40 81 00 14 */	ble lbl_80488D88
/* 80488D78  2C 1D 00 07 */	cmpwi r29, 7
/* 80488D7C  41 82 00 0C */	beq lbl_80488D88
/* 80488D80  2C 1D 00 08 */	cmpwi r29, 8
/* 80488D84  40 82 00 08 */	bne lbl_80488D8C
lbl_80488D88:
/* 80488D88  4B FF FE C1 */	bl aQMgr_set_feel_normal
lbl_80488D8C:
/* 80488D8C  28 1E 00 00 */	cmplwi r30, 0
/* 80488D90  41 82 00 14 */	beq lbl_80488DA4
/* 80488D94  88 1E 00 1D */	lbz r0, 0x1d(r30)
/* 80488D98  38 60 00 00 */	li r3, 0
/* 80488D9C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80488DA0  98 1E 00 1D */	stb r0, 0x1d(r30)
lbl_80488DA4:
/* 80488DA4  7F 83 E3 78 */	mr r3, r28
/* 80488DA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80488DAC  4B C1 21 69 */	bl func_8009AF14
/* 80488DB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80488DB4  7C 08 03 A6 */	mtlr r0
/* 80488DB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80488DBC  4E 80 00 20 */	blr 
