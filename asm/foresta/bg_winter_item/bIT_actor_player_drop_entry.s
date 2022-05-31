lbl_804C1B78:
/* 804C1B78  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804C1B7C  7C 08 02 A6 */	mflr r0
/* 804C1B80  90 01 00 64 */	stw r0, 0x64(r1)
/* 804C1B84  39 61 00 60 */	addi r11, r1, 0x60
/* 804C1B88  4B BD 93 45 */	bl func_8009AECC
/* 804C1B8C  7C 9D 23 78 */	mr r29, r4
/* 804C1B90  7C BF 2B 78 */	mr r31, r5
/* 804C1B94  7C DC 33 78 */	mr r28, r6
/* 804C1B98  7C FE 3B 78 */	mr r30, r7
/* 804C1B9C  4B F1 7A A5 */	bl get_player_actor_withoutCheck
/* 804C1BA0  3C 80 80 64 */	lis r4, data_8064613C@ha /* 0x8064613C@ha */
/* 804C1BA4  7C 7B 1B 78 */	mr r27, r3
/* 804C1BA8  38 64 61 3C */	addi r3, r4, data_8064613C@l /* 0x8064613C@l */
/* 804C1BAC  7F E4 FB 78 */	mr r4, r31
/* 804C1BB0  C0 03 00 00 */	lfs f0, 0(r3)
/* 804C1BB4  7F 85 E3 78 */	mr r5, r28
/* 804C1BB8  38 61 00 2C */	addi r3, r1, 0x2c
/* 804C1BBC  3B E0 00 00 */	li r31, 0
/* 804C1BC0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804C1BC4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804C1BC8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804C1BCC  4B EE 38 B1 */	bl mFI_UtNum2CenterWpos
/* 804C1BD0  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 804C1BD4  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646144@ha */
/* 804C1BD8  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 804C1BDC  38 83 61 44 */	addi r4, r3, lit_664@l /* 0x80646144@l */
/* 804C1BE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C1BE4  38 61 00 20 */	addi r3, r1, 0x20
/* 804C1BE8  90 C1 00 20 */	stw r6, 0x20(r1)
/* 804C1BEC  C0 24 00 00 */	lfs f1, 0(r4)
/* 804C1BF0  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804C1BF4  90 01 00 28 */	stw r0, 0x28(r1)
/* 804C1BF8  4B EC DD A1 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804C1BFC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 804C1C00  38 61 00 14 */	addi r3, r1, 0x14
/* 804C1C04  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804C1C08  80 81 00 30 */	lwz r4, 0x30(r1)
/* 804C1C0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C1C10  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804C1C14  90 81 00 18 */	stw r4, 0x18(r1)
/* 804C1C18  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C1C1C  4B EE 58 15 */	bl mFI_GetUnitFG
/* 804C1C20  7C 7C 1B 79 */	or. r28, r3, r3
/* 804C1C24  41 82 01 18 */	beq lbl_804C1D3C
/* 804C1C28  A0 1C 00 00 */	lhz r0, 0(r28)
/* 804C1C2C  28 00 00 00 */	cmplwi r0, 0
/* 804C1C30  41 82 00 1C */	beq lbl_804C1C4C
/* 804C1C34  28 00 00 11 */	cmplwi r0, 0x11
/* 804C1C38  41 80 00 0C */	blt lbl_804C1C44
/* 804C1C3C  28 00 00 29 */	cmplwi r0, 0x29
/* 804C1C40  40 81 00 0C */	ble lbl_804C1C4C
lbl_804C1C44:
/* 804C1C44  28 00 00 5D */	cmplwi r0, 0x5d
/* 804C1C48  40 82 00 F4 */	bne lbl_804C1D3C
lbl_804C1C4C:
/* 804C1C4C  38 61 00 38 */	addi r3, r1, 0x38
/* 804C1C50  38 9B 00 28 */	addi r4, r27, 0x28
/* 804C1C54  3B 60 00 00 */	li r27, 0
/* 804C1C58  4B EF 92 65 */	bl xyz_t_move
/* 804C1C5C  3C 60 80 64 */	lis r3, lit_1003@ha /* 0x80646178@ha */
/* 804C1C60  57 A0 A7 3F */	rlwinm. r0, r29, 0x14, 0x1c, 0x1f
/* 804C1C64  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 804C1C68  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 804C1C6C  C0 03 61 78 */	lfs f0, lit_1003@l(r3)  /* 0x80646178@l */
/* 804C1C70  EC 01 00 2A */	fadds f0, f1, f0
/* 804C1C74  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804C1C78  40 82 00 30 */	bne lbl_804C1CA8
/* 804C1C7C  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 804C1C80  2C 00 00 08 */	cmpwi r0, 8
/* 804C1C84  40 82 00 10 */	bne lbl_804C1C94
/* 804C1C88  63 60 00 03 */	ori r0, r27, 3
/* 804C1C8C  54 1B 04 3E */	clrlwi r27, r0, 0x10
/* 804C1C90  48 00 00 20 */	b lbl_804C1CB0
lbl_804C1C94:
/* 804C1C94  2C 00 00 00 */	cmpwi r0, 0
/* 804C1C98  40 82 00 18 */	bne lbl_804C1CB0
/* 804C1C9C  63 60 00 01 */	ori r0, r27, 1
/* 804C1CA0  54 1B 04 3E */	clrlwi r27, r0, 0x10
/* 804C1CA4  48 00 00 0C */	b lbl_804C1CB0
lbl_804C1CA8:
/* 804C1CA8  63 60 00 01 */	ori r0, r27, 1
/* 804C1CAC  54 1B 04 3E */	clrlwi r27, r0, 0x10
lbl_804C1CB0:
/* 804C1CB0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C1CB4  7F A4 EB 78 */	mr r4, r29
/* 804C1CB8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C1CBC  7F 67 DB 78 */	mr r7, r27
/* 804C1CC0  3C 63 00 02 */	addis r3, r3, 2
/* 804C1CC4  7F C8 F3 78 */	mr r8, r30
/* 804C1CC8  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804C1CCC  38 A1 00 38 */	addi r5, r1, 0x38
/* 804C1CD0  38 C1 00 2C */	addi r6, r1, 0x2c
/* 804C1CD4  80 63 00 00 */	lwz r3, 0(r3)
/* 804C1CD8  3C 63 00 01 */	addis r3, r3, 1
/* 804C1CDC  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804C1CE0  48 00 03 D9 */	bl bIT_actor_drop_entry
/* 804C1CE4  2C 03 00 00 */	cmpwi r3, 0
/* 804C1CE8  41 82 00 58 */	beq lbl_804C1D40
/* 804C1CEC  A0 1C 00 00 */	lhz r0, 0(r28)
/* 804C1CF0  28 00 00 11 */	cmplwi r0, 0x11
/* 804C1CF4  41 80 00 0C */	blt lbl_804C1D00
/* 804C1CF8  28 00 00 29 */	cmplwi r0, 0x29
/* 804C1CFC  40 81 00 38 */	ble lbl_804C1D34
lbl_804C1D00:
/* 804C1D00  28 00 00 5D */	cmplwi r0, 0x5d
/* 804C1D04  41 82 00 30 */	beq lbl_804C1D34
/* 804C1D08  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804C1D0C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804C1D10  80 C1 00 30 */	lwz r6, 0x30(r1)
/* 804C1D14  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804C1D18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C1D1C  38 81 00 08 */	addi r4, r1, 8
/* 804C1D20  90 A1 00 08 */	stw r5, 8(r1)
/* 804C1D24  38 A0 00 00 */	li r5, 0
/* 804C1D28  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804C1D2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C1D30  4B EE 5B 01 */	bl mFI_SetFG_common
lbl_804C1D34:
/* 804C1D34  3B E0 00 01 */	li r31, 1
/* 804C1D38  48 00 00 08 */	b lbl_804C1D40
lbl_804C1D3C:
/* 804C1D3C  3B E0 FF FF */	li r31, -1
lbl_804C1D40:
/* 804C1D40  7F E3 FB 78 */	mr r3, r31
/* 804C1D44  39 61 00 60 */	addi r11, r1, 0x60
/* 804C1D48  4B BD 91 D1 */	bl func_8009AF18
/* 804C1D4C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804C1D50  7C 08 03 A6 */	mtlr r0
/* 804C1D54  38 21 00 60 */	addi r1, r1, 0x60
/* 804C1D58  4E 80 00 20 */	blr 
