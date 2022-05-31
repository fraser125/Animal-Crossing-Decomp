lbl_803D2E34:
/* 803D2E34  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803D2E38  7C 08 02 A6 */	mflr r0
/* 803D2E3C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803D2E40  39 61 00 40 */	addi r11, r1, 0x40
/* 803D2E44  4B CC 80 65 */	bl func_8009AEA8
/* 803D2E48  7C B6 2B 78 */	mr r22, r5
/* 803D2E4C  7C D2 33 78 */	mr r18, r6
/* 803D2E50  7C 73 1B 78 */	mr r19, r3
/* 803D2E54  7C 94 23 78 */	mr r20, r4
/* 803D2E58  7C F5 3B 78 */	mr r21, r7
/* 803D2E5C  7E C3 B3 78 */	mr r3, r22
/* 803D2E60  7E 44 93 78 */	mr r4, r18
/* 803D2E64  4B FD 37 09 */	bl mFI_GetBkNum2ColTop
/* 803D2E68  7C 7E 1B 78 */	mr r30, r3
/* 803D2E6C  7E C3 B3 78 */	mr r3, r22
/* 803D2E70  7E 44 93 78 */	mr r4, r18
/* 803D2E74  4B FD 42 E1 */	bl mFI_BkNumtoUtFGTop
/* 803D2E78  2C 15 00 00 */	cmpwi r21, 0
/* 803D2E7C  7C 7F 1B 78 */	mr r31, r3
/* 803D2E80  3B 40 00 10 */	li r26, 0x10
/* 803D2E84  3B 20 00 10 */	li r25, 0x10
/* 803D2E88  3B 00 00 00 */	li r24, 0
/* 803D2E8C  41 80 00 0C */	blt lbl_803D2E98
/* 803D2E90  2C 15 00 09 */	cmpwi r21, 9
/* 803D2E94  40 81 00 0C */	ble lbl_803D2EA0
lbl_803D2E98:
/* 803D2E98  38 60 00 00 */	li r3, 0
/* 803D2E9C  48 00 01 00 */	b lbl_803D2F9C
lbl_803D2EA0:
/* 803D2EA0  28 1F 00 00 */	cmplwi r31, 0
/* 803D2EA4  41 82 00 F4 */	beq lbl_803D2F98
/* 803D2EA8  28 1E 00 00 */	cmplwi r30, 0
/* 803D2EAC  41 82 00 EC */	beq lbl_803D2F98
/* 803D2EB0  7E B7 AB 78 */	mr r23, r21
/* 803D2EB4  23 95 00 10 */	subfic r28, r21, 0x10
/* 803D2EB8  56 B2 20 36 */	slwi r18, r21, 4
/* 803D2EBC  48 00 00 D4 */	b lbl_803D2F90
lbl_803D2EC0:
/* 803D2EC0  7E B6 AB 78 */	mr r22, r21
/* 803D2EC4  23 B7 00 08 */	subfic r29, r23, 8
/* 803D2EC8  48 00 00 B8 */	b lbl_803D2F80
lbl_803D2ECC:
/* 803D2ECC  7C 76 92 14 */	add r3, r22, r18
/* 803D2ED0  54 60 10 3A */	slwi r0, r3, 2
/* 803D2ED4  7F 7E 02 14 */	add r27, r30, r0
/* 803D2ED8  54 63 08 3C */	slwi r3, r3, 1
/* 803D2EDC  88 1B 00 03 */	lbz r0, 3(r27)
/* 803D2EE0  7C 7F 1A 2E */	lhzx r3, r31, r3
/* 803D2EE4  54 04 06 BE */	clrlwi r4, r0, 0x1a
/* 803D2EE8  4B FF FE 55 */	bl mNpc_CheckNpcSet_fgcol_hard
/* 803D2EEC  2C 03 00 01 */	cmpwi r3, 1
/* 803D2EF0  40 82 00 8C */	bne lbl_803D2F7C
/* 803D2EF4  88 7B 00 00 */	lbz r3, 0(r27)
/* 803D2EF8  A0 1B 00 00 */	lhz r0, 0(r27)
/* 803D2EFC  54 63 F6 FE */	rlwinm r3, r3, 0x1e, 0x1b, 0x1f
/* 803D2F00  54 00 DE FE */	rlwinm r0, r0, 0x1b, 0x1b, 0x1f
/* 803D2F04  7C 03 00 00 */	cmpw r3, r0
/* 803D2F08  40 82 00 74 */	bne lbl_803D2F7C
/* 803D2F0C  88 1B 00 01 */	lbz r0, 1(r27)
/* 803D2F10  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 803D2F14  7C 03 00 40 */	cmplw r3, r0
/* 803D2F18  40 82 00 64 */	bne lbl_803D2F7C
/* 803D2F1C  88 1B 00 02 */	lbz r0, 2(r27)
/* 803D2F20  54 00 EE FE */	rlwinm r0, r0, 0x1d, 0x1b, 0x1f
/* 803D2F24  7C 03 00 40 */	cmplw r3, r0
/* 803D2F28  40 82 00 54 */	bne lbl_803D2F7C
/* 803D2F2C  A0 1B 00 02 */	lhz r0, 2(r27)
/* 803D2F30  54 00 D6 FE */	rlwinm r0, r0, 0x1a, 0x1b, 0x1f
/* 803D2F34  7C 03 00 00 */	cmpw r3, r0
/* 803D2F38  40 82 00 44 */	bne lbl_803D2F7C
/* 803D2F3C  20 16 00 08 */	subfic r0, r22, 8
/* 803D2F40  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 803D2F44  7C 80 02 78 */	xor r0, r4, r0
/* 803D2F48  7F A3 FE 70 */	srawi r3, r29, 0x1f
/* 803D2F4C  7C 84 00 50 */	subf r4, r4, r0
/* 803D2F50  7C 1A 20 00 */	cmpw r26, r4
/* 803D2F54  7C 60 EA 78 */	xor r0, r3, r29
/* 803D2F58  7C 03 00 50 */	subf r0, r3, r0
/* 803D2F5C  40 81 00 20 */	ble lbl_803D2F7C
/* 803D2F60  7C 19 00 00 */	cmpw r25, r0
/* 803D2F64  40 81 00 18 */	ble lbl_803D2F7C
/* 803D2F68  92 D3 00 00 */	stw r22, 0(r19)
/* 803D2F6C  7C 9A 23 78 */	mr r26, r4
/* 803D2F70  7C 19 03 78 */	mr r25, r0
/* 803D2F74  3B 00 00 01 */	li r24, 1
/* 803D2F78  92 F4 00 00 */	stw r23, 0(r20)
lbl_803D2F7C:
/* 803D2F7C  3A D6 00 01 */	addi r22, r22, 1
lbl_803D2F80:
/* 803D2F80  7C 16 E0 00 */	cmpw r22, r28
/* 803D2F84  41 80 FF 48 */	blt lbl_803D2ECC
/* 803D2F88  3A F7 00 01 */	addi r23, r23, 1
/* 803D2F8C  3A 52 00 10 */	addi r18, r18, 0x10
lbl_803D2F90:
/* 803D2F90  7C 17 E0 00 */	cmpw r23, r28
/* 803D2F94  41 80 FF 2C */	blt lbl_803D2EC0
lbl_803D2F98:
/* 803D2F98  7F 03 C3 78 */	mr r3, r24
lbl_803D2F9C:
/* 803D2F9C  39 61 00 40 */	addi r11, r1, 0x40
/* 803D2FA0  4B CC 7F 55 */	bl func_8009AEF4
/* 803D2FA4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803D2FA8  7C 08 03 A6 */	mtlr r0
/* 803D2FAC  38 21 00 40 */	addi r1, r1, 0x40
/* 803D2FB0  4E 80 00 20 */	blr 
