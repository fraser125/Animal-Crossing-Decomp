lbl_803D3260:
/* 803D3260  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803D3264  7C 08 02 A6 */	mflr r0
/* 803D3268  90 01 00 54 */	stw r0, 0x54(r1)
/* 803D326C  39 61 00 50 */	addi r11, r1, 0x50
/* 803D3270  4B CC 7C 35 */	bl func_8009AEA4
/* 803D3274  7C F9 3B 78 */	mr r25, r7
/* 803D3278  7D 1A 43 78 */	mr r26, r8
/* 803D327C  7C 75 1B 78 */	mr r21, r3
/* 803D3280  7C 96 23 78 */	mr r22, r4
/* 803D3284  7C B7 2B 78 */	mr r23, r5
/* 803D3288  7C D8 33 78 */	mr r24, r6
/* 803D328C  7F 23 CB 78 */	mr r3, r25
/* 803D3290  7F 44 D3 78 */	mr r4, r26
/* 803D3294  4B FD 32 D9 */	bl mFI_GetBkNum2ColTop
/* 803D3298  7C 7D 1B 78 */	mr r29, r3
/* 803D329C  7F 23 CB 78 */	mr r3, r25
/* 803D32A0  7F 44 D3 78 */	mr r4, r26
/* 803D32A4  4B FD 3E B1 */	bl mFI_BkNumtoUtFGTop
/* 803D32A8  28 1D 00 00 */	cmplwi r29, 0
/* 803D32AC  7C 7E 1B 78 */	mr r30, r3
/* 803D32B0  3B 80 00 00 */	li r28, 0
/* 803D32B4  41 82 00 A8 */	beq lbl_803D335C
/* 803D32B8  28 1E 00 00 */	cmplwi r30, 0
/* 803D32BC  41 82 00 A0 */	beq lbl_803D335C
/* 803D32C0  3C 80 80 66 */	lis r4, ut_xnum_table@ha /* 0x8065B344@ha */
/* 803D32C4  3C 60 80 66 */	lis r3, ut_znum_table@ha /* 0x8065B368@ha */
/* 803D32C8  3B E4 B3 44 */	addi r31, r4, ut_xnum_table@l /* 0x8065B344@l */
/* 803D32CC  3B 60 00 00 */	li r27, 0
/* 803D32D0  3A 63 B3 68 */	addi r19, r3, ut_znum_table@l /* 0x8065B368@l */
/* 803D32D4  3A 80 00 00 */	li r20, 0
lbl_803D32D8:
/* 803D32D8  7C 7F A0 2E */	lwzx r3, r31, r20
/* 803D32DC  7C 13 A0 2E */	lwzx r0, r19, r20
/* 803D32E0  7E 57 1A 14 */	add r18, r23, r3
/* 803D32E4  2C 12 00 01 */	cmpwi r18, 1
/* 803D32E8  7E 38 02 14 */	add r17, r24, r0
/* 803D32EC  41 80 00 60 */	blt lbl_803D334C
/* 803D32F0  2C 12 00 0F */	cmpwi r18, 0xf
/* 803D32F4  40 80 00 58 */	bge lbl_803D334C
/* 803D32F8  2C 11 00 01 */	cmpwi r17, 1
/* 803D32FC  41 80 00 50 */	blt lbl_803D334C
/* 803D3300  2C 11 00 0F */	cmpwi r17, 0xf
/* 803D3304  40 80 00 48 */	bge lbl_803D334C
/* 803D3308  56 20 20 36 */	slwi r0, r17, 4
/* 803D330C  7F 23 CB 78 */	mr r3, r25
/* 803D3310  7C 12 02 14 */	add r0, r18, r0
/* 803D3314  7F 44 D3 78 */	mr r4, r26
/* 803D3318  54 06 08 3C */	slwi r6, r0, 1
/* 803D331C  7E 45 93 78 */	mr r5, r18
/* 803D3320  54 00 10 3A */	slwi r0, r0, 2
/* 803D3324  7C FE 32 2E */	lhzx r7, r30, r6
/* 803D3328  7E 26 8B 78 */	mr r6, r17
/* 803D332C  7D 1D 02 14 */	add r8, r29, r0
/* 803D3330  4B FF FE 89 */	bl mNpc_CheckNpcSet_height
/* 803D3334  2C 03 00 01 */	cmpwi r3, 1
/* 803D3338  40 82 00 14 */	bne lbl_803D334C
/* 803D333C  92 55 00 00 */	stw r18, 0(r21)
/* 803D3340  3B 80 00 01 */	li r28, 1
/* 803D3344  92 36 00 00 */	stw r17, 0(r22)
/* 803D3348  48 00 00 14 */	b lbl_803D335C
lbl_803D334C:
/* 803D334C  3B 7B 00 01 */	addi r27, r27, 1
/* 803D3350  3A 94 00 04 */	addi r20, r20, 4
/* 803D3354  2C 1B 00 09 */	cmpwi r27, 9
/* 803D3358  41 80 FF 80 */	blt lbl_803D32D8
lbl_803D335C:
/* 803D335C  7F 83 E3 78 */	mr r3, r28
/* 803D3360  39 61 00 50 */	addi r11, r1, 0x50
/* 803D3364  4B CC 7B 8D */	bl func_8009AEF0
/* 803D3368  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803D336C  7C 08 03 A6 */	mtlr r0
/* 803D3370  38 21 00 50 */	addi r1, r1, 0x50
/* 803D3374  4E 80 00 20 */	blr 
