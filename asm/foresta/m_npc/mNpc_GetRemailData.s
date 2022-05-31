lbl_803CD9A4:
/* 803CD9A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CD9A8  7C 08 02 A6 */	mflr r0
/* 803CD9AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CD9B0  39 61 00 20 */	addi r11, r1, 0x20
/* 803CD9B4  4B CC D5 1D */	bl func_8009AED0
/* 803CD9B8  3D 20 80 66 */	lis r9, get_remail@ha /* 0x8065B28C@ha */
/* 803CD9BC  54 E0 10 3A */	slwi r0, r7, 2
/* 803CD9C0  38 E9 B2 8C */	addi r7, r9, get_remail@l /* 0x8065B28C@l */
/* 803CD9C4  7C 7C 1B 78 */	mr r28, r3
/* 803CD9C8  7D 87 00 2E */	lwzx r12, r7, r0
/* 803CD9CC  7C 9D 23 78 */	mr r29, r4
/* 803CD9D0  7C BE 2B 78 */	mr r30, r5
/* 803CD9D4  7C DF 33 78 */	mr r31, r6
/* 803CD9D8  7D 07 43 78 */	mr r7, r8
/* 803CD9DC  7D 89 03 A6 */	mtctr r12
/* 803CD9E0  4E 80 04 21 */	bctrl 
/* 803CD9E4  38 00 00 00 */	li r0, 0
/* 803CD9E8  7F 83 E3 78 */	mr r3, r28
/* 803CD9EC  98 1C 00 2E */	stb r0, 0x2e(r28)
/* 803CD9F0  7F A4 EB 78 */	mr r4, r29
/* 803CD9F4  98 1C 00 30 */	stb r0, 0x30(r28)
/* 803CD9F8  48 01 27 29 */	bl mPr_CopyPersonalID
/* 803CD9FC  38 00 00 00 */	li r0, 0
/* 803CDA00  28 1F 00 00 */	cmplwi r31, 0
/* 803CDA04  98 1C 00 14 */	stb r0, 0x14(r28)
/* 803CDA08  40 82 00 14 */	bne lbl_803CDA1C
/* 803CDA0C  7F C4 F3 78 */	mr r4, r30
/* 803CDA10  38 7C 00 16 */	addi r3, r28, 0x16
/* 803CDA14  4B FE EF DD */	bl mMl_set_mail_name_npcinfo
/* 803CDA18  48 00 00 24 */	b lbl_803CDA3C
lbl_803CDA1C:
/* 803CDA1C  38 7C 00 16 */	addi r3, r28, 0x16
/* 803CDA20  38 9F 00 04 */	addi r4, r31, 4
/* 803CDA24  48 01 24 99 */	bl mPr_CopyPlayerName
/* 803CDA28  38 7C 00 1E */	addi r3, r28, 0x1e
/* 803CDA2C  38 9F 00 0C */	addi r4, r31, 0xc
/* 803CDA30  4B FE 5E C1 */	bl mLd_CopyLandName
/* 803CDA34  38 00 00 01 */	li r0, 1
/* 803CDA38  98 1C 00 2A */	stb r0, 0x2a(r28)
lbl_803CDA3C:
/* 803CDA3C  38 81 00 08 */	addi r4, r1, 8
/* 803CDA40  38 60 00 00 */	li r3, 0
/* 803CDA44  38 A0 00 01 */	li r5, 1
/* 803CDA48  38 C0 00 00 */	li r6, 0
/* 803CDA4C  38 E0 00 00 */	li r7, 0
/* 803CDA50  39 00 00 01 */	li r8, 1
/* 803CDA54  39 20 00 08 */	li r9, 8
/* 803CDA58  39 40 00 00 */	li r10, 0
/* 803CDA5C  48 01 A9 81 */	bl mSP_SelectRandomItem_New
/* 803CDA60  A0 61 00 08 */	lhz r3, 8(r1)
/* 803CDA64  39 61 00 20 */	addi r11, r1, 0x20
/* 803CDA68  38 63 E0 00 */	addi r3, r3, -8192
/* 803CDA6C  54 60 D0 0A */	slwi r0, r3, 0x1a
/* 803CDA70  54 63 0F FE */	srwi r3, r3, 0x1f
/* 803CDA74  7C 03 00 50 */	subf r0, r3, r0
/* 803CDA78  54 00 30 3E */	rotlwi r0, r0, 6
/* 803CDA7C  7C 00 1A 14 */	add r0, r0, r3
/* 803CDA80  98 1C 00 31 */	stb r0, 0x31(r28)
/* 803CDA84  4B CC D4 99 */	bl func_8009AF1C
/* 803CDA88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CDA8C  7C 08 03 A6 */	mtlr r0
/* 803CDA90  38 21 00 20 */	addi r1, r1, 0x20
/* 803CDA94  4E 80 00 20 */	blr 
