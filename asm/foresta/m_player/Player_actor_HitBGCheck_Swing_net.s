lbl_804F2CAC:
/* 804F2CAC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804F2CB0  7C 08 02 A6 */	mflr r0
/* 804F2CB4  90 01 00 84 */	stw r0, 0x84(r1)
/* 804F2CB8  39 61 00 80 */	addi r11, r1, 0x80
/* 804F2CBC  4B BA 82 15 */	bl func_8009AED0
/* 804F2CC0  3C C0 80 64 */	lis r6, lit_5247@ha /* 0x80647CE4@ha */
/* 804F2CC4  C0 23 01 84 */	lfs f1, 0x184(r3)
/* 804F2CC8  C0 06 7C E4 */	lfs f0, lit_5247@l(r6)  /* 0x80647CE4@l */
/* 804F2CCC  38 00 00 00 */	li r0, 0
/* 804F2CD0  90 05 00 00 */	stw r0, 0(r5)
/* 804F2CD4  7C 7D 1B 78 */	mr r29, r3
/* 804F2CD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F2CDC  7C 9E 23 78 */	mr r30, r4
/* 804F2CE0  40 81 01 6C */	ble lbl_804F2E4C
/* 804F2CE4  7C A4 2B 78 */	mr r4, r5
/* 804F2CE8  4B FE 3F A1 */	bl Player_actor_Check_OBJtoLine_forItem_net
/* 804F2CEC  2C 03 00 00 */	cmpwi r3, 0
/* 804F2CF0  41 82 00 0C */	beq lbl_804F2CFC
/* 804F2CF4  38 60 00 01 */	li r3, 1
/* 804F2CF8  48 00 01 58 */	b lbl_804F2E50
lbl_804F2CFC:
/* 804F2CFC  80 FD 11 3C */	lwz r7, 0x113c(r29)
/* 804F2D00  38 61 00 5C */	addi r3, r1, 0x5c
/* 804F2D04  80 1D 11 40 */	lwz r0, 0x1140(r29)
/* 804F2D08  38 81 00 44 */	addi r4, r1, 0x44
/* 804F2D0C  38 A1 00 38 */	addi r5, r1, 0x38
/* 804F2D10  38 C0 00 00 */	li r6, 0
/* 804F2D14  90 E1 00 38 */	stw r7, 0x38(r1)
/* 804F2D18  38 E0 00 07 */	li r7, 7
/* 804F2D1C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804F2D20  80 1D 11 44 */	lwz r0, 0x1144(r29)
/* 804F2D24  90 01 00 40 */	stw r0, 0x40(r1)
/* 804F2D28  81 1D 11 30 */	lwz r8, 0x1130(r29)
/* 804F2D2C  80 1D 11 34 */	lwz r0, 0x1134(r29)
/* 804F2D30  91 01 00 44 */	stw r8, 0x44(r1)
/* 804F2D34  90 01 00 48 */	stw r0, 0x48(r1)
/* 804F2D38  80 1D 11 38 */	lwz r0, 0x1138(r29)
/* 804F2D3C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804F2D40  4B EA 0D 5D */	bl mCoBG_LineCheck_RemoveFg
/* 804F2D44  54 65 07 7B */	rlwinm. r5, r3, 0, 0x1d, 0x1d
/* 804F2D48  7C 7F 1B 78 */	mr r31, r3
/* 804F2D4C  40 82 00 0C */	bne lbl_804F2D58
/* 804F2D50  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 804F2D54  41 82 00 E0 */	beq lbl_804F2E34
lbl_804F2D58:
/* 804F2D58  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804F2D5C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804F2D60  3F 83 00 02 */	addis r28, r3, 2
/* 804F2D64  80 1C 60 9C */	lwz r0, 0x609c(r28)
/* 804F2D68  28 00 00 00 */	cmplwi r0, 0
/* 804F2D6C  41 82 00 C8 */	beq lbl_804F2E34
/* 804F2D70  80 9D 11 3C */	lwz r4, 0x113c(r29)
/* 804F2D74  2C 05 00 00 */	cmpwi r5, 0
/* 804F2D78  80 BD 11 40 */	lwz r5, 0x1140(r29)
/* 804F2D7C  80 1D 11 44 */	lwz r0, 0x1144(r29)
/* 804F2D80  90 81 00 08 */	stw r4, 8(r1)
/* 804F2D84  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804F2D88  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F2D8C  90 81 00 50 */	stw r4, 0x50(r1)
/* 804F2D90  90 A1 00 54 */	stw r5, 0x54(r1)
/* 804F2D94  90 01 00 58 */	stw r0, 0x58(r1)
/* 804F2D98  41 82 00 14 */	beq lbl_804F2DAC
/* 804F2D9C  3C 60 80 64 */	lis r3, lit_2591@ha /* 0x80646C44@ha */
/* 804F2DA0  C0 03 6C 44 */	lfs f0, lit_2591@l(r3)  /* 0x80646C44@l */
/* 804F2DA4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804F2DA8  48 00 00 28 */	b lbl_804F2DD0
lbl_804F2DAC:
/* 804F2DAC  90 A1 00 30 */	stw r5, 0x30(r1)
/* 804F2DB0  3C 60 80 6A */	lis r3, lit_11001@ha /* 0x8069E780@ha */
/* 804F2DB4  38 A0 00 AB */	li r5, 0xab
/* 804F2DB8  90 81 00 2C */	stw r4, 0x2c(r1)
/* 804F2DBC  38 83 E7 80 */	addi r4, r3, lit_11001@l /* 0x8069E780@l */
/* 804F2DC0  38 61 00 2C */	addi r3, r1, 0x2c
/* 804F2DC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804F2DC8  4B EA 11 F1 */	bl mCoBG_GetWaterHeight_File
/* 804F2DCC  D0 21 00 54 */	stfs f1, 0x54(r1)
lbl_804F2DD0:
/* 804F2DD0  80 C1 00 50 */	lwz r6, 0x50(r1)
/* 804F2DD4  38 61 00 14 */	addi r3, r1, 0x14
/* 804F2DD8  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 804F2DDC  38 80 00 00 */	li r4, 0
/* 804F2DE0  80 01 00 58 */	lwz r0, 0x58(r1)
/* 804F2DE4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804F2DE8  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804F2DEC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804F2DF0  90 C1 00 20 */	stw r6, 0x20(r1)
/* 804F2DF4  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804F2DF8  90 01 00 28 */	stw r0, 0x28(r1)
/* 804F2DFC  4B E9 62 B1 */	bl mCoBG_Wpos2Attribute
/* 804F2E00  80 9C 60 9C */	lwz r4, 0x609c(r28)
/* 804F2E04  7C 69 07 34 */	extsh r9, r3
/* 804F2E08  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804F2E0C  7F C7 F3 78 */	mr r7, r30
/* 804F2E10  81 84 00 00 */	lwz r12, 0(r4)
/* 804F2E14  39 03 FF FF */	addi r8, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804F2E18  38 81 00 20 */	addi r4, r1, 0x20
/* 804F2E1C  A8 DD 00 36 */	lha r6, 0x36(r29)
/* 804F2E20  38 60 00 39 */	li r3, 0x39
/* 804F2E24  38 A0 00 02 */	li r5, 2
/* 804F2E28  39 40 00 01 */	li r10, 1
/* 804F2E2C  7D 89 03 A6 */	mtctr r12
/* 804F2E30  4E 80 04 21 */	bctrl 
lbl_804F2E34:
/* 804F2E34  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 804F2E38  40 82 00 0C */	bne lbl_804F2E44
/* 804F2E3C  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 804F2E40  41 82 00 0C */	beq lbl_804F2E4C
lbl_804F2E44:
/* 804F2E44  38 60 00 01 */	li r3, 1
/* 804F2E48  48 00 00 08 */	b lbl_804F2E50
lbl_804F2E4C:
/* 804F2E4C  38 60 00 00 */	li r3, 0
lbl_804F2E50:
/* 804F2E50  39 61 00 80 */	addi r11, r1, 0x80
/* 804F2E54  4B BA 80 C9 */	bl func_8009AF1C
/* 804F2E58  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804F2E5C  7C 08 03 A6 */	mtlr r0
/* 804F2E60  38 21 00 80 */	addi r1, r1, 0x80
/* 804F2E64  4E 80 00 20 */	blr 
