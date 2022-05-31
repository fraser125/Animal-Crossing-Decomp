lbl_804A4BCC:
/* 804A4BCC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804A4BD0  7C 08 02 A6 */	mflr r0
/* 804A4BD4  90 01 00 64 */	stw r0, 0x64(r1)
/* 804A4BD8  39 61 00 60 */	addi r11, r1, 0x60
/* 804A4BDC  4B BF 62 F5 */	bl func_8009AED0
/* 804A4BE0  7C 7D 1B 78 */	mr r29, r3
/* 804A4BE4  7C BF 2B 78 */	mr r31, r5
/* 804A4BE8  93 E3 01 94 */	stw r31, 0x194(r3)
/* 804A4BEC  7C 9E 23 78 */	mr r30, r4
/* 804A4BF0  A8 05 00 00 */	lha r0, 0(r5)
/* 804A4BF4  2C 00 00 1B */	cmpwi r0, 0x1b
/* 804A4BF8  40 82 02 34 */	bne lbl_804A4E2C
/* 804A4BFC  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 804A4C00  3C 60 80 64 */	lis r3, lit_784@ha /* 0x80645D10@ha */
/* 804A4C04  C0 23 5D 10 */	lfs f1, lit_784@l(r3)  /* 0x80645D10@l */
/* 804A4C08  FC 00 02 10 */	fabs f0, f0
/* 804A4C0C  FC 00 00 18 */	frsp f0, f0
/* 804A4C10  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A4C14  40 80 00 20 */	bge lbl_804A4C34
/* 804A4C18  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 804A4C1C  FC 00 02 10 */	fabs f0, f0
/* 804A4C20  FC 00 00 18 */	frsp f0, f0
/* 804A4C24  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A4C28  40 80 00 0C */	bge lbl_804A4C34
/* 804A4C2C  38 60 00 00 */	li r3, 0
/* 804A4C30  48 00 02 00 */	b lbl_804A4E30
lbl_804A4C34:
/* 804A4C34  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 804A4C38  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 804A4C3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A4C40  4C 41 13 82 */	cror 2, 1, 2
/* 804A4C44  40 82 00 2C */	bne lbl_804A4C70
/* 804A4C48  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 804A4C4C  38 61 00 40 */	addi r3, r1, 0x40
/* 804A4C50  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804A4C54  38 81 00 34 */	addi r4, r1, 0x34
/* 804A4C58  90 A1 00 34 */	stw r5, 0x34(r1)
/* 804A4C5C  90 01 00 38 */	stw r0, 0x38(r1)
/* 804A4C60  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804A4C64  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804A4C68  4B F0 08 D5 */	bl mFI_Wpos2UtCenterWpos
/* 804A4C6C  48 00 00 28 */	b lbl_804A4C94
lbl_804A4C70:
/* 804A4C70  80 BD 00 28 */	lwz r5, 0x28(r29)
/* 804A4C74  38 61 00 40 */	addi r3, r1, 0x40
/* 804A4C78  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 804A4C7C  38 81 00 28 */	addi r4, r1, 0x28
/* 804A4C80  90 A1 00 28 */	stw r5, 0x28(r1)
/* 804A4C84  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804A4C88  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 804A4C8C  90 01 00 30 */	stw r0, 0x30(r1)
/* 804A4C90  4B F0 08 AD */	bl mFI_Wpos2UtCenterWpos
lbl_804A4C94:
/* 804A4C94  80 C1 00 40 */	lwz r6, 0x40(r1)
/* 804A4C98  38 61 00 1C */	addi r3, r1, 0x1c
/* 804A4C9C  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 804A4CA0  38 80 00 00 */	li r4, 0
/* 804A4CA4  80 01 00 48 */	lwz r0, 0x48(r1)
/* 804A4CA8  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 804A4CAC  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804A4CB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A4CB4  4B EE 43 F9 */	bl mCoBG_Wpos2Attribute
/* 804A4CB8  80 A1 00 40 */	lwz r5, 0x40(r1)
/* 804A4CBC  7C 7C 1B 78 */	mr r28, r3
/* 804A4CC0  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 804A4CC4  38 61 00 0C */	addi r3, r1, 0xc
/* 804A4CC8  80 01 00 48 */	lwz r0, 0x48(r1)
/* 804A4CCC  38 81 00 08 */	addi r4, r1, 8
/* 804A4CD0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 804A4CD4  38 A1 00 10 */	addi r5, r1, 0x10
/* 804A4CD8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804A4CDC  90 01 00 18 */	stw r0, 0x18(r1)
/* 804A4CE0  4B F0 09 2D */	bl mFI_Wpos2UtNum_inBlock
/* 804A4CE4  28 1C 00 07 */	cmplwi r28, 7
/* 804A4CE8  41 82 00 80 */	beq lbl_804A4D68
/* 804A4CEC  28 1C 00 17 */	cmplwi r28, 0x17
/* 804A4CF0  41 82 00 78 */	beq lbl_804A4D68
/* 804A4CF4  38 61 00 40 */	addi r3, r1, 0x40
/* 804A4CF8  38 80 00 00 */	li r4, 0
/* 804A4CFC  4B EE C8 49 */	bl mCoBG_Wpos2CheckSlateCol
/* 804A4D00  2C 03 00 00 */	cmpwi r3, 0
/* 804A4D04  40 82 00 64 */	bne lbl_804A4D68
/* 804A4D08  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804A4D0C  2C 00 00 00 */	cmpwi r0, 0
/* 804A4D10  41 82 00 58 */	beq lbl_804A4D68
/* 804A4D14  2C 00 00 0F */	cmpwi r0, 0xf
/* 804A4D18  41 82 00 50 */	beq lbl_804A4D68
/* 804A4D1C  80 01 00 08 */	lwz r0, 8(r1)
/* 804A4D20  2C 00 00 00 */	cmpwi r0, 0
/* 804A4D24  41 82 00 44 */	beq lbl_804A4D68
/* 804A4D28  2C 00 00 0F */	cmpwi r0, 0xf
/* 804A4D2C  41 82 00 3C */	beq lbl_804A4D68
/* 804A4D30  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A4D34  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804A4D38  40 82 00 30 */	bne lbl_804A4D68
/* 804A4D3C  A8 1F 01 F2 */	lha r0, 0x1f2(r31)
/* 804A4D40  2C 00 00 00 */	cmpwi r0, 0
/* 804A4D44  40 82 00 24 */	bne lbl_804A4D68
/* 804A4D48  A8 1F 01 F6 */	lha r0, 0x1f6(r31)
/* 804A4D4C  2C 00 00 00 */	cmpwi r0, 0
/* 804A4D50  40 82 00 18 */	bne lbl_804A4D68
/* 804A4D54  7F A3 EB 78 */	mr r3, r29
/* 804A4D58  7F C4 F3 78 */	mr r4, r30
/* 804A4D5C  4B FF EA D5 */	bl aSNOWMAN_player_block_check
/* 804A4D60  2C 03 00 00 */	cmpwi r3, 0
/* 804A4D64  40 82 00 0C */	bne lbl_804A4D70
lbl_804A4D68:
/* 804A4D68  38 60 00 00 */	li r3, 0
/* 804A4D6C  48 00 00 C4 */	b lbl_804A4E30
lbl_804A4D70:
/* 804A4D70  80 7D 01 E8 */	lwz r3, 0x1e8(r29)
/* 804A4D74  80 1F 01 E8 */	lwz r0, 0x1e8(r31)
/* 804A4D78  7C 03 00 00 */	cmpw r3, r0
/* 804A4D7C  41 82 00 A8 */	beq lbl_804A4E24
/* 804A4D80  3C 60 80 64 */	lis r3, lit_639@ha /* 0x80645CB0@ha */
/* 804A4D84  C0 1D 01 D0 */	lfs f0, 0x1d0(r29)
/* 804A4D88  C0 23 5C B0 */	lfs f1, lit_639@l(r3)  /* 0x80645CB0@l */
/* 804A4D8C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A4D90  40 81 00 94 */	ble lbl_804A4E24
/* 804A4D94  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 804A4D98  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A4D9C  40 81 00 88 */	ble lbl_804A4E24
/* 804A4DA0  38 00 00 FE */	li r0, 0xfe
/* 804A4DA4  3C 60 80 4A */	lis r3, aSMAN_process_player_push@ha /* 0x804A59A4@ha */
/* 804A4DA8  98 1D 00 D6 */	stb r0, 0xd6(r29)
/* 804A4DAC  38 63 59 A4 */	addi r3, r3, aSMAN_process_player_push@l /* 0x804A59A4@l */
/* 804A4DB0  98 1F 00 D6 */	stb r0, 0xd6(r31)
/* 804A4DB4  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 804A4DB8  7C 00 18 40 */	cmplw r0, r3
/* 804A4DBC  41 82 00 10 */	beq lbl_804A4DCC
/* 804A4DC0  80 1D 01 90 */	lwz r0, 0x190(r29)
/* 804A4DC4  7C 00 18 40 */	cmplw r0, r3
/* 804A4DC8  40 82 00 0C */	bne lbl_804A4DD4
lbl_804A4DCC:
/* 804A4DCC  7F C3 F3 78 */	mr r3, r30
/* 804A4DD0  4B FF F4 B5 */	bl aSMAN_player_push_free
lbl_804A4DD4:
/* 804A4DD4  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 804A4DD8  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 804A4DDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A4DE0  4C 41 13 82 */	cror 2, 1, 2
/* 804A4DE4  40 82 00 20 */	bne lbl_804A4E04
/* 804A4DE8  93 BF 01 94 */	stw r29, 0x194(r31)
/* 804A4DEC  7F A3 EB 78 */	mr r3, r29
/* 804A4DF0  7F C4 F3 78 */	mr r4, r30
/* 804A4DF4  48 00 1B B9 */	bl aSMAN_process_combine_head_jump_init
/* 804A4DF8  7F E3 FB 78 */	mr r3, r31
/* 804A4DFC  48 00 24 59 */	bl aSMAN_process_combine_body_init
/* 804A4E00  48 00 00 1C */	b lbl_804A4E1C
lbl_804A4E04:
/* 804A4E04  93 BF 01 94 */	stw r29, 0x194(r31)
/* 804A4E08  7F A3 EB 78 */	mr r3, r29
/* 804A4E0C  48 00 24 49 */	bl aSMAN_process_combine_body_init
/* 804A4E10  7F E3 FB 78 */	mr r3, r31
/* 804A4E14  7F C4 F3 78 */	mr r4, r30
/* 804A4E18  48 00 1B 95 */	bl aSMAN_process_combine_head_jump_init
lbl_804A4E1C:
/* 804A4E1C  38 60 00 01 */	li r3, 1
/* 804A4E20  48 00 00 10 */	b lbl_804A4E30
lbl_804A4E24:
/* 804A4E24  38 60 00 00 */	li r3, 0
/* 804A4E28  48 00 00 08 */	b lbl_804A4E30
lbl_804A4E2C:
/* 804A4E2C  38 60 00 00 */	li r3, 0
lbl_804A4E30:
/* 804A4E30  39 61 00 60 */	addi r11, r1, 0x60
/* 804A4E34  4B BF 60 E9 */	bl func_8009AF1C
/* 804A4E38  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804A4E3C  7C 08 03 A6 */	mtlr r0
/* 804A4E40  38 21 00 60 */	addi r1, r1, 0x60
/* 804A4E44  4E 80 00 20 */	blr 
