lbl_80503AF0:
/* 80503AF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80503AF4  7C 08 02 A6 */	mflr r0
/* 80503AF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80503AFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80503B00  4B B9 73 D1 */	bl func_8009AED0
/* 80503B04  7C 7C 1B 78 */	mr r28, r3
/* 80503B08  7C 9D 23 78 */	mr r29, r4
/* 80503B0C  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 80503B10  2C 00 00 00 */	cmpwi r0, 0
/* 80503B14  40 82 00 28 */	bne lbl_80503B3C
/* 80503B18  C0 3C 0D 20 */	lfs f1, 0xd20(r28)
/* 80503B1C  C0 1C 0D 18 */	lfs f0, 0xd18(r28)
/* 80503B20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80503B24  4C 41 13 82 */	cror 2, 1, 2
/* 80503B28  40 82 00 94 */	bne lbl_80503BBC
/* 80503B2C  3B E0 00 6E */	li r31, 0x6e
/* 80503B30  3B C0 00 00 */	li r30, 0
/* 80503B34  48 00 00 2C */	b lbl_80503B60
/* 80503B38  48 00 00 84 */	b lbl_80503BBC
lbl_80503B3C:
/* 80503B3C  2C 00 00 6E */	cmpwi r0, 0x6e
/* 80503B40  40 82 00 7C */	bne lbl_80503BBC
/* 80503B44  2C 05 00 00 */	cmpwi r5, 0
/* 80503B48  41 82 00 74 */	beq lbl_80503BBC
/* 80503B4C  3B E0 00 6F */	li r31, 0x6f
/* 80503B50  3B C0 00 01 */	li r30, 1
/* 80503B54  48 00 00 0C */	b lbl_80503B60
/* 80503B58  48 00 00 64 */	b lbl_80503BBC
/* 80503B5C  48 00 00 60 */	b lbl_80503BBC
lbl_80503B60:
/* 80503B60  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 80503B64  7F 83 E3 78 */	mr r3, r28
/* 80503B68  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 80503B6C  7F E4 FB 78 */	mr r4, r31
/* 80503B70  C0 25 00 00 */	lfs f1, 0(r5)
/* 80503B74  38 A1 00 0C */	addi r5, r1, 0xc
/* 80503B78  38 C1 00 08 */	addi r6, r1, 8
/* 80503B7C  4B FD 63 E5 */	bl Player_actor_SetupItem_Base1
/* 80503B80  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 80503B84  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 80503B88  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 80503B8C  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 80503B90  C0 25 00 00 */	lfs f1, 0(r5)
/* 80503B94  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 80503B98  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 80503B9C  7F 83 E3 78 */	mr r3, r28
/* 80503BA0  FC 40 08 90 */	fmr f2, f1
/* 80503BA4  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80503BA8  81 01 00 08 */	lwz r8, 8(r1)
/* 80503BAC  7F A4 EB 78 */	mr r4, r29
/* 80503BB0  7F E5 FB 78 */	mr r5, r31
/* 80503BB4  7F C7 F3 78 */	mr r7, r30
/* 80503BB8  4B FD 2C 59 */	bl Player_actor_InitAnimation_Base2
lbl_80503BBC:
/* 80503BBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80503BC0  4B B9 73 5D */	bl func_8009AF1C
/* 80503BC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80503BC8  7C 08 03 A6 */	mtlr r0
/* 80503BCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80503BD0  4E 80 00 20 */	blr 
