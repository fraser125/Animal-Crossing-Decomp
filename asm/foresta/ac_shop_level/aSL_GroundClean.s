lbl_8049F5CC:
/* 8049F5CC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8049F5D0  7C 08 02 A6 */	mflr r0
/* 8049F5D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8049F5D8  39 61 00 40 */	addi r11, r1, 0x40
/* 8049F5DC  4B BF B8 D1 */	bl func_8009AEAC
/* 8049F5E0  7C 93 23 78 */	mr r19, r4
/* 8049F5E4  7C B8 2B 78 */	mr r24, r5
/* 8049F5E8  7D 19 43 78 */	mr r25, r8
/* 8049F5EC  7D 3A 4B 78 */	mr r26, r9
/* 8049F5F0  7C C3 33 78 */	mr r3, r6
/* 8049F5F4  7C E4 3B 78 */	mr r4, r7
/* 8049F5F8  4B F0 96 39 */	bl mFI_GetDepositP
/* 8049F5FC  3C 80 80 69 */	lis r4, table@ha /* 0x8068E5E4@ha */
/* 8049F600  3C A0 80 69 */	lis r5, rw_cnt@ha /* 0x8068E5F4@ha */
/* 8049F604  38 C4 E5 E4 */	addi r6, r4, table@l /* 0x8068E5E4@l */
/* 8049F608  56 7E 17 3A */	rlwinm r30, r19, 2, 0x1c, 0x1d
/* 8049F60C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 8049F610  7F 86 F0 2E */	lwzx r28, r6, r30
/* 8049F614  7C 7B 1B 78 */	mr r27, r3
/* 8049F618  3B E5 E5 F4 */	addi r31, r5, rw_cnt@l /* 0x8068E5F4@l */
/* 8049F61C  3A C4 FF FF */	addi r22, r4, 0xFFFF /* 0x0000FFFF@l */
/* 8049F620  3B A0 00 00 */	li r29, 0
/* 8049F624  3A E0 00 00 */	li r23, 0
/* 8049F628  48 00 00 50 */	b lbl_8049F678
lbl_8049F62C:
/* 8049F62C  7C 9C BA 14 */	add r4, r28, r23
/* 8049F630  80 64 00 00 */	lwz r3, 0(r4)
/* 8049F634  80 04 00 04 */	lwz r0, 4(r4)
/* 8049F638  7C 99 1A 14 */	add r4, r25, r3
/* 8049F63C  7C 7A 02 14 */	add r3, r26, r0
/* 8049F640  54 94 07 3E */	clrlwi r20, r4, 0x1c
/* 8049F644  54 60 26 36 */	rlwinm r0, r3, 4, 0x18, 0x1b
/* 8049F648  54 73 07 3E */	clrlwi r19, r3, 0x1c
/* 8049F64C  7C 14 02 14 */	add r0, r20, r0
/* 8049F650  54 15 08 3C */	slwi r21, r0, 1
/* 8049F654  7C 78 AA 2E */	lhzx r3, r24, r21
/* 8049F658  4B F3 F1 F9 */	bl mPB_keep_item
/* 8049F65C  7F 63 DB 78 */	mr r3, r27
/* 8049F660  7E 84 A3 78 */	mr r4, r20
/* 8049F664  7E 65 9B 78 */	mr r5, r19
/* 8049F668  4B F0 97 A5 */	bl mFI_BlockDepositOFF
/* 8049F66C  7E D8 AB 2E */	sthx r22, r24, r21
/* 8049F670  3B BD 00 01 */	addi r29, r29, 1
/* 8049F674  3A F7 00 08 */	addi r23, r23, 8
lbl_8049F678:
/* 8049F678  7C 1F F0 2E */	lwzx r0, r31, r30
/* 8049F67C  7C 1D 00 00 */	cmpw r29, r0
/* 8049F680  41 80 FF AC */	blt lbl_8049F62C
/* 8049F684  39 61 00 40 */	addi r11, r1, 0x40
/* 8049F688  4B BF B8 71 */	bl func_8009AEF8
/* 8049F68C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8049F690  7C 08 03 A6 */	mtlr r0
/* 8049F694  38 21 00 40 */	addi r1, r1, 0x40
/* 8049F698  4E 80 00 20 */	blr 
