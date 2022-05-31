lbl_803E1EA0:
/* 803E1EA0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 803E1EA4  7C 08 02 A6 */	mflr r0
/* 803E1EA8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 803E1EAC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 803E1EB0  4B CB 90 1D */	bl func_8009AECC
/* 803E1EB4  7C BD 2B 78 */	mr r29, r5
/* 803E1EB8  7C 7B 1B 78 */	mr r27, r3
/* 803E1EBC  A0 65 00 00 */	lhz r3, 0(r5)
/* 803E1EC0  7C 9C 23 78 */	mr r28, r4
/* 803E1EC4  4B FE CF 99 */	bl mNpc_GetLooks
/* 803E1EC8  7C 7F 1B 78 */	mr r31, r3
/* 803E1ECC  4B C7 AE 29 */	bl fqrand
/* 803E1ED0  3C 60 80 64 */	lis r3, lit_1344@ha /* 0x80643110@ha */
/* 803E1ED4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803E1ED8  C0 03 31 10 */	lfs f0, lit_1344@l(r3)  /* 0x80643110@l */
/* 803E1EDC  1C C0 00 03 */	mulli r6, r0, 3
/* 803E1EE0  7F 84 E3 78 */	mr r4, r28
/* 803E1EE4  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E1EE8  38 60 00 00 */	li r3, 0
/* 803E1EEC  3B C6 00 FC */	addi r30, r6, 0xfc
/* 803E1EF0  38 A0 00 08 */	li r5, 8
/* 803E1EF4  FC 00 00 1E */	fctiwz f0, f0
/* 803E1EF8  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 803E1EFC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 803E1F00  7F C0 F2 14 */	add r30, r0, r30
/* 803E1F04  4B FC FA 55 */	bl mHandbill_Set_free_str
/* 803E1F08  A0 1D 00 00 */	lhz r0, 0(r29)
/* 803E1F0C  38 61 00 0C */	addi r3, r1, 0xc
/* 803E1F10  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 803E1F14  4B FE F7 FD */	bl mNpc_LoadNpcNameString
/* 803E1F18  38 81 00 0C */	addi r4, r1, 0xc
/* 803E1F1C  38 60 00 01 */	li r3, 1
/* 803E1F20  38 A0 00 08 */	li r5, 8
/* 803E1F24  4B FC FA 35 */	bl mHandbill_Set_free_str
/* 803E1F28  38 9D 00 02 */	addi r4, r29, 2
/* 803E1F2C  38 60 00 02 */	li r3, 2
/* 803E1F30  38 A0 00 08 */	li r5, 8
/* 803E1F34  4B FC FA 25 */	bl mHandbill_Set_free_str
/* 803E1F38  38 9C 00 08 */	addi r4, r28, 8
/* 803E1F3C  38 60 00 03 */	li r3, 3
/* 803E1F40  38 A0 00 08 */	li r5, 8
/* 803E1F44  4B FC FA 15 */	bl mHandbill_Set_free_str
/* 803E1F48  7F C9 F3 78 */	mr r9, r30
/* 803E1F4C  38 61 00 54 */	addi r3, r1, 0x54
/* 803E1F50  38 A1 00 08 */	addi r5, r1, 8
/* 803E1F54  38 C1 00 24 */	addi r6, r1, 0x24
/* 803E1F58  39 1B 00 4A */	addi r8, r27, 0x4a
/* 803E1F5C  38 80 00 28 */	li r4, 0x28
/* 803E1F60  38 E0 00 30 */	li r7, 0x30
/* 803E1F64  4B FD 08 45 */	bl mHandbill_Load_HandbillFromRom2
/* 803E1F68  38 7B 00 32 */	addi r3, r27, 0x32
/* 803E1F6C  38 81 00 54 */	addi r4, r1, 0x54
/* 803E1F70  38 A0 00 18 */	li r5, 0x18
/* 803E1F74  4B FD 8A B1 */	bl func_803BAA24
/* 803E1F78  38 7B 01 0A */	addi r3, r27, 0x10a
/* 803E1F7C  38 81 00 24 */	addi r4, r1, 0x24
/* 803E1F80  38 A0 00 20 */	li r5, 0x20
/* 803E1F84  4B FD 8A A1 */	bl func_803BAA24
/* 803E1F88  80 61 00 08 */	lwz r3, 8(r1)
/* 803E1F8C  38 00 00 00 */	li r0, 0
/* 803E1F90  98 7B 00 2F */	stb r3, 0x2f(r27)
/* 803E1F94  98 1B 00 2E */	stb r0, 0x2e(r27)
/* 803E1F98  98 1B 00 30 */	stb r0, 0x30(r27)
/* 803E1F9C  B0 1B 00 2C */	sth r0, 0x2c(r27)
/* 803E1FA0  4B FE BD 11 */	bl mNpc_GetPaperType
/* 803E1FA4  98 7B 00 31 */	stb r3, 0x31(r27)
/* 803E1FA8  38 00 30 00 */	li r0, 0x3000
/* 803E1FAC  38 61 00 18 */	addi r3, r1, 0x18
/* 803E1FB0  38 9D 00 02 */	addi r4, r29, 2
/* 803E1FB4  A0 BD 00 00 */	lhz r5, 0(r29)
/* 803E1FB8  B0 A1 00 14 */	sth r5, 0x14(r1)
/* 803E1FBC  B0 01 00 16 */	sth r0, 0x16(r1)
/* 803E1FC0  4B FD 19 31 */	bl mLd_CopyLandName
/* 803E1FC4  A0 1D 00 00 */	lhz r0, 0(r29)
/* 803E1FC8  38 7B 00 16 */	addi r3, r27, 0x16
/* 803E1FCC  38 81 00 14 */	addi r4, r1, 0x14
/* 803E1FD0  98 01 00 20 */	stb r0, 0x20(r1)
/* 803E1FD4  9B E1 00 21 */	stb r31, 0x21(r1)
/* 803E1FD8  4B FD AA 19 */	bl mMl_set_mail_name_npcinfo
/* 803E1FDC  7F 63 DB 78 */	mr r3, r27
/* 803E1FE0  7F 84 E3 78 */	mr r4, r28
/* 803E1FE4  4B FF E1 3D */	bl mPr_CopyPersonalID
/* 803E1FE8  38 00 00 00 */	li r0, 0
/* 803E1FEC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 803E1FF0  98 1B 00 14 */	stb r0, 0x14(r27)
/* 803E1FF4  4B CB 8F 25 */	bl func_8009AF18
/* 803E1FF8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 803E1FFC  7C 08 03 A6 */	mtlr r0
/* 803E2000  38 21 00 A0 */	addi r1, r1, 0xa0
/* 803E2004  4E 80 00 20 */	blr 
