lbl_803AA024:
/* 803AA024  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803AA028  7C 08 02 A6 */	mflr r0
/* 803AA02C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803AA030  39 61 00 30 */	addi r11, r1, 0x30
/* 803AA034  4B CF 0E 99 */	bl func_8009AECC
/* 803AA038  7C 7B 1B 78 */	mr r27, r3
/* 803AA03C  7C 9C 23 78 */	mr r28, r4
/* 803AA040  7C BD 2B 78 */	mr r29, r5
/* 803AA044  7C DE 33 78 */	mr r30, r6
/* 803AA048  3B E0 00 00 */	li r31, 0
/* 803AA04C  4B FF AC 45 */	bl mFI_CheckFieldData
/* 803AA050  2C 03 00 01 */	cmpwi r3, 1
/* 803AA054  40 82 00 58 */	bne lbl_803AA0AC
/* 803AA058  4B FF AC 75 */	bl mFI_GetFieldId
/* 803AA05C  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 803AA060  40 82 00 4C */	bne lbl_803AA0AC
/* 803AA064  38 61 00 14 */	addi r3, r1, 0x14
/* 803AA068  38 81 00 10 */	addi r4, r1, 0x10
/* 803AA06C  38 A1 00 0C */	addi r5, r1, 0xc
/* 803AA070  38 C1 00 08 */	addi r6, r1, 8
/* 803AA074  4B FF 8B 01 */	bl mFM_GetPolicePos
/* 803AA078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AA07C  7C 1B 00 00 */	cmpw r27, r0
/* 803AA080  40 82 00 2C */	bne lbl_803AA0AC
/* 803AA084  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803AA088  7C 1C 00 00 */	cmpw r28, r0
/* 803AA08C  40 82 00 20 */	bne lbl_803AA0AC
/* 803AA090  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803AA094  7C 1D 00 00 */	cmpw r29, r0
/* 803AA098  40 82 00 14 */	bne lbl_803AA0AC
/* 803AA09C  80 01 00 08 */	lwz r0, 8(r1)
/* 803AA0A0  7C 1E 00 00 */	cmpw r30, r0
/* 803AA0A4  40 82 00 08 */	bne lbl_803AA0AC
/* 803AA0A8  3B E0 00 01 */	li r31, 1
lbl_803AA0AC:
/* 803AA0AC  7F E3 FB 78 */	mr r3, r31
/* 803AA0B0  39 61 00 30 */	addi r11, r1, 0x30
/* 803AA0B4  4B CF 0E 65 */	bl func_8009AF18
/* 803AA0B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803AA0BC  7C 08 03 A6 */	mtlr r0
/* 803AA0C0  38 21 00 30 */	addi r1, r1, 0x30
/* 803AA0C4  4E 80 00 20 */	blr 
