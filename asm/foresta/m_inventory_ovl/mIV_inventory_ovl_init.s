lbl_805E48B4:
/* 805E48B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E48B8  7C 08 02 A6 */	mflr r0
/* 805E48BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E48C0  39 61 00 40 */	addi r11, r1, 0x40
/* 805E48C4  4B AB 65 F5 */	bl func_8009AEB8
/* 805E48C8  7C 77 1B 78 */	mr r23, r3
/* 805E48CC  7C B9 2B 78 */	mr r25, r5
/* 805E48D0  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E48D4  7C 98 23 78 */	mr r24, r4
/* 805E48D8  7F 23 CB 78 */	mr r3, r25
/* 805E48DC  83 65 09 88 */	lwz r27, 0x988(r5)
/* 805E48E0  4B DF 4D 61 */	bl get_player_actor_withoutCheck
/* 805E48E4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805E48E8  3B 80 00 00 */	li r28, 0
/* 805E48EC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805E48F0  B3 81 00 08 */	sth r28, 8(r1)
/* 805E48F4  3F A4 00 02 */	addis r29, r4, 2
/* 805E48F8  3B E0 00 01 */	li r31, 1
/* 805E48FC  80 9D 61 3C */	lwz r4, 0x613c(r29)
/* 805E4900  7C 7E 1B 78 */	mr r30, r3
/* 805E4904  93 98 00 04 */	stw r28, 4(r24)
/* 805E4908  3B 44 04 E0 */	addi r26, r4, 0x4e0
/* 805E490C  B3 F8 00 34 */	sth r31, 0x34(r24)
/* 805E4910  80 78 00 38 */	lwz r3, 0x38(r24)
/* 805E4914  28 03 00 10 */	cmplwi r3, 0x10
/* 805E4918  41 81 01 0C */	bgt lbl_805E4A24
/* 805E491C  3C 80 80 6D */	lis r4, lit_1867@ha /* 0x806CD670@ha */
/* 805E4920  54 60 10 3A */	slwi r0, r3, 2
/* 805E4924  38 84 D6 70 */	addi r4, r4, lit_1867@l /* 0x806CD670@l */
/* 805E4928  7C 04 00 2E */	lwzx r0, r4, r0
/* 805E492C  7C 09 03 A6 */	mtctr r0
/* 805E4930  4E 80 04 20 */	bctr 
lbl_805E4934:
/* 805E4934  B3 9B 03 BC */	sth r28, 0x3bc(r27)
/* 805E4938  B3 9B 03 BE */	sth r28, 0x3be(r27)
/* 805E493C  48 00 01 20 */	b lbl_805E4A5C
lbl_805E4940:
/* 805E4940  80 18 00 3C */	lwz r0, 0x3c(r24)
/* 805E4944  A0 7B 03 BC */	lhz r3, 0x3bc(r27)
/* 805E4948  7F E0 00 30 */	slw r0, r31, r0
/* 805E494C  7C 60 03 78 */	or r0, r3, r0
/* 805E4950  B0 1B 03 BC */	sth r0, 0x3bc(r27)
/* 805E4954  B3 9B 03 BE */	sth r28, 0x3be(r27)
/* 805E4958  48 00 01 04 */	b lbl_805E4A5C
lbl_805E495C:
/* 805E495C  80 18 00 3C */	lwz r0, 0x3c(r24)
/* 805E4960  B0 1B 03 BC */	sth r0, 0x3bc(r27)
/* 805E4964  B3 9B 03 BE */	sth r28, 0x3be(r27)
/* 805E4968  48 00 00 F4 */	b lbl_805E4A5C
lbl_805E496C:
/* 805E496C  B3 9B 03 BC */	sth r28, 0x3bc(r27)
/* 805E4970  3A C0 00 00 */	li r22, 0
/* 805E4974  B3 9B 03 BE */	sth r28, 0x3be(r27)
lbl_805E4978:
/* 805E4978  7F 43 D3 78 */	mr r3, r26
/* 805E497C  4B DD 7E 25 */	bl mMl_check_not_used_mail
/* 805E4980  2C 03 00 00 */	cmpwi r3, 0
/* 805E4984  40 82 00 24 */	bne lbl_805E49A8
/* 805E4988  7F 43 D3 78 */	mr r3, r26
/* 805E498C  4B DD 81 E5 */	bl mMl_check_send_mail
/* 805E4990  2C 03 00 00 */	cmpwi r3, 0
/* 805E4994  41 82 00 14 */	beq lbl_805E49A8
/* 805E4998  A0 7B 03 BE */	lhz r3, 0x3be(r27)
/* 805E499C  7F E0 B0 30 */	slw r0, r31, r22
/* 805E49A0  7C 60 03 78 */	or r0, r3, r0
/* 805E49A4  B0 1B 03 BE */	sth r0, 0x3be(r27)
lbl_805E49A8:
/* 805E49A8  3A D6 00 01 */	addi r22, r22, 1
/* 805E49AC  3B 5A 01 2A */	addi r26, r26, 0x12a
/* 805E49B0  2C 16 00 0A */	cmpwi r22, 0xa
/* 805E49B4  41 80 FF C4 */	blt lbl_805E4978
/* 805E49B8  48 00 00 A4 */	b lbl_805E4A5C
lbl_805E49BC:
/* 805E49BC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805E49C0  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805E49C4  B0 1B 03 BE */	sth r0, 0x3be(r27)
/* 805E49C8  B3 9B 03 BC */	sth r28, 0x3bc(r27)
/* 805E49CC  48 00 00 90 */	b lbl_805E4A5C
lbl_805E49D0:
/* 805E49D0  B3 9B 03 BC */	sth r28, 0x3bc(r27)
/* 805E49D4  B3 9B 03 BE */	sth r28, 0x3be(r27)
lbl_805E49D8:
/* 805E49D8  7F 43 D3 78 */	mr r3, r26
/* 805E49DC  4B DD 7D C5 */	bl mMl_check_not_used_mail
/* 805E49E0  2C 03 00 00 */	cmpwi r3, 0
/* 805E49E4  40 82 00 14 */	bne lbl_805E49F8
/* 805E49E8  7F 43 D3 78 */	mr r3, r26
/* 805E49EC  4B DD 81 85 */	bl mMl_check_send_mail
/* 805E49F0  2C 03 00 00 */	cmpwi r3, 0
/* 805E49F4  40 82 00 14 */	bne lbl_805E4A08
lbl_805E49F8:
/* 805E49F8  A0 7B 03 BE */	lhz r3, 0x3be(r27)
/* 805E49FC  7F E0 E0 30 */	slw r0, r31, r28
/* 805E4A00  7C 60 03 78 */	or r0, r3, r0
/* 805E4A04  B0 1B 03 BE */	sth r0, 0x3be(r27)
lbl_805E4A08:
/* 805E4A08  3B 9C 00 01 */	addi r28, r28, 1
/* 805E4A0C  3B 5A 01 2A */	addi r26, r26, 0x12a
/* 805E4A10  2C 1C 00 0A */	cmpwi r28, 0xa
/* 805E4A14  41 80 FF C4 */	blt lbl_805E49D8
/* 805E4A18  38 00 00 03 */	li r0, 3
/* 805E4A1C  B0 18 00 34 */	sth r0, 0x34(r24)
/* 805E4A20  48 00 00 3C */	b lbl_805E4A5C
lbl_805E4A24:
/* 805E4A24  80 98 00 3C */	lwz r4, 0x3c(r24)
/* 805E4A28  4B E0 B8 F9 */	bl mSM_check_open_inventory_itemlist
/* 805E4A2C  B0 7B 03 BC */	sth r3, 0x3bc(r27)
/* 805E4A30  80 18 00 38 */	lwz r0, 0x38(r24)
/* 805E4A34  2C 00 00 00 */	cmpwi r0, 0
/* 805E4A38  41 82 00 0C */	beq lbl_805E4A44
/* 805E4A3C  2C 00 00 0D */	cmpwi r0, 0xd
/* 805E4A40  40 82 00 14 */	bne lbl_805E4A54
lbl_805E4A44:
/* 805E4A44  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805E4A48  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805E4A4C  B0 1B 03 BE */	sth r0, 0x3be(r27)
/* 805E4A50  48 00 00 0C */	b lbl_805E4A5C
lbl_805E4A54:
/* 805E4A54  38 00 00 00 */	li r0, 0
/* 805E4A58  B0 1B 03 BE */	sth r0, 0x3be(r27)
lbl_805E4A5C:
/* 805E4A5C  38 00 00 03 */	li r0, 3
/* 805E4A60  90 18 00 30 */	stw r0, 0x30(r24)
/* 805E4A64  80 18 00 38 */	lwz r0, 0x38(r24)
/* 805E4A68  2C 00 00 0E */	cmpwi r0, 0xe
/* 805E4A6C  40 82 00 1C */	bne lbl_805E4A88
/* 805E4A70  7E E3 BB 78 */	mr r3, r23
/* 805E4A74  38 80 00 11 */	li r4, 0x11
/* 805E4A78  38 A0 00 00 */	li r5, 0
/* 805E4A7C  38 C0 00 00 */	li r6, 0
/* 805E4A80  4B E0 AC 5D */	bl mSM_open_submenu
/* 805E4A84  48 00 00 6C */	b lbl_805E4AF0
lbl_805E4A88:
/* 805E4A88  2C 00 00 01 */	cmpwi r0, 1
/* 805E4A8C  40 82 00 1C */	bne lbl_805E4AA8
/* 805E4A90  7E E3 BB 78 */	mr r3, r23
/* 805E4A94  38 80 00 0B */	li r4, 0xb
/* 805E4A98  38 A0 00 00 */	li r5, 0
/* 805E4A9C  38 C0 00 00 */	li r6, 0
/* 805E4AA0  4B E0 AC 3D */	bl mSM_open_submenu
/* 805E4AA4  48 00 00 4C */	b lbl_805E4AF0
lbl_805E4AA8:
/* 805E4AA8  2C 00 00 02 */	cmpwi r0, 2
/* 805E4AAC  40 82 00 1C */	bne lbl_805E4AC8
/* 805E4AB0  80 D8 00 3C */	lwz r6, 0x3c(r24)
/* 805E4AB4  7E E3 BB 78 */	mr r3, r23
/* 805E4AB8  38 80 00 0E */	li r4, 0xe
/* 805E4ABC  38 A0 00 00 */	li r5, 0
/* 805E4AC0  4B E0 AC 1D */	bl mSM_open_submenu
/* 805E4AC4  48 00 00 2C */	b lbl_805E4AF0
lbl_805E4AC8:
/* 805E4AC8  2C 00 00 03 */	cmpwi r0, 3
/* 805E4ACC  40 82 00 1C */	bne lbl_805E4AE8
/* 805E4AD0  80 D8 00 3C */	lwz r6, 0x3c(r24)
/* 805E4AD4  7E E3 BB 78 */	mr r3, r23
/* 805E4AD8  38 80 00 0E */	li r4, 0xe
/* 805E4ADC  38 A0 00 01 */	li r5, 1
/* 805E4AE0  4B E0 AB FD */	bl mSM_open_submenu
/* 805E4AE4  48 00 00 0C */	b lbl_805E4AF0
lbl_805E4AE8:
/* 805E4AE8  38 00 00 01 */	li r0, 1
/* 805E4AEC  90 18 00 30 */	stw r0, 0x30(r24)
lbl_805E4AF0:
/* 805E4AF0  80 7D 61 3C */	lwz r3, 0x613c(r29)
/* 805E4AF4  80 03 00 8C */	lwz r0, 0x8c(r3)
/* 805E4AF8  90 1B 03 C0 */	stw r0, 0x3c0(r27)
/* 805E4AFC  80 18 00 38 */	lwz r0, 0x38(r24)
/* 805E4B00  2C 00 00 0D */	cmpwi r0, 0xd
/* 805E4B04  40 82 00 2C */	bne lbl_805E4B30
/* 805E4B08  80 78 00 3C */	lwz r3, 0x3c(r24)
/* 805E4B0C  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 805E4B10  2C 00 00 02 */	cmpwi r0, 2
/* 805E4B14  40 82 00 1C */	bne lbl_805E4B30
/* 805E4B18  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 805E4B1C  2C 00 00 03 */	cmpwi r0, 3
/* 805E4B20  40 82 00 10 */	bne lbl_805E4B30
/* 805E4B24  38 00 00 01 */	li r0, 1
/* 805E4B28  98 1B 03 E1 */	stb r0, 0x3e1(r27)
/* 805E4B2C  48 00 00 3C */	b lbl_805E4B68
lbl_805E4B30:
/* 805E4B30  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 805E4B34  3C 60 80 65 */	lis r3, lit_1685@ha /* 0x8064B4D0@ha */
/* 805E4B38  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805E4B3C  38 C0 00 0C */	li r6, 0xc
/* 805E4B40  C0 23 B4 D0 */	lfs f1, lit_1685@l(r3)  /* 0x8064B4D0@l */
/* 805E4B44  38 7B 03 D4 */	addi r3, r27, 0x3d4
/* 805E4B48  90 81 00 0C */	stw r4, 0xc(r1)
/* 805E4B4C  38 81 00 0C */	addi r4, r1, 0xc
/* 805E4B50  90 01 00 10 */	stw r0, 0x10(r1)
/* 805E4B54  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805E4B58  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E4B5C  A8 BE 00 DE */	lha r5, 0xde(r30)
/* 805E4B60  4B DA BF D9 */	bl mCoBG_SearchWaterLimitDistN
/* 805E4B64  98 7B 03 E1 */	stb r3, 0x3e1(r27)
lbl_805E4B68:
/* 805E4B68  7F 23 CB 78 */	mr r3, r25
/* 805E4B6C  38 9B 03 C8 */	addi r4, r27, 0x3c8
/* 805E4B70  38 A1 00 08 */	addi r5, r1, 8
/* 805E4B74  38 C0 00 00 */	li r6, 0
/* 805E4B78  38 E0 00 00 */	li r7, 0
/* 805E4B7C  4B DF 7A 7D */	bl mPlib_Check_scoop_after
/* 805E4B80  2C 03 00 3B */	cmpwi r3, 0x3b
/* 805E4B84  40 82 00 10 */	bne lbl_805E4B94
/* 805E4B88  38 00 00 01 */	li r0, 1
/* 805E4B8C  98 1B 03 E0 */	stb r0, 0x3e0(r27)
/* 805E4B90  48 00 00 0C */	b lbl_805E4B9C
lbl_805E4B94:
/* 805E4B94  38 00 00 00 */	li r0, 0
/* 805E4B98  98 1B 03 E0 */	stb r0, 0x3e0(r27)
lbl_805E4B9C:
/* 805E4B9C  38 00 00 01 */	li r0, 1
/* 805E4BA0  38 60 00 00 */	li r3, 0
/* 805E4BA4  98 1B 03 F2 */	stb r0, 0x3f2(r27)
/* 805E4BA8  38 00 00 02 */	li r0, 2
/* 805E4BAC  98 7B 03 F3 */	stb r3, 0x3f3(r27)
/* 805E4BB0  98 1B 03 F4 */	stb r0, 0x3f4(r27)
/* 805E4BB4  B0 7B 03 F6 */	sth r3, 0x3f6(r27)
/* 805E4BB8  B0 7B 05 E4 */	sth r3, 0x5e4(r27)
/* 805E4BBC  B0 7B 05 E0 */	sth r3, 0x5e0(r27)
/* 805E4BC0  B0 7B 05 E2 */	sth r3, 0x5e2(r27)
/* 805E4BC4  98 7B 05 EB */	stb r3, 0x5eb(r27)
/* 805E4BC8  80 18 00 38 */	lwz r0, 0x38(r24)
/* 805E4BCC  2C 00 00 01 */	cmpwi r0, 1
/* 805E4BD0  40 82 00 14 */	bne lbl_805E4BE4
/* 805E4BD4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008004@ha */
/* 805E4BD8  38 63 80 04 */	addi r3, r3, 0x8004 /* 0x00008004@l */
/* 805E4BDC  48 04 91 29 */	bl sAdo_SysTrgStart
/* 805E4BE0  48 00 00 0C */	b lbl_805E4BEC
lbl_805E4BE4:
/* 805E4BE4  38 60 00 30 */	li r3, 0x30
/* 805E4BE8  48 04 91 1D */	bl sAdo_SysTrgStart
lbl_805E4BEC:
/* 805E4BEC  38 60 00 01 */	li r3, 1
/* 805E4BF0  4B D9 7B A1 */	bl mBGMPsComp_pause
/* 805E4BF4  39 61 00 40 */	addi r11, r1, 0x40
/* 805E4BF8  4B AB 63 0D */	bl func_8009AF04
/* 805E4BFC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E4C00  7C 08 03 A6 */	mtlr r0
/* 805E4C04  38 21 00 40 */	addi r1, r1, 0x40
/* 805E4C08  4E 80 00 20 */	blr 
