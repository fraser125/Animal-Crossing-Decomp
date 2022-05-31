lbl_804C1D5C:
/* 804C1D5C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C1D60  7C 08 02 A6 */	mflr r0
/* 804C1D64  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C1D68  39 61 00 40 */	addi r11, r1, 0x40
/* 804C1D6C  4B BD 91 61 */	bl func_8009AECC
/* 804C1D70  7C BF 2B 78 */	mr r31, r5
/* 804C1D74  7C 7B 1B 78 */	mr r27, r3
/* 804C1D78  80 A5 00 00 */	lwz r5, 0(r5)
/* 804C1D7C  7C 9C 23 78 */	mr r28, r4
/* 804C1D80  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C1D84  38 61 00 14 */	addi r3, r1, 0x14
/* 804C1D88  3B A0 00 00 */	li r29, 0
/* 804C1D8C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804C1D90  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C1D94  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C1D98  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C1D9C  4B EE 56 95 */	bl mFI_GetUnitFG
/* 804C1DA0  7C 7E 1B 78 */	mr r30, r3
/* 804C1DA4  A0 03 00 00 */	lhz r0, 0(r3)
/* 804C1DA8  28 00 00 00 */	cmplwi r0, 0
/* 804C1DAC  41 82 00 1C */	beq lbl_804C1DC8
/* 804C1DB0  28 00 00 11 */	cmplwi r0, 0x11
/* 804C1DB4  41 80 00 0C */	blt lbl_804C1DC0
/* 804C1DB8  28 00 00 29 */	cmplwi r0, 0x29
/* 804C1DBC  40 81 00 0C */	ble lbl_804C1DC8
lbl_804C1DC0:
/* 804C1DC0  28 00 00 5D */	cmplwi r0, 0x5d
/* 804C1DC4  40 82 00 BC */	bne lbl_804C1E80
lbl_804C1DC8:
/* 804C1DC8  57 60 A7 3F */	rlwinm. r0, r27, 0x14, 0x1c, 0x1f
/* 804C1DCC  38 E0 00 00 */	li r7, 0
/* 804C1DD0  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 804C1DD4  40 82 00 24 */	bne lbl_804C1DF8
/* 804C1DD8  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 804C1DDC  2C 00 00 08 */	cmpwi r0, 8
/* 804C1DE0  40 82 00 0C */	bne lbl_804C1DEC
/* 804C1DE4  38 E0 00 03 */	li r7, 3
/* 804C1DE8  48 00 00 10 */	b lbl_804C1DF8
lbl_804C1DEC:
/* 804C1DEC  2C 00 00 00 */	cmpwi r0, 0
/* 804C1DF0  40 82 00 08 */	bne lbl_804C1DF8
/* 804C1DF4  38 E0 00 01 */	li r7, 1
lbl_804C1DF8:
/* 804C1DF8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C1DFC  7F 64 DB 78 */	mr r4, r27
/* 804C1E00  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C1E04  7F 85 E3 78 */	mr r5, r28
/* 804C1E08  3C 63 00 02 */	addis r3, r3, 2
/* 804C1E0C  7F E6 FB 78 */	mr r6, r31
/* 804C1E10  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804C1E14  39 00 00 00 */	li r8, 0
/* 804C1E18  80 63 00 00 */	lwz r3, 0(r3)
/* 804C1E1C  3C 63 00 01 */	addis r3, r3, 1
/* 804C1E20  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804C1E24  48 00 02 95 */	bl bIT_actor_drop_entry
/* 804C1E28  2C 03 00 00 */	cmpwi r3, 0
/* 804C1E2C  41 82 00 58 */	beq lbl_804C1E84
/* 804C1E30  A0 1E 00 00 */	lhz r0, 0(r30)
/* 804C1E34  28 00 00 11 */	cmplwi r0, 0x11
/* 804C1E38  41 80 00 0C */	blt lbl_804C1E44
/* 804C1E3C  28 00 00 29 */	cmplwi r0, 0x29
/* 804C1E40  40 81 00 38 */	ble lbl_804C1E78
lbl_804C1E44:
/* 804C1E44  28 00 00 5D */	cmplwi r0, 0x5d
/* 804C1E48  41 82 00 30 */	beq lbl_804C1E78
/* 804C1E4C  80 DF 00 00 */	lwz r6, 0(r31)
/* 804C1E50  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804C1E54  80 1F 00 04 */	lwz r0, 4(r31)
/* 804C1E58  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804C1E5C  38 81 00 08 */	addi r4, r1, 8
/* 804C1E60  38 A0 00 00 */	li r5, 0
/* 804C1E64  90 C1 00 08 */	stw r6, 8(r1)
/* 804C1E68  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C1E6C  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C1E70  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C1E74  4B EE 59 BD */	bl mFI_SetFG_common
lbl_804C1E78:
/* 804C1E78  3B A0 00 01 */	li r29, 1
/* 804C1E7C  48 00 00 08 */	b lbl_804C1E84
lbl_804C1E80:
/* 804C1E80  3B A0 FF FF */	li r29, -1
lbl_804C1E84:
/* 804C1E84  7F A3 EB 78 */	mr r3, r29
/* 804C1E88  39 61 00 40 */	addi r11, r1, 0x40
/* 804C1E8C  4B BD 90 8D */	bl func_8009AF18
/* 804C1E90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C1E94  7C 08 03 A6 */	mtlr r0
/* 804C1E98  38 21 00 40 */	addi r1, r1, 0x40
/* 804C1E9C  4E 80 00 20 */	blr 
