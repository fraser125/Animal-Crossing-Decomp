lbl_8037FA7C:
/* 8037FA7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037FA80  7C 08 02 A6 */	mflr r0
/* 8037FA84  90 01 00 34 */	stw r0, 0x34(r1)
/* 8037FA88  39 61 00 30 */	addi r11, r1, 0x30
/* 8037FA8C  4B D1 B4 45 */	bl func_8009AED0
/* 8037FA90  7C 9D 23 78 */	mr r29, r4
/* 8037FA94  7C 7C 1B 78 */	mr r28, r3
/* 8037FA98  80 E4 00 00 */	lwz r7, 0(r4)
/* 8037FA9C  38 61 00 0C */	addi r3, r1, 0xc
/* 8037FAA0  80 C4 00 04 */	lwz r6, 4(r4)
/* 8037FAA4  38 81 00 08 */	addi r4, r1, 8
/* 8037FAA8  80 1D 00 08 */	lwz r0, 8(r29)
/* 8037FAAC  38 A1 00 10 */	addi r5, r1, 0x10
/* 8037FAB0  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8037FAB4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8037FAB8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8037FABC  48 02 58 AD */	bl mFI_Wpos2UtNum
/* 8037FAC0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8037FAC4  37 E3 FF FC */	addic. r31, r3, -4
/* 8037FAC8  40 80 00 08 */	bge lbl_8037FAD0
/* 8037FACC  3B E0 00 00 */	li r31, 0
lbl_8037FAD0:
/* 8037FAD0  3B C3 00 04 */	addi r30, r3, 4
/* 8037FAD4  80 C1 00 08 */	lwz r6, 8(r1)
/* 8037FAD8  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8037FADC  7F 83 E3 78 */	mr r3, r28
/* 8037FAE0  7F E4 FB 78 */	mr r4, r31
/* 8037FAE4  7F C5 F3 78 */	mr r5, r30
/* 8037FAE8  4B FF FE B5 */	bl Camera2_TalkCheckCliffLRRange
/* 8037FAEC  2C 03 00 00 */	cmpwi r3, 0
/* 8037FAF0  40 82 00 4C */	bne lbl_8037FB3C
/* 8037FAF4  80 C1 00 08 */	lwz r6, 8(r1)
/* 8037FAF8  7F 83 E3 78 */	mr r3, r28
/* 8037FAFC  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8037FB00  7F E4 FB 78 */	mr r4, r31
/* 8037FB04  7F C5 F3 78 */	mr r5, r30
/* 8037FB08  38 C6 00 03 */	addi r6, r6, 3
/* 8037FB0C  4B FF FE 91 */	bl Camera2_TalkCheckCliffLRRange
/* 8037FB10  2C 03 00 00 */	cmpwi r3, 0
/* 8037FB14  40 82 00 28 */	bne lbl_8037FB3C
/* 8037FB18  80 C1 00 08 */	lwz r6, 8(r1)
/* 8037FB1C  7F 83 E3 78 */	mr r3, r28
/* 8037FB20  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8037FB24  7F E4 FB 78 */	mr r4, r31
/* 8037FB28  7F C5 F3 78 */	mr r5, r30
/* 8037FB2C  38 C6 00 06 */	addi r6, r6, 6
/* 8037FB30  4B FF FE 6D */	bl Camera2_TalkCheckCliffLRRange
/* 8037FB34  2C 03 00 00 */	cmpwi r3, 0
/* 8037FB38  41 82 00 0C */	beq lbl_8037FB44
lbl_8037FB3C:
/* 8037FB3C  38 60 00 01 */	li r3, 1
/* 8037FB40  48 00 00 08 */	b lbl_8037FB48
lbl_8037FB44:
/* 8037FB44  38 60 00 00 */	li r3, 0
lbl_8037FB48:
/* 8037FB48  39 61 00 30 */	addi r11, r1, 0x30
/* 8037FB4C  4B D1 B3 D1 */	bl func_8009AF1C
/* 8037FB50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8037FB54  7C 08 03 A6 */	mtlr r0
/* 8037FB58  38 21 00 30 */	addi r1, r1, 0x30
/* 8037FB5C  4E 80 00 20 */	blr 
