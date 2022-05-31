lbl_803D3378:
/* 803D3378  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803D337C  7C 08 02 A6 */	mflr r0
/* 803D3380  90 01 00 54 */	stw r0, 0x54(r1)
/* 803D3384  39 61 00 50 */	addi r11, r1, 0x50
/* 803D3388  4B CC 7B 19 */	bl func_8009AEA0
/* 803D338C  7C B1 2B 78 */	mr r17, r5
/* 803D3390  7C D0 33 78 */	mr r16, r6
/* 803D3394  7C 72 1B 78 */	mr r18, r3
/* 803D3398  7C 93 23 78 */	mr r19, r4
/* 803D339C  7C F4 3B 78 */	mr r20, r7
/* 803D33A0  7E 23 8B 78 */	mr r3, r17
/* 803D33A4  7E 04 83 78 */	mr r4, r16
/* 803D33A8  4B FD 31 C5 */	bl mFI_GetBkNum2ColTop
/* 803D33AC  7C 7E 1B 78 */	mr r30, r3
/* 803D33B0  7E 23 8B 78 */	mr r3, r17
/* 803D33B4  7E 04 83 78 */	mr r4, r16
/* 803D33B8  4B FD 3D 9D */	bl mFI_BkNumtoUtFGTop
/* 803D33BC  2C 14 00 00 */	cmpwi r20, 0
/* 803D33C0  7C 7A 1B 78 */	mr r26, r3
/* 803D33C4  3B 20 00 10 */	li r25, 0x10
/* 803D33C8  3B 00 00 10 */	li r24, 0x10
/* 803D33CC  3A E0 00 00 */	li r23, 0
/* 803D33D0  41 80 00 0C */	blt lbl_803D33DC
/* 803D33D4  2C 14 00 09 */	cmpwi r20, 9
/* 803D33D8  40 81 00 0C */	ble lbl_803D33E4
lbl_803D33DC:
/* 803D33DC  38 60 00 00 */	li r3, 0
/* 803D33E0  48 00 01 44 */	b lbl_803D3524
lbl_803D33E4:
/* 803D33E4  28 1A 00 00 */	cmplwi r26, 0
/* 803D33E8  41 82 01 38 */	beq lbl_803D3520
/* 803D33EC  28 1E 00 00 */	cmplwi r30, 0
/* 803D33F0  41 82 01 30 */	beq lbl_803D3520
/* 803D33F4  3C 60 81 17 */	lis r3, hide_ut_bit@ha /* 0x8116C58C@ha */
/* 803D33F8  38 80 00 20 */	li r4, 0x20
/* 803D33FC  38 63 C5 8C */	addi r3, r3, hide_ut_bit@l /* 0x8116C58C@l */
/* 803D3400  4B C8 9C 69 */	bl bzero
/* 803D3404  3C 60 81 17 */	lis r3, hide_ut_bit@ha /* 0x8116C58C@ha */
/* 803D3408  7F 44 D3 78 */	mr r4, r26
/* 803D340C  38 63 C5 8C */	addi r3, r3, hide_ut_bit@l /* 0x8116C58C@l */
/* 803D3410  48 14 01 D1 */	bl mAGrw_SetHideUtInfo
/* 803D3414  3C 60 81 17 */	lis r3, hide_ut_bit@ha /* 0x8116C58C@ha */
/* 803D3418  7E 96 A3 78 */	mr r22, r20
/* 803D341C  23 94 00 10 */	subfic r28, r20, 0x10
/* 803D3420  56 90 20 36 */	slwi r16, r20, 4
/* 803D3424  3B E3 C5 8C */	addi r31, r3, hide_ut_bit@l /* 0x8116C58C@l */
/* 803D3428  56 91 08 3C */	slwi r17, r20, 1
/* 803D342C  48 00 00 EC */	b lbl_803D3518
lbl_803D3430:
/* 803D3430  7E 95 A3 78 */	mr r21, r20
/* 803D3434  23 B6 00 08 */	subfic r29, r22, 8
/* 803D3438  48 00 00 CC */	b lbl_803D3504
lbl_803D343C:
/* 803D343C  7C 75 82 14 */	add r3, r21, r16
/* 803D3440  54 60 10 3A */	slwi r0, r3, 2
/* 803D3444  7F 7E 02 14 */	add r27, r30, r0
/* 803D3448  54 63 08 3C */	slwi r3, r3, 1
/* 803D344C  88 1B 00 03 */	lbz r0, 3(r27)
/* 803D3450  7C 7A 1A 2E */	lhzx r3, r26, r3
/* 803D3454  54 04 06 BE */	clrlwi r4, r0, 0x1a
/* 803D3458  4B FF F8 E5 */	bl mNpc_CheckNpcSet_fgcol_hard
/* 803D345C  2C 03 00 01 */	cmpwi r3, 1
/* 803D3460  40 82 00 A0 */	bne lbl_803D3500
/* 803D3464  88 7B 00 00 */	lbz r3, 0(r27)
/* 803D3468  A0 1B 00 00 */	lhz r0, 0(r27)
/* 803D346C  54 63 F6 FE */	rlwinm r3, r3, 0x1e, 0x1b, 0x1f
/* 803D3470  54 00 DE FE */	rlwinm r0, r0, 0x1b, 0x1b, 0x1f
/* 803D3474  7C 03 00 00 */	cmpw r3, r0
/* 803D3478  40 82 00 88 */	bne lbl_803D3500
/* 803D347C  88 1B 00 01 */	lbz r0, 1(r27)
/* 803D3480  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 803D3484  7C 03 00 40 */	cmplw r3, r0
/* 803D3488  40 82 00 78 */	bne lbl_803D3500
/* 803D348C  88 1B 00 02 */	lbz r0, 2(r27)
/* 803D3490  54 00 EE FE */	rlwinm r0, r0, 0x1d, 0x1b, 0x1f
/* 803D3494  7C 03 00 40 */	cmplw r3, r0
/* 803D3498  40 82 00 68 */	bne lbl_803D3500
/* 803D349C  A0 1B 00 02 */	lhz r0, 2(r27)
/* 803D34A0  54 00 D6 FE */	rlwinm r0, r0, 0x1a, 0x1b, 0x1f
/* 803D34A4  7C 03 00 00 */	cmpw r3, r0
/* 803D34A8  40 82 00 58 */	bne lbl_803D3500
/* 803D34AC  7C 1F 8A 2E */	lhzx r0, r31, r17
/* 803D34B0  7C 00 AE 30 */	sraw r0, r0, r21
/* 803D34B4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803D34B8  2C 00 00 01 */	cmpwi r0, 1
/* 803D34BC  40 82 00 44 */	bne lbl_803D3500
/* 803D34C0  20 15 00 08 */	subfic r0, r21, 8
/* 803D34C4  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 803D34C8  7C 80 02 78 */	xor r0, r4, r0
/* 803D34CC  7F A3 FE 70 */	srawi r3, r29, 0x1f
/* 803D34D0  7C 84 00 50 */	subf r4, r4, r0
/* 803D34D4  7C 19 20 00 */	cmpw r25, r4
/* 803D34D8  7C 60 EA 78 */	xor r0, r3, r29
/* 803D34DC  7C 03 00 50 */	subf r0, r3, r0
/* 803D34E0  40 81 00 20 */	ble lbl_803D3500
/* 803D34E4  7C 18 00 00 */	cmpw r24, r0
/* 803D34E8  40 81 00 18 */	ble lbl_803D3500
/* 803D34EC  92 B2 00 00 */	stw r21, 0(r18)
/* 803D34F0  7C 99 23 78 */	mr r25, r4
/* 803D34F4  7C 18 03 78 */	mr r24, r0
/* 803D34F8  3A E0 00 01 */	li r23, 1
/* 803D34FC  92 D3 00 00 */	stw r22, 0(r19)
lbl_803D3500:
/* 803D3500  3A B5 00 01 */	addi r21, r21, 1
lbl_803D3504:
/* 803D3504  7C 15 E0 00 */	cmpw r21, r28
/* 803D3508  41 80 FF 34 */	blt lbl_803D343C
/* 803D350C  3A D6 00 01 */	addi r22, r22, 1
/* 803D3510  3A 31 00 02 */	addi r17, r17, 2
/* 803D3514  3A 10 00 10 */	addi r16, r16, 0x10
lbl_803D3518:
/* 803D3518  7C 16 E0 00 */	cmpw r22, r28
/* 803D351C  41 80 FF 14 */	blt lbl_803D3430
lbl_803D3520:
/* 803D3520  7E E3 BB 78 */	mr r3, r23
lbl_803D3524:
/* 803D3524  39 61 00 50 */	addi r11, r1, 0x50
/* 803D3528  4B CC 79 C5 */	bl func_8009AEEC
/* 803D352C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803D3530  7C 08 03 A6 */	mtlr r0
/* 803D3534  38 21 00 50 */	addi r1, r1, 0x50
/* 803D3538  4E 80 00 20 */	blr 
