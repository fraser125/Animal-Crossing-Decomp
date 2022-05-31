lbl_80498AF8:
/* 80498AF8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80498AFC  7C 08 02 A6 */	mflr r0
/* 80498B00  90 01 00 44 */	stw r0, 0x44(r1)
/* 80498B04  39 61 00 40 */	addi r11, r1, 0x40
/* 80498B08  4B C0 23 BD */	bl func_8009AEC4
/* 80498B0C  7C 79 1B 78 */	mr r25, r3
/* 80498B10  7C 9D 23 78 */	mr r29, r4
/* 80498B14  7C BA 2B 78 */	mr r26, r5
/* 80498B18  7C DB 33 78 */	mr r27, r6
/* 80498B1C  7C FC 3B 78 */	mr r28, r7
/* 80498B20  38 61 00 0C */	addi r3, r1, 0xc
/* 80498B24  38 81 00 08 */	addi r4, r1, 8
/* 80498B28  3B E0 00 00 */	li r31, 0
/* 80498B2C  4B FF EF A5 */	bl aSNMgr_get_safe_utnum_in_block
/* 80498B30  2C 03 00 01 */	cmpwi r3, 1
/* 80498B34  40 82 00 78 */	bne lbl_80498BAC
/* 80498B38  57 BF 10 3A */	slwi r31, r29, 2
/* 80498B3C  81 19 01 BC */	lwz r8, 0x1bc(r25)
/* 80498B40  1C 1D 00 38 */	mulli r0, r29, 0x38
/* 80498B44  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80498B48  7C 79 FA 14 */	add r3, r25, r31
/* 80498B4C  80 E1 00 08 */	lwz r7, 8(r1)
/* 80498B50  83 A3 01 C8 */	lwz r29, 0x1c8(r3)
/* 80498B54  7F 44 D3 78 */	mr r4, r26
/* 80498B58  7F 65 DB 78 */	mr r5, r27
/* 80498B5C  7F C8 02 14 */	add r30, r8, r0
/* 80498B60  38 61 00 10 */	addi r3, r1, 0x10
/* 80498B64  4B F0 D1 01 */	bl mFI_BkandUtNum2Wpos
/* 80498B68  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80498B6C  28 1D 00 00 */	cmplwi r29, 0
/* 80498B70  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 80498B74  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80498B78  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80498B7C  41 82 00 2C */	beq lbl_80498BA8
/* 80498B80  7C 99 FA 14 */	add r4, r25, r31
/* 80498B84  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001A5E1@ha */
/* 80498B88  80 A4 02 5C */	lwz r5, 0x25c(r4)
/* 80498B8C  38 80 00 03 */	li r4, 3
/* 80498B90  38 03 A5 E1 */	addi r0, r3, 0xA5E1 /* 0x0001A5E1@l */
/* 80498B94  9B 9D 00 14 */	stb r28, 0x14(r29)
/* 80498B98  98 9D 00 15 */	stb r4, 0x15(r29)
/* 80498B9C  9B 5D 00 16 */	stb r26, 0x16(r29)
/* 80498BA0  9B 7D 00 17 */	stb r27, 0x17(r29)
/* 80498BA4  90 05 00 00 */	stw r0, 0(r5)
lbl_80498BA8:
/* 80498BA8  3B E0 00 01 */	li r31, 1
lbl_80498BAC:
/* 80498BAC  7F E3 FB 78 */	mr r3, r31
/* 80498BB0  39 61 00 40 */	addi r11, r1, 0x40
/* 80498BB4  4B C0 23 5D */	bl func_8009AF10
/* 80498BB8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80498BBC  7C 08 03 A6 */	mtlr r0
/* 80498BC0  38 21 00 40 */	addi r1, r1, 0x40
/* 80498BC4  4E 80 00 20 */	blr 
