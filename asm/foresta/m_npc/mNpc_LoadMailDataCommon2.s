lbl_803CDD10:
/* 803CDD10  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 803CDD14  7C 08 02 A6 */	mflr r0
/* 803CDD18  90 01 00 84 */	stw r0, 0x84(r1)
/* 803CDD1C  39 61 00 80 */	addi r11, r1, 0x80
/* 803CDD20  4B CC D1 A9 */	bl func_8009AEC8
/* 803CDD24  7C 7A 1B 78 */	mr r26, r3
/* 803CDD28  7C 9B 23 78 */	mr r27, r4
/* 803CDD2C  7C BC 2B 78 */	mr r28, r5
/* 803CDD30  7C DD 33 78 */	mr r29, r6
/* 803CDD34  7C FE 3B 78 */	mr r30, r7
/* 803CDD38  7D 1F 43 78 */	mr r31, r8
/* 803CDD3C  4B FE E9 C5 */	bl mMl_clear_mail
/* 803CDD40  7F E9 FB 78 */	mr r9, r31
/* 803CDD44  38 61 00 3C */	addi r3, r1, 0x3c
/* 803CDD48  38 A1 00 08 */	addi r5, r1, 8
/* 803CDD4C  38 C1 00 0C */	addi r6, r1, 0xc
/* 803CDD50  39 1A 00 4A */	addi r8, r26, 0x4a
/* 803CDD54  38 80 00 28 */	li r4, 0x28
/* 803CDD58  38 E0 00 30 */	li r7, 0x30
/* 803CDD5C  4B FE 4A 4D */	bl mHandbill_Load_HandbillFromRom2
/* 803CDD60  38 7A 00 32 */	addi r3, r26, 0x32
/* 803CDD64  38 81 00 3C */	addi r4, r1, 0x3c
/* 803CDD68  38 A0 00 18 */	li r5, 0x18
/* 803CDD6C  4B FE CC B9 */	bl func_803BAA24
/* 803CDD70  38 7A 01 0A */	addi r3, r26, 0x10a
/* 803CDD74  38 81 00 0C */	addi r4, r1, 0xc
/* 803CDD78  38 A0 00 20 */	li r5, 0x20
/* 803CDD7C  4B FE CC A9 */	bl func_803BAA24
/* 803CDD80  80 A1 00 08 */	lwz r5, 8(r1)
/* 803CDD84  38 00 00 00 */	li r0, 0
/* 803CDD88  7F 43 D3 78 */	mr r3, r26
/* 803CDD8C  7F 64 DB 78 */	mr r4, r27
/* 803CDD90  98 BA 00 2F */	stb r5, 0x2f(r26)
/* 803CDD94  98 1A 00 2E */	stb r0, 0x2e(r26)
/* 803CDD98  98 1A 00 30 */	stb r0, 0x30(r26)
/* 803CDD9C  48 01 23 85 */	bl mPr_CopyPersonalID
/* 803CDDA0  38 00 00 00 */	li r0, 0
/* 803CDDA4  7F 84 E3 78 */	mr r4, r28
/* 803CDDA8  98 1A 00 14 */	stb r0, 0x14(r26)
/* 803CDDAC  38 7A 00 16 */	addi r3, r26, 0x16
/* 803CDDB0  4B FE EC 41 */	bl mMl_set_mail_name_npcinfo
/* 803CDDB4  B3 BA 00 2C */	sth r29, 0x2c(r26)
/* 803CDDB8  39 61 00 80 */	addi r11, r1, 0x80
/* 803CDDBC  9B DA 00 31 */	stb r30, 0x31(r26)
/* 803CDDC0  4B CC D1 55 */	bl func_8009AF14
/* 803CDDC4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803CDDC8  7C 08 03 A6 */	mtlr r0
/* 803CDDCC  38 21 00 80 */	addi r1, r1, 0x80
/* 803CDDD0  4E 80 00 20 */	blr 
