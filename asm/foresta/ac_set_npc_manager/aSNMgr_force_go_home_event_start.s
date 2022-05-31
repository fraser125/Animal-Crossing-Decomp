lbl_80498D58:
/* 80498D58  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80498D5C  7C 08 02 A6 */	mflr r0
/* 80498D60  90 01 00 44 */	stw r0, 0x44(r1)
/* 80498D64  39 61 00 40 */	addi r11, r1, 0x40
/* 80498D68  4B C0 21 61 */	bl func_8009AEC8
/* 80498D6C  7C 7A 1B 78 */	mr r26, r3
/* 80498D70  38 00 00 00 */	li r0, 0
/* 80498D74  83 E3 01 B8 */	lwz r31, 0x1b8(r3)
/* 80498D78  83 C3 01 BC */	lwz r30, 0x1bc(r3)
/* 80498D7C  83 A3 01 90 */	lwz r29, 0x190(r3)
/* 80498D80  83 83 01 94 */	lwz r28, 0x194(r3)
/* 80498D84  90 01 00 0C */	stw r0, 0xc(r1)
/* 80498D88  90 01 00 08 */	stw r0, 8(r1)
/* 80498D8C  4B F0 67 21 */	bl mEvMN_GetEventTypeMap
/* 80498D90  2C 03 FF FF */	cmpwi r3, -1
/* 80498D94  41 82 00 28 */	beq lbl_80498DBC
/* 80498D98  4B F0 66 D1 */	bl mEvMN_GetMapIdx
/* 80498D9C  2C 03 FF FF */	cmpwi r3, -1
/* 80498DA0  41 82 00 1C */	beq lbl_80498DBC
/* 80498DA4  4B F0 67 A5 */	bl mEvMN_GetEventBlockKind
/* 80498DA8  7C 60 1B 78 */	mr r0, r3
/* 80498DAC  38 61 00 0C */	addi r3, r1, 0xc
/* 80498DB0  7C 05 03 78 */	mr r5, r0
/* 80498DB4  38 81 00 08 */	addi r4, r1, 8
/* 80498DB8  4B F0 D6 49 */	bl mFI_BlockKind2BkNum
lbl_80498DBC:
/* 80498DBC  3B 60 00 00 */	li r27, 0
lbl_80498DC0:
/* 80498DC0  A0 1A 02 98 */	lhz r0, 0x298(r26)
/* 80498DC4  7C 00 DE 30 */	sraw r0, r0, r27
/* 80498DC8  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80498DCC  2C 00 00 01 */	cmpwi r0, 1
/* 80498DD0  40 82 00 B0 */	bne lbl_80498E80
/* 80498DD4  A0 1A 02 9C */	lhz r0, 0x29c(r26)
/* 80498DD8  7C 00 DE 30 */	sraw r0, r0, r27
/* 80498DDC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80498DE0  40 82 00 A0 */	bne lbl_80498E80
/* 80498DE4  80 DE 00 10 */	lwz r6, 0x10(r30)
/* 80498DE8  38 61 00 14 */	addi r3, r1, 0x14
/* 80498DEC  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80498DF0  38 81 00 10 */	addi r4, r1, 0x10
/* 80498DF4  38 A1 00 18 */	addi r5, r1, 0x18
/* 80498DF8  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80498DFC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80498E00  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80498E04  90 01 00 20 */	stw r0, 0x20(r1)
/* 80498E08  4B F0 C9 59 */	bl mFI_Wpos2BlockNum
/* 80498E0C  2C 03 00 01 */	cmpwi r3, 1
/* 80498E10  40 82 00 70 */	bne lbl_80498E80
/* 80498E14  88 1F 08 E8 */	lbz r0, 0x8e8(r31)
/* 80498E18  28 00 00 00 */	cmplwi r0, 0
/* 80498E1C  40 82 00 64 */	bne lbl_80498E80
/* 80498E20  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80498E24  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80498E28  7C 03 28 00 */	cmpw r3, r5
/* 80498E2C  40 82 00 54 */	bne lbl_80498E80
/* 80498E30  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80498E34  80 C1 00 08 */	lwz r6, 8(r1)
/* 80498E38  7C 04 30 00 */	cmpw r4, r6
/* 80498E3C  40 82 00 44 */	bne lbl_80498E80
/* 80498E40  88 1F 08 99 */	lbz r0, 0x899(r31)
/* 80498E44  7C 00 18 00 */	cmpw r0, r3
/* 80498E48  40 82 00 10 */	bne lbl_80498E58
/* 80498E4C  88 1F 08 9A */	lbz r0, 0x89a(r31)
/* 80498E50  7C 00 20 00 */	cmpw r0, r4
/* 80498E54  41 82 00 2C */	beq lbl_80498E80
lbl_80498E58:
/* 80498E58  7F 43 D3 78 */	mr r3, r26
/* 80498E5C  7F 64 DB 78 */	mr r4, r27
/* 80498E60  7F A7 EB 78 */	mr r7, r29
/* 80498E64  7F 88 E3 78 */	mr r8, r28
/* 80498E68  4B FF FD 61 */	bl aSNMgr_set_go_home_status
/* 80498E6C  2C 03 00 00 */	cmpwi r3, 0
/* 80498E70  40 82 00 10 */	bne lbl_80498E80
/* 80498E74  7F 43 D3 78 */	mr r3, r26
/* 80498E78  7F 64 DB 78 */	mr r4, r27
/* 80498E7C  4B FF FE 45 */	bl aSNMgr_set_stay_home_status
lbl_80498E80:
/* 80498E80  3B 7B 00 01 */	addi r27, r27, 1
/* 80498E84  3B DE 00 38 */	addi r30, r30, 0x38
/* 80498E88  2C 1B 00 0F */	cmpwi r27, 0xf
/* 80498E8C  3B FF 09 88 */	addi r31, r31, 0x988
/* 80498E90  41 80 FF 30 */	blt lbl_80498DC0
/* 80498E94  39 61 00 40 */	addi r11, r1, 0x40
/* 80498E98  4B C0 20 7D */	bl func_8009AF14
/* 80498E9C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80498EA0  7C 08 03 A6 */	mtlr r0
/* 80498EA4  38 21 00 40 */	addi r1, r1, 0x40
/* 80498EA8  4E 80 00 20 */	blr 
