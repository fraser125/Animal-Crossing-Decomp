lbl_80379764:
/* 80379764  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80379768  7C 08 02 A6 */	mflr r0
/* 8037976C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80379770  39 61 00 50 */	addi r11, r1, 0x50
/* 80379774  4B D2 17 5D */	bl func_8009AED0
/* 80379778  7C 7E 1B 78 */	mr r30, r3
/* 8037977C  7C 83 23 78 */	mr r3, r4
/* 80379780  48 05 FE C1 */	bl get_player_actor_withoutCheck
/* 80379784  7C 7C 1B 79 */	or. r28, r3, r3
/* 80379788  3B E0 00 03 */	li r31, 3
/* 8037978C  41 82 00 F0 */	beq lbl_8037987C
/* 80379790  3B A0 00 00 */	li r29, 0
/* 80379794  38 60 00 00 */	li r3, 0
/* 80379798  48 02 F3 A5 */	bl mFI_CheckPlayerWade
/* 8037979C  2C 03 00 00 */	cmpwi r3, 0
/* 803797A0  40 82 00 14 */	bne lbl_803797B4
/* 803797A4  38 60 00 03 */	li r3, 3
/* 803797A8  48 02 F3 95 */	bl mFI_CheckPlayerWade
/* 803797AC  2C 03 00 00 */	cmpwi r3, 0
/* 803797B0  41 82 00 08 */	beq lbl_803797B8
lbl_803797B4:
/* 803797B4  3B A0 00 01 */	li r29, 1
lbl_803797B8:
/* 803797B8  2C 1D 00 00 */	cmpwi r29, 0
/* 803797BC  41 82 00 94 */	beq lbl_80379850
/* 803797C0  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 803797C4  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 803797C8  80 63 02 FC */	lwz r3, 0x2fc(r3)
/* 803797CC  38 03 FF FD */	addi r0, r3, -3
/* 803797D0  28 00 00 02 */	cmplwi r0, 2
/* 803797D4  40 81 00 0C */	ble lbl_803797E0
/* 803797D8  2C 03 00 06 */	cmpwi r3, 6
/* 803797DC  40 82 00 48 */	bne lbl_80379824
lbl_803797E0:
/* 803797E0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803797E4  38 61 00 28 */	addi r3, r1, 0x28
/* 803797E8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803797EC  3C 84 00 03 */	addis r4, r4, 3
/* 803797F0  38 84 85 70 */	addi r4, r4, -31376
/* 803797F4  48 04 16 E5 */	bl xyz_t_move_s_xyz
/* 803797F8  80 E1 00 28 */	lwz r7, 0x28(r1)
/* 803797FC  38 61 00 0C */	addi r3, r1, 0xc
/* 80379800  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 80379804  38 81 00 08 */	addi r4, r1, 8
/* 80379808  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8037980C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80379810  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 80379814  90 C1 00 20 */	stw r6, 0x20(r1)
/* 80379818  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037981C  48 02 BF 45 */	bl mFI_Wpos2BlockNum
/* 80379820  48 00 00 3C */	b lbl_8037985C
lbl_80379824:
/* 80379824  80 DC 00 28 */	lwz r6, 0x28(r28)
/* 80379828  38 61 00 0C */	addi r3, r1, 0xc
/* 8037982C  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 80379830  38 81 00 08 */	addi r4, r1, 8
/* 80379834  38 A1 00 10 */	addi r5, r1, 0x10
/* 80379838  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8037983C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80379840  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 80379844  90 01 00 18 */	stw r0, 0x18(r1)
/* 80379848  48 02 BF 19 */	bl mFI_Wpos2BlockNum
/* 8037984C  48 00 00 10 */	b lbl_8037985C
lbl_80379850:
/* 80379850  38 61 00 0C */	addi r3, r1, 0xc
/* 80379854  38 81 00 08 */	addi r4, r1, 8
/* 80379858  48 02 F3 15 */	bl mFI_GetNextBlockNum
lbl_8037985C:
/* 8037985C  2C 03 00 00 */	cmpwi r3, 0
/* 80379860  41 82 00 1C */	beq lbl_8037987C
/* 80379864  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80379868  80 81 00 08 */	lwz r4, 8(r1)
/* 8037986C  88 BE 00 03 */	lbz r5, 3(r30)
/* 80379870  80 DE 00 04 */	lwz r6, 4(r30)
/* 80379874  4B FF FE 21 */	bl mBGMFieldSchedEv_bl_attr_get
/* 80379878  7C 7F 1B 78 */	mr r31, r3
lbl_8037987C:
/* 8037987C  7F E3 FB 78 */	mr r3, r31
/* 80379880  39 61 00 50 */	addi r11, r1, 0x50
/* 80379884  4B D2 16 99 */	bl func_8009AF1C
/* 80379888  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8037988C  7C 08 03 A6 */	mtlr r0
/* 80379890  38 21 00 50 */	addi r1, r1, 0x50
/* 80379894  4E 80 00 20 */	blr 
