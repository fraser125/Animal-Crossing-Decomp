lbl_803A1D88:
/* 803A1D88  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803A1D8C  7C 08 02 A6 */	mflr r0
/* 803A1D90  90 01 00 64 */	stw r0, 0x64(r1)
/* 803A1D94  39 61 00 60 */	addi r11, r1, 0x60
/* 803A1D98  4B CF 91 15 */	bl func_8009AEAC
/* 803A1D9C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803A1DA0  3B A0 00 00 */	li r29, 0
/* 803A1DA4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803A1DA8  93 A1 00 18 */	stw r29, 0x18(r1)
/* 803A1DAC  3F 85 00 01 */	addis r28, r5, 1
/* 803A1DB0  7C 75 1B 78 */	mr r21, r3
/* 803A1DB4  7C 96 23 78 */	mr r22, r4
/* 803A1DB8  3B 40 00 00 */	li r26, 0
/* 803A1DBC  3B 9C 37 A8 */	addi r28, r28, 0x37a8
/* 803A1DC0  48 00 2E D1 */	bl mFI_CheckFieldData
/* 803A1DC4  2C 03 00 00 */	cmpwi r3, 0
/* 803A1DC8  41 82 00 0C */	beq lbl_803A1DD4
/* 803A1DCC  38 61 00 08 */	addi r3, r1, 8
/* 803A1DD0  48 17 23 21 */	bl mAGrw_SearchDump
lbl_803A1DD4:
/* 803A1DD4  3B E1 00 14 */	addi r31, r1, 0x14
/* 803A1DD8  3B C1 00 10 */	addi r30, r1, 0x10
/* 803A1DDC  3B 00 00 00 */	li r24, 0
lbl_803A1DE0:
/* 803A1DE0  3A E0 00 00 */	li r23, 0
lbl_803A1DE4:
/* 803A1DE4  28 1C 00 00 */	cmplwi r28, 0
/* 803A1DE8  3B 20 00 00 */	li r25, 0
/* 803A1DEC  41 82 00 D0 */	beq lbl_803A1EBC
/* 803A1DF0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 803A1DF4  7F 9B E3 78 */	mr r27, r28
/* 803A1DF8  28 00 00 00 */	cmplwi r0, 0
/* 803A1DFC  41 82 00 94 */	beq lbl_803A1E90
/* 803A1E00  80 01 00 08 */	lwz r0, 8(r1)
/* 803A1E04  38 77 00 01 */	addi r3, r23, 1
/* 803A1E08  7C 03 00 00 */	cmpw r3, r0
/* 803A1E0C  40 82 00 84 */	bne lbl_803A1E90
/* 803A1E10  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803A1E14  38 78 00 01 */	addi r3, r24, 1
/* 803A1E18  7C 03 00 00 */	cmpw r3, r0
/* 803A1E1C  40 82 00 74 */	bne lbl_803A1E90
/* 803A1E20  3A 80 00 00 */	li r20, 0
lbl_803A1E24:
/* 803A1E24  3A 60 00 00 */	li r19, 0
lbl_803A1E28:
/* 803A1E28  80 7F 00 00 */	lwz r3, 0(r31)
/* 803A1E2C  38 03 FF FC */	addi r0, r3, -4
/* 803A1E30  7C 14 00 00 */	cmpw r20, r0
/* 803A1E34  41 80 00 24 */	blt lbl_803A1E58
/* 803A1E38  7C 14 18 00 */	cmpw r20, r3
/* 803A1E3C  41 81 00 1C */	bgt lbl_803A1E58
/* 803A1E40  80 7E 00 00 */	lwz r3, 0(r30)
/* 803A1E44  38 03 FF FC */	addi r0, r3, -4
/* 803A1E48  7C 13 00 00 */	cmpw r19, r0
/* 803A1E4C  41 80 00 0C */	blt lbl_803A1E58
/* 803A1E50  7C 13 18 00 */	cmpw r19, r3
/* 803A1E54  40 81 00 1C */	ble lbl_803A1E70
lbl_803A1E58:
/* 803A1E58  A0 7B 00 00 */	lhz r3, 0(r27)
/* 803A1E5C  4B FF F7 8D */	bl mFAs_CheckDust
/* 803A1E60  2C 03 00 01 */	cmpwi r3, 1
/* 803A1E64  40 82 00 0C */	bne lbl_803A1E70
/* 803A1E68  3B 5A 00 01 */	addi r26, r26, 1
/* 803A1E6C  3B 39 00 01 */	addi r25, r25, 1
lbl_803A1E70:
/* 803A1E70  3A 73 00 01 */	addi r19, r19, 1
/* 803A1E74  3B 7B 00 02 */	addi r27, r27, 2
/* 803A1E78  2C 13 00 10 */	cmpwi r19, 0x10
/* 803A1E7C  41 80 FF AC */	blt lbl_803A1E28
/* 803A1E80  3A 94 00 01 */	addi r20, r20, 1
/* 803A1E84  2C 14 00 10 */	cmpwi r20, 0x10
/* 803A1E88  41 80 FF 9C */	blt lbl_803A1E24
/* 803A1E8C  48 00 00 30 */	b lbl_803A1EBC
lbl_803A1E90:
/* 803A1E90  3A 80 00 00 */	li r20, 0
lbl_803A1E94:
/* 803A1E94  A0 7B 00 00 */	lhz r3, 0(r27)
/* 803A1E98  4B FF F7 51 */	bl mFAs_CheckDust
/* 803A1E9C  2C 03 00 01 */	cmpwi r3, 1
/* 803A1EA0  40 82 00 0C */	bne lbl_803A1EAC
/* 803A1EA4  3B 5A 00 01 */	addi r26, r26, 1
/* 803A1EA8  3B 39 00 01 */	addi r25, r25, 1
lbl_803A1EAC:
/* 803A1EAC  3A 94 00 01 */	addi r20, r20, 1
/* 803A1EB0  3B 7B 00 02 */	addi r27, r27, 2
/* 803A1EB4  2C 14 01 00 */	cmpwi r20, 0x100
/* 803A1EB8  41 80 FF DC */	blt lbl_803A1E94
lbl_803A1EBC:
/* 803A1EBC  2C 19 00 00 */	cmpwi r25, 0
/* 803A1EC0  41 82 00 58 */	beq lbl_803A1F18
/* 803A1EC4  2C 1D 00 00 */	cmpwi r29, 0
/* 803A1EC8  40 82 00 18 */	bne lbl_803A1EE0
/* 803A1ECC  38 77 00 01 */	addi r3, r23, 1
/* 803A1ED0  38 18 00 01 */	addi r0, r24, 1
/* 803A1ED4  90 75 00 00 */	stw r3, 0(r21)
/* 803A1ED8  90 16 00 00 */	stw r0, 0(r22)
/* 803A1EDC  48 00 00 3C */	b lbl_803A1F18
lbl_803A1EE0:
/* 803A1EE0  4B CB AE 15 */	bl fqrand
/* 803A1EE4  3C 60 80 64 */	lis r3, data_80641EEC@ha /* 0x80641EEC@ha */
/* 803A1EE8  C0 03 1E EC */	lfs f0, data_80641EEC@l(r3)  /* 0x80641EEC@l */
/* 803A1EEC  EC 00 00 72 */	fmuls f0, f0, f1
/* 803A1EF0  FC 00 00 1E */	fctiwz f0, f0
/* 803A1EF4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 803A1EF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A1EFC  2C 00 00 01 */	cmpwi r0, 1
/* 803A1F00  40 82 00 14 */	bne lbl_803A1F14
/* 803A1F04  38 77 00 01 */	addi r3, r23, 1
/* 803A1F08  38 18 00 01 */	addi r0, r24, 1
/* 803A1F0C  90 75 00 00 */	stw r3, 0(r21)
/* 803A1F10  90 16 00 00 */	stw r0, 0(r22)
lbl_803A1F14:
/* 803A1F14  3B A0 00 01 */	li r29, 1
lbl_803A1F18:
/* 803A1F18  3A F7 00 01 */	addi r23, r23, 1
/* 803A1F1C  3B 9C 02 00 */	addi r28, r28, 0x200
/* 803A1F20  2C 17 00 05 */	cmpwi r23, 5
/* 803A1F24  41 80 FE C0 */	blt lbl_803A1DE4
/* 803A1F28  3B 18 00 01 */	addi r24, r24, 1
/* 803A1F2C  2C 18 00 06 */	cmpwi r24, 6
/* 803A1F30  41 80 FE B0 */	blt lbl_803A1DE0
/* 803A1F34  7F 43 D3 78 */	mr r3, r26
/* 803A1F38  39 61 00 60 */	addi r11, r1, 0x60
/* 803A1F3C  4B CF 8F BD */	bl func_8009AEF8
/* 803A1F40  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803A1F44  7C 08 03 A6 */	mtlr r0
/* 803A1F48  38 21 00 60 */	addi r1, r1, 0x60
/* 803A1F4C  4E 80 00 20 */	blr 
