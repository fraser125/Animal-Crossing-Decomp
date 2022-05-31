lbl_80532AA8:
/* 80532AA8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80532AAC  7C 08 02 A6 */	mflr r0
/* 80532AB0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80532AB4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80532AB8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80532ABC  39 61 00 40 */	addi r11, r1, 0x40
/* 80532AC0  4B B6 83 FD */	bl func_8009AEBC
/* 80532AC4  A0 03 00 06 */	lhz r0, 6(r3)
/* 80532AC8  7C 7B 1B 78 */	mr r27, r3
/* 80532ACC  83 43 08 F0 */	lwz r26, 0x8f0(r3)
/* 80532AD0  7C 9C 23 78 */	mr r28, r4
/* 80532AD4  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80532AD8  83 A3 01 7C */	lwz r29, 0x17c(r3)
/* 80532ADC  2C 00 00 0E */	cmpwi r0, 0xe
/* 80532AE0  83 3A 01 7C */	lwz r25, 0x17c(r26)
/* 80532AE4  3B E0 00 01 */	li r31, 1
/* 80532AE8  3B C0 00 02 */	li r30, 2
/* 80532AEC  40 82 00 18 */	bne lbl_80532B04
/* 80532AF0  A0 1A 00 06 */	lhz r0, 6(r26)
/* 80532AF4  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80532AF8  2C 00 00 0E */	cmpwi r0, 0xe
/* 80532AFC  40 82 00 08 */	bne lbl_80532B04
/* 80532B00  3B E0 00 00 */	li r31, 0
lbl_80532B04:
/* 80532B04  88 1A 08 34 */	lbz r0, 0x834(r26)
/* 80532B08  28 00 00 01 */	cmplwi r0, 1
/* 80532B0C  41 82 00 E8 */	beq lbl_80532BF4
/* 80532B10  28 00 00 03 */	cmplwi r0, 3
/* 80532B14  41 82 00 E0 */	beq lbl_80532BF4
/* 80532B18  28 00 00 04 */	cmplwi r0, 4
/* 80532B1C  41 82 00 D8 */	beq lbl_80532BF4
/* 80532B20  28 00 00 05 */	cmplwi r0, 5
/* 80532B24  41 82 00 D0 */	beq lbl_80532BF4
/* 80532B28  7F 63 DB 78 */	mr r3, r27
/* 80532B2C  7F 44 D3 78 */	mr r4, r26
/* 80532B30  4B FF F3 F1 */	bl func_80531F20
/* 80532B34  7F 43 D3 78 */	mr r3, r26
/* 80532B38  7F 64 DB 78 */	mr r4, r27
/* 80532B3C  4B FF F3 E5 */	bl func_80531F20
/* 80532B40  2C 1F 00 00 */	cmpwi r31, 0
/* 80532B44  40 82 00 B0 */	bne lbl_80532BF4
/* 80532B48  4B B2 A1 AD */	bl fqrand
/* 80532B4C  3C A0 80 6A */	lis r5, react_proc_table@ha /* 0x806A2560@ha */
/* 80532B50  3C 80 80 6A */	lis r4, react_rate_table@ha /* 0x806A2540@ha */
/* 80532B54  38 A5 25 60 */	addi r5, r5, react_proc_table@l /* 0x806A2560@l */
/* 80532B58  FF E0 08 90 */	fmr f31, f1
/* 80532B5C  38 04 25 40 */	addi r0, r4, react_rate_table@l /* 0x806A2540@l */
/* 80532B60  7F A3 EB 78 */	mr r3, r29
/* 80532B64  3A E0 00 08 */	li r23, 8
/* 80532B68  7C BE 2B 78 */	mr r30, r5
/* 80532B6C  7C 18 03 78 */	mr r24, r0
/* 80532B70  4B E9 BD 15 */	bl mNpc_CheckTalkPresentCloth
/* 80532B74  2C 03 00 01 */	cmpwi r3, 1
/* 80532B78  41 82 00 14 */	beq lbl_80532B8C
/* 80532B7C  7F 23 CB 78 */	mr r3, r25
/* 80532B80  4B E9 BD 05 */	bl mNpc_CheckTalkPresentCloth
/* 80532B84  2C 03 00 01 */	cmpwi r3, 1
/* 80532B88  40 82 00 08 */	bne lbl_80532B90
lbl_80532B8C:
/* 80532B8C  3A E0 00 04 */	li r23, 4
lbl_80532B90:
/* 80532B90  3C 60 80 65 */	lis r3, data_80649274@ha /* 0x80649274@ha */
/* 80532B94  C0 03 92 74 */	lfs f0, data_80649274@l(r3)  /* 0x80649274@l */
/* 80532B98  7E E9 03 A6 */	mtctr r23
/* 80532B9C  2C 17 00 00 */	cmpwi r23, 0
/* 80532BA0  41 82 00 50 */	beq lbl_80532BF0
lbl_80532BA4:
/* 80532BA4  C0 38 00 00 */	lfs f1, 0(r24)
/* 80532BA8  EF FF 08 28 */	fsubs f31, f31, f1
/* 80532BAC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80532BB0  40 80 00 34 */	bge lbl_80532BE4
/* 80532BB4  7F 65 DB 78 */	mr r5, r27
/* 80532BB8  7F 46 D3 78 */	mr r6, r26
/* 80532BBC  38 61 00 0C */	addi r3, r1, 0xc
/* 80532BC0  38 81 00 08 */	addi r4, r1, 8
/* 80532BC4  4B FF F7 7D */	bl aNPC_decide_AB_Actor
/* 80532BC8  81 9E 00 00 */	lwz r12, 0(r30)
/* 80532BCC  7F 85 E3 78 */	mr r5, r28
/* 80532BD0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80532BD4  80 81 00 08 */	lwz r4, 8(r1)
/* 80532BD8  7D 89 03 A6 */	mtctr r12
/* 80532BDC  4E 80 04 21 */	bctrl 
/* 80532BE0  48 00 00 10 */	b lbl_80532BF0
lbl_80532BE4:
/* 80532BE4  3B 18 00 04 */	addi r24, r24, 4
/* 80532BE8  3B DE 00 04 */	addi r30, r30, 4
/* 80532BEC  42 00 FF B8 */	bdnz lbl_80532BA4
lbl_80532BF0:
/* 80532BF0  3B C0 00 01 */	li r30, 1
lbl_80532BF4:
/* 80532BF4  80 9B 08 40 */	lwz r4, 0x840(r27)
/* 80532BF8  3C 60 00 01 */	lis r3, 0x0001 /* 0x000083E3@ha */
/* 80532BFC  38 03 83 E3 */	addi r0, r3, 0x83E3 /* 0x000083E3@l */
/* 80532C00  90 9B 08 48 */	stw r4, 0x848(r27)
/* 80532C04  90 1B 08 40 */	stw r0, 0x840(r27)
/* 80532C08  88 1B 00 D6 */	lbz r0, 0xd6(r27)
/* 80532C0C  28 00 00 FE */	cmplwi r0, 0xfe
/* 80532C10  40 80 00 0C */	bge lbl_80532C1C
/* 80532C14  38 00 00 FD */	li r0, 0xfd
/* 80532C18  98 1B 00 D6 */	stb r0, 0xd6(r27)
lbl_80532C1C:
/* 80532C1C  80 1B 00 20 */	lwz r0, 0x20(r27)
/* 80532C20  2C 1F 00 00 */	cmpwi r31, 0
/* 80532C24  90 1B 08 50 */	stw r0, 0x850(r27)
/* 80532C28  80 1B 00 20 */	lwz r0, 0x20(r27)
/* 80532C2C  60 00 00 10 */	ori r0, r0, 0x10
/* 80532C30  90 1B 00 20 */	stw r0, 0x20(r27)
/* 80532C34  40 82 00 4C */	bne lbl_80532C80
/* 80532C38  A0 7D 08 E4 */	lhz r3, 0x8e4(r29)
/* 80532C3C  88 9D 08 EB */	lbz r4, 0x8eb(r29)
/* 80532C40  A0 BB 07 48 */	lhz r5, 0x748(r27)
/* 80532C44  88 DB 07 4B */	lbz r6, 0x74b(r27)
/* 80532C48  4B FF F7 9D */	bl aNPC_chk_same_cloth
/* 80532C4C  2C 03 00 00 */	cmpwi r3, 0
/* 80532C50  40 82 00 08 */	bne lbl_80532C58
/* 80532C54  3B C0 00 03 */	li r30, 3
lbl_80532C58:
/* 80532C58  88 7D 08 EC */	lbz r3, 0x8ec(r29)
/* 80532C5C  88 1B 08 9F */	lbz r0, 0x89f(r27)
/* 80532C60  7C 03 00 40 */	cmplw r3, r0
/* 80532C64  41 82 00 1C */	beq lbl_80532C80
/* 80532C68  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80532C6C  28 00 00 03 */	cmplwi r0, 3
/* 80532C70  40 82 00 0C */	bne lbl_80532C7C
/* 80532C74  3B C0 00 05 */	li r30, 5
/* 80532C78  48 00 00 08 */	b lbl_80532C80
lbl_80532C7C:
/* 80532C7C  3B C0 00 04 */	li r30, 4
lbl_80532C80:
/* 80532C80  9B DB 08 34 */	stb r30, 0x834(r27)
/* 80532C84  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80532C88  39 61 00 40 */	addi r11, r1, 0x40
/* 80532C8C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80532C90  4B B6 82 79 */	bl func_8009AF08
/* 80532C94  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80532C98  7C 08 03 A6 */	mtlr r0
/* 80532C9C  38 21 00 50 */	addi r1, r1, 0x50
/* 80532CA0  4E 80 00 20 */	blr 
