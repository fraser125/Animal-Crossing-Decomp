lbl_8049C1E4:
/* 8049C1E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8049C1E8  7C 08 02 A6 */	mflr r0
/* 8049C1EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8049C1F0  39 61 00 40 */	addi r11, r1, 0x40
/* 8049C1F4  4B BF EC BD */	bl func_8009AEB0
/* 8049C1F8  7C 9E 23 78 */	mr r30, r4
/* 8049C1FC  7C 7D 1B 78 */	mr r29, r3
/* 8049C200  80 64 00 00 */	lwz r3, 0(r4)
/* 8049C204  7C BF 2B 78 */	mr r31, r5
/* 8049C208  80 84 00 04 */	lwz r4, 4(r4)
/* 8049C20C  7C D4 33 78 */	mr r20, r6
/* 8049C210  3A C0 00 00 */	li r22, 0
/* 8049C214  3A A0 00 00 */	li r21, 0
/* 8049C218  4B F0 AF 3D */	bl mFI_BkNumtoUtFGTop
/* 8049C21C  7C 60 1B 78 */	mr r0, r3
/* 8049C220  80 7E 00 00 */	lwz r3, 0(r30)
/* 8049C224  80 9E 00 04 */	lwz r4, 4(r30)
/* 8049C228  7C 1A 03 78 */	mr r26, r0
/* 8049C22C  4B F0 CA 05 */	bl mFI_GetDepositP
/* 8049C230  7C 60 1B 78 */	mr r0, r3
/* 8049C234  80 7E 00 00 */	lwz r3, 0(r30)
/* 8049C238  80 9E 00 04 */	lwz r4, 4(r30)
/* 8049C23C  7C 19 03 78 */	mr r25, r0
/* 8049C240  4B F0 A3 2D */	bl mFI_GetBkNum2ColTop
/* 8049C244  3C 80 80 69 */	lis r4, aSOI_chk_live_area_data@ha /* 0x8068E218@ha */
/* 8049C248  7C 78 1B 78 */	mr r24, r3
/* 8049C24C  3A E0 00 00 */	li r23, 0
/* 8049C250  3B 80 00 00 */	li r28, 0
/* 8049C254  3B 64 E2 18 */	addi r27, r4, aSOI_chk_live_area_data@l /* 0x8068E218@l */
lbl_8049C258:
/* 8049C258  92 E1 00 08 */	stw r23, 8(r1)
/* 8049C25C  7D 1B E2 14 */	add r8, r27, r28
/* 8049C260  7F E3 FB 78 */	mr r3, r31
/* 8049C264  7E 84 A3 78 */	mr r4, r20
/* 8049C268  81 88 00 04 */	lwz r12, 4(r8)
/* 8049C26C  7F 45 D3 78 */	mr r5, r26
/* 8049C270  7F 26 CB 78 */	mr r6, r25
/* 8049C274  7F 09 C3 78 */	mr r9, r24
/* 8049C278  7F CA F3 78 */	mr r10, r30
/* 8049C27C  A0 E8 00 00 */	lhz r7, 0(r8)
/* 8049C280  A1 08 00 02 */	lhz r8, 2(r8)
/* 8049C284  7D 89 03 A6 */	mtctr r12
/* 8049C288  4E 80 04 21 */	bctrl 
/* 8049C28C  2C 03 00 01 */	cmpwi r3, 1
/* 8049C290  40 82 00 28 */	bne lbl_8049C2B8
/* 8049C294  2C 17 00 09 */	cmpwi r23, 9
/* 8049C298  41 82 00 1C */	beq lbl_8049C2B4
/* 8049C29C  40 80 00 1C */	bge lbl_8049C2B8
/* 8049C2A0  2C 17 00 08 */	cmpwi r23, 8
/* 8049C2A4  40 80 00 08 */	bge lbl_8049C2AC
/* 8049C2A8  48 00 00 10 */	b lbl_8049C2B8
lbl_8049C2AC:
/* 8049C2AC  3A C0 00 01 */	li r22, 1
/* 8049C2B0  48 00 00 08 */	b lbl_8049C2B8
lbl_8049C2B4:
/* 8049C2B4  3A A0 00 01 */	li r21, 1
lbl_8049C2B8:
/* 8049C2B8  2C 03 00 00 */	cmpwi r3, 0
/* 8049C2BC  40 82 00 14 */	bne lbl_8049C2D0
/* 8049C2C0  7F E3 FB 78 */	mr r3, r31
/* 8049C2C4  7E 84 A3 78 */	mr r4, r20
/* 8049C2C8  7E E5 BB 78 */	mr r5, r23
/* 8049C2CC  4B FF F6 E9 */	bl aSOI_ins_clear_prob
lbl_8049C2D0:
/* 8049C2D0  3A F7 00 01 */	addi r23, r23, 1
/* 8049C2D4  3B 9C 00 0C */	addi r28, r28, 0xc
/* 8049C2D8  2C 17 00 0E */	cmpwi r23, 0xe
/* 8049C2DC  41 80 FF 7C */	blt lbl_8049C258
/* 8049C2E0  2C 16 00 01 */	cmpwi r22, 1
/* 8049C2E4  41 82 00 0C */	beq lbl_8049C2F0
/* 8049C2E8  2C 15 00 01 */	cmpwi r21, 1
/* 8049C2EC  40 82 00 18 */	bne lbl_8049C304
lbl_8049C2F0:
/* 8049C2F0  7F E3 FB 78 */	mr r3, r31
/* 8049C2F4  7E 84 A3 78 */	mr r4, r20
/* 8049C2F8  7E C5 B3 78 */	mr r5, r22
/* 8049C2FC  7E A6 AB 78 */	mr r6, r21
/* 8049C300  4B FF F6 E5 */	bl aSOI_ins_limit_insect_data
lbl_8049C304:
/* 8049C304  7F E3 FB 78 */	mr r3, r31
/* 8049C308  7E 84 A3 78 */	mr r4, r20
/* 8049C30C  7E C5 AB 78 */	or r5, r22, r21
/* 8049C310  4B FF F7 45 */	bl aSOI_ins_get_idx
/* 8049C314  2C 03 FF FF */	cmpwi r3, -1
/* 8049C318  41 82 00 38 */	beq lbl_8049C350
/* 8049C31C  1C 03 00 0C */	mulli r0, r3, 0xc
/* 8049C320  7E BF 02 14 */	add r21, r31, r0
/* 8049C324  88 95 00 04 */	lbz r4, 4(r21)
/* 8049C328  2C 04 00 0C */	cmpwi r4, 0xc
/* 8049C32C  40 80 00 24 */	bge lbl_8049C350
/* 8049C330  7F A3 EB 78 */	mr r3, r29
/* 8049C334  7F 45 D3 78 */	mr r5, r26
/* 8049C338  7F 06 C3 78 */	mr r6, r24
/* 8049C33C  4B FF FC 99 */	bl aSOI_make_live_ut
/* 8049C340  80 95 00 00 */	lwz r4, 0(r21)
/* 8049C344  7F A3 EB 78 */	mr r3, r29
/* 8049C348  7F C5 F3 78 */	mr r5, r30
/* 8049C34C  4B FF F8 65 */	bl aSOI_ins_set_insect_data
lbl_8049C350:
/* 8049C350  39 61 00 40 */	addi r11, r1, 0x40
/* 8049C354  4B BF EB A9 */	bl func_8009AEFC
/* 8049C358  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8049C35C  7C 08 03 A6 */	mtlr r0
/* 8049C360  38 21 00 40 */	addi r1, r1, 0x40
/* 8049C364  4E 80 00 20 */	blr 
