lbl_803B1040:
/* 803B1040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1044  7C 08 02 A6 */	mflr r0
/* 803B1048  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B104C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B1050  7C 9F 23 78 */	mr r31, r4
/* 803B1054  93 C1 00 08 */	stw r30, 8(r1)
/* 803B1058  7C 7E 1B 78 */	mr r30, r3
/* 803B105C  80 63 00 08 */	lwz r3, 8(r3)
/* 803B1060  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 803B1064  40 82 00 20 */	bne lbl_803B1084
/* 803B1068  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 803B106C  41 82 00 10 */	beq lbl_803B107C
/* 803B1070  7F E3 FB 78 */	mr r3, r31
/* 803B1074  4B FF E7 D5 */	bl mFont_gppSetMode
/* 803B1078  48 00 00 0C */	b lbl_803B1084
lbl_803B107C:
/* 803B107C  7F E3 FB 78 */	mr r3, r31
/* 803B1080  48 00 04 55 */	bl func_803B14D4
lbl_803B1084:
/* 803B1084  80 9E 00 08 */	lwz r4, 8(r30)
/* 803B1088  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 803B108C  40 82 00 14 */	bne lbl_803B10A0
/* 803B1090  7F E3 FB 78 */	mr r3, r31
/* 803B1094  54 84 07 BC */	rlwinm r4, r4, 0, 0x1e, 0x1e
/* 803B1098  38 A0 00 00 */	li r5, 0
/* 803B109C  4B FF E9 4D */	bl mFont_gppSetCombineMode
lbl_803B10A0:
/* 803B10A0  80 1E 00 08 */	lwz r0, 8(r30)
/* 803B10A4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 803B10A8  40 82 00 10 */	bne lbl_803B10B8
/* 803B10AC  7F E3 FB 78 */	mr r3, r31
/* 803B10B0  38 9E 00 18 */	addi r4, r30, 0x18
/* 803B10B4  4B FF E8 45 */	bl mFont_gppSetPrimColor
lbl_803B10B8:
/* 803B10B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B10BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B10C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B10C4  7C 08 03 A6 */	mtlr r0
/* 803B10C8  38 21 00 10 */	addi r1, r1, 0x10
/* 803B10CC  4E 80 00 20 */	blr 
