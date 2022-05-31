lbl_804B2EE0:
/* 804B2EE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804B2EE4  7C 08 02 A6 */	mflr r0
/* 804B2EE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B2EEC  39 61 00 40 */	addi r11, r1, 0x40
/* 804B2EF0  4B BE 7F DD */	bl func_8009AECC
/* 804B2EF4  7C BF 2B 78 */	mr r31, r5
/* 804B2EF8  7C 7B 1B 78 */	mr r27, r3
/* 804B2EFC  80 A5 00 00 */	lwz r5, 0(r5)
/* 804B2F00  7C 9C 23 78 */	mr r28, r4
/* 804B2F04  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B2F08  38 61 00 14 */	addi r3, r1, 0x14
/* 804B2F0C  3B A0 00 00 */	li r29, 0
/* 804B2F10  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804B2F14  90 01 00 18 */	stw r0, 0x18(r1)
/* 804B2F18  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B2F1C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B2F20  4B EF 45 11 */	bl mFI_GetUnitFG
/* 804B2F24  7C 7E 1B 78 */	mr r30, r3
/* 804B2F28  A0 03 00 00 */	lhz r0, 0(r3)
/* 804B2F2C  28 00 00 00 */	cmplwi r0, 0
/* 804B2F30  41 82 00 1C */	beq lbl_804B2F4C
/* 804B2F34  28 00 00 11 */	cmplwi r0, 0x11
/* 804B2F38  41 80 00 0C */	blt lbl_804B2F44
/* 804B2F3C  28 00 00 29 */	cmplwi r0, 0x29
/* 804B2F40  40 81 00 0C */	ble lbl_804B2F4C
lbl_804B2F44:
/* 804B2F44  28 00 00 5D */	cmplwi r0, 0x5d
/* 804B2F48  40 82 00 BC */	bne lbl_804B3004
lbl_804B2F4C:
/* 804B2F4C  57 60 A7 3F */	rlwinm. r0, r27, 0x14, 0x1c, 0x1f
/* 804B2F50  38 E0 00 00 */	li r7, 0
/* 804B2F54  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 804B2F58  40 82 00 24 */	bne lbl_804B2F7C
/* 804B2F5C  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 804B2F60  2C 00 00 08 */	cmpwi r0, 8
/* 804B2F64  40 82 00 0C */	bne lbl_804B2F70
/* 804B2F68  38 E0 00 03 */	li r7, 3
/* 804B2F6C  48 00 00 10 */	b lbl_804B2F7C
lbl_804B2F70:
/* 804B2F70  2C 00 00 00 */	cmpwi r0, 0
/* 804B2F74  40 82 00 08 */	bne lbl_804B2F7C
/* 804B2F78  38 E0 00 01 */	li r7, 1
lbl_804B2F7C:
/* 804B2F7C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B2F80  7F 64 DB 78 */	mr r4, r27
/* 804B2F84  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804B2F88  7F 85 E3 78 */	mr r5, r28
/* 804B2F8C  3C 63 00 02 */	addis r3, r3, 2
/* 804B2F90  7F E6 FB 78 */	mr r6, r31
/* 804B2F94  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804B2F98  39 00 00 00 */	li r8, 0
/* 804B2F9C  80 63 00 00 */	lwz r3, 0(r3)
/* 804B2FA0  3C 63 00 01 */	addis r3, r3, 1
/* 804B2FA4  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804B2FA8  48 00 02 95 */	bl bIT_actor_drop_entry
/* 804B2FAC  2C 03 00 00 */	cmpwi r3, 0
/* 804B2FB0  41 82 00 58 */	beq lbl_804B3008
/* 804B2FB4  A0 1E 00 00 */	lhz r0, 0(r30)
/* 804B2FB8  28 00 00 11 */	cmplwi r0, 0x11
/* 804B2FBC  41 80 00 0C */	blt lbl_804B2FC8
/* 804B2FC0  28 00 00 29 */	cmplwi r0, 0x29
/* 804B2FC4  40 81 00 38 */	ble lbl_804B2FFC
lbl_804B2FC8:
/* 804B2FC8  28 00 00 5D */	cmplwi r0, 0x5d
/* 804B2FCC  41 82 00 30 */	beq lbl_804B2FFC
/* 804B2FD0  80 DF 00 00 */	lwz r6, 0(r31)
/* 804B2FD4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804B2FD8  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B2FDC  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804B2FE0  38 81 00 08 */	addi r4, r1, 8
/* 804B2FE4  38 A0 00 00 */	li r5, 0
/* 804B2FE8  90 C1 00 08 */	stw r6, 8(r1)
/* 804B2FEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B2FF0  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B2FF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B2FF8  4B EF 48 39 */	bl mFI_SetFG_common
lbl_804B2FFC:
/* 804B2FFC  3B A0 00 01 */	li r29, 1
/* 804B3000  48 00 00 08 */	b lbl_804B3008
lbl_804B3004:
/* 804B3004  3B A0 FF FF */	li r29, -1
lbl_804B3008:
/* 804B3008  7F A3 EB 78 */	mr r3, r29
/* 804B300C  39 61 00 40 */	addi r11, r1, 0x40
/* 804B3010  4B BE 7F 09 */	bl func_8009AF18
/* 804B3014  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B3018  7C 08 03 A6 */	mtlr r0
/* 804B301C  38 21 00 40 */	addi r1, r1, 0x40
/* 804B3020  4E 80 00 20 */	blr 
