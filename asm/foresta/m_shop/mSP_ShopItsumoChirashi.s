lbl_803E9264:
/* 803E9264  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 803E9268  7C 08 02 A6 */	mflr r0
/* 803E926C  90 01 01 74 */	stw r0, 0x174(r1)
/* 803E9270  39 61 01 70 */	addi r11, r1, 0x170
/* 803E9274  4B CB 1C 51 */	bl func_8009AEC4
/* 803E9278  7C 7C 1B 78 */	mr r28, r3
/* 803E927C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E9280  1D 1C 26 B0 */	mulli r8, r28, 0x26b0
/* 803E9284  7C 99 23 78 */	mr r25, r4
/* 803E9288  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803E928C  7C BA 2B 78 */	mr r26, r5
/* 803E9290  3C 04 00 01 */	addis r0, r4, 1
/* 803E9294  7C DB 33 78 */	mr r27, r6
/* 803E9298  7C 60 42 14 */	add r3, r0, r8
/* 803E929C  7C FD 3B 78 */	mr r29, r7
/* 803E92A0  A0 03 9C FA */	lhz r0, -0x6306(r3)
/* 803E92A4  28 00 FF FF */	cmplwi r0, 0xffff
/* 803E92A8  41 82 01 10 */	beq lbl_803E93B8
/* 803E92AC  7F C4 42 14 */	add r30, r4, r8
/* 803E92B0  38 80 00 0A */	li r4, 0xa
/* 803E92B4  3C 7E 00 01 */	addis r3, r30, 1
/* 803E92B8  38 63 B7 18 */	addi r3, r3, -18664
/* 803E92BC  4B FD 35 E9 */	bl mMl_chk_mail_free_space
/* 803E92C0  7C 7F 1B 78 */	mr r31, r3
/* 803E92C4  7F 83 E3 78 */	mr r3, r28
/* 803E92C8  4B FC A3 11 */	bl mHS_get_pl_no
/* 803E92CC  54 63 07 BE */	clrlwi r3, r3, 0x1e
/* 803E92D0  4B FB 54 E9 */	bl mEv_ArbeitPlayer
/* 803E92D4  2C 03 00 01 */	cmpwi r3, 1
/* 803E92D8  41 82 00 E0 */	beq lbl_803E93B8
/* 803E92DC  7F 44 D3 78 */	mr r4, r26
/* 803E92E0  38 61 00 0C */	addi r3, r1, 0xc
/* 803E92E4  4B FC C6 C1 */	bl mIN_copy_name_str
/* 803E92E8  38 81 00 0C */	addi r4, r1, 0xc
/* 803E92EC  38 60 00 07 */	li r3, 7
/* 803E92F0  38 A0 00 10 */	li r5, 0x10
/* 803E92F4  4B FC 86 65 */	bl mHandbill_Set_free_str
/* 803E92F8  38 61 00 1C */	addi r3, r1, 0x1c
/* 803E92FC  4B FD 34 05 */	bl mMl_clear_mail
/* 803E9300  3C 60 80 66 */	lis r3, rare_chirashi_bunmen@ha /* 0x8065D7B0@ha */
/* 803E9304  57 24 18 38 */	slwi r4, r25, 3
/* 803E9308  38 63 D7 B0 */	addi r3, r3, rare_chirashi_bunmen@l /* 0x8065D7B0@l */
/* 803E930C  57 60 17 7A */	rlwinm r0, r27, 2, 0x1d, 0x1d
/* 803E9310  7C 83 22 14 */	add r4, r3, r4
/* 803E9314  38 A1 01 26 */	addi r5, r1, 0x126
/* 803E9318  7C E4 00 2E */	lwzx r7, r4, r0
/* 803E931C  38 61 00 4E */	addi r3, r1, 0x4e
/* 803E9320  38 81 00 08 */	addi r4, r1, 8
/* 803E9324  38 C1 00 66 */	addi r6, r1, 0x66
/* 803E9328  4B FC 94 0D */	bl mHandbill_Load_HandbillFromRom
/* 803E932C  80 81 00 08 */	lwz r4, 8(r1)
/* 803E9330  38 A0 00 00 */	li r5, 0
/* 803E9334  38 60 00 02 */	li r3, 2
/* 803E9338  38 00 00 37 */	li r0, 0x37
/* 803E933C  2C 1D 00 00 */	cmpwi r29, 0
/* 803E9340  98 A1 00 4A */	stb r5, 0x4a(r1)
/* 803E9344  98 81 00 4B */	stb r4, 0x4b(r1)
/* 803E9348  98 61 00 4C */	stb r3, 0x4c(r1)
/* 803E934C  98 01 00 4D */	stb r0, 0x4d(r1)
/* 803E9350  41 82 00 08 */	beq lbl_803E9358
/* 803E9354  48 00 00 14 */	b lbl_803E9368
lbl_803E9358:
/* 803E9358  38 61 00 1C */	addi r3, r1, 0x1c
/* 803E935C  38 80 00 01 */	li r4, 1
/* 803E9360  4B FF 5D 01 */	bl mPO_receipt_proc
/* 803E9364  48 00 00 54 */	b lbl_803E93B8
lbl_803E9368:
/* 803E9368  2C 1F 00 00 */	cmpwi r31, 0
/* 803E936C  41 80 00 4C */	blt lbl_803E93B8
/* 803E9370  7F 83 E3 78 */	mr r3, r28
/* 803E9374  4B FC A2 65 */	bl mHS_get_pl_no
/* 803E9378  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 803E937C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9380  1C A0 24 40 */	mulli r5, r0, 0x2440
/* 803E9384  38 61 00 1C */	addi r3, r1, 0x1c
/* 803E9388  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803E938C  7C 80 2A 14 */	add r4, r0, r5
/* 803E9390  38 84 00 20 */	addi r4, r4, 0x20
/* 803E9394  4B FF 6D 8D */	bl mPr_CopyPersonalID
/* 803E9398  1C 7F 01 2A */	mulli r3, r31, 0x12a
/* 803E939C  38 00 00 00 */	li r0, 0
/* 803E93A0  98 01 00 30 */	stb r0, 0x30(r1)
/* 803E93A4  38 81 00 1C */	addi r4, r1, 0x1c
/* 803E93A8  3C 63 00 01 */	addis r3, r3, 1
/* 803E93AC  38 63 B7 18 */	addi r3, r3, -18664
/* 803E93B0  7C 7E 1A 14 */	add r3, r30, r3
/* 803E93B4  4B FD 35 C1 */	bl mMl_copy_mail
lbl_803E93B8:
/* 803E93B8  39 61 01 70 */	addi r11, r1, 0x170
/* 803E93BC  4B CB 1B 55 */	bl func_8009AF10
/* 803E93C0  80 01 01 74 */	lwz r0, 0x174(r1)
/* 803E93C4  7C 08 03 A6 */	mtlr r0
/* 803E93C8  38 21 01 70 */	addi r1, r1, 0x170
/* 803E93CC  4E 80 00 20 */	blr 
