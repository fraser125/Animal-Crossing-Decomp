lbl_804E3B20:
/* 804E3B20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E3B24  7C 08 02 A6 */	mflr r0
/* 804E3B28  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E3B2C  39 61 00 30 */	addi r11, r1, 0x30
/* 804E3B30  4B BB 73 99 */	bl func_8009AEC8
/* 804E3B34  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 804E3B38  7C 7A 1B 78 */	mr r26, r3
/* 804E3B3C  7F 5F D3 78 */	mr r31, r26
/* 804E3B40  83 C4 00 00 */	lwz r30, 0(r4)
/* 804E3B44  54 03 45 EE */	rlwinm r3, r0, 8, 0x17, 0x17
/* 804E3B48  7C 9D 23 78 */	mr r29, r4
/* 804E3B4C  3B 83 0A E8 */	addi r28, r3, 0xae8
/* 804E3B50  7F 9F E2 14 */	add r28, r31, r28
/* 804E3B54  4B F2 86 81 */	bl Matrix_push
/* 804E3B58  A8 7A 00 DC */	lha r3, 0xdc(r26)
/* 804E3B5C  3C 00 43 30 */	lis r0, 0x4330
/* 804E3B60  3C 80 80 64 */	lis r4, lit_1627@ha /* 0x80646A54@ha */
/* 804E3B64  3C C0 80 65 */	lis r6, lit_6956@ha /* 0x80648110@ha */
/* 804E3B68  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804E3B6C  90 01 00 08 */	stw r0, 8(r1)
/* 804E3B70  38 A4 6A 54 */	addi r5, r4, lit_1627@l /* 0x80646A54@l */
/* 804E3B74  C0 46 81 10 */	lfs f2, lit_6956@l(r6)  /* 0x80648110@l */
/* 804E3B78  90 61 00 0C */	stw r3, 0xc(r1)
/* 804E3B7C  38 80 00 01 */	li r4, 1
/* 804E3B80  C8 25 00 00 */	lfd f1, 0(r5)
/* 804E3B84  C8 01 00 08 */	lfd f0, 8(r1)
/* 804E3B88  83 7E 02 D0 */	lwz r27, 0x2d0(r30)
/* 804E3B8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804E3B90  EC 02 00 32 */	fmuls f0, f2, f0
/* 804E3B94  FC 00 00 1E */	fctiwz f0, f0
/* 804E3B98  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804E3B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E3BA0  7C 03 07 34 */	extsh r3, r0
/* 804E3BA4  4B F2 8A B9 */	bl Matrix_RotateY
/* 804E3BA8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804E3BAC  7F 7A DB 78 */	mr r26, r27
/* 804E3BB0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804E3BB4  7F C3 F3 78 */	mr r3, r30
/* 804E3BB8  90 1B 00 00 */	stw r0, 0(r27)
/* 804E3BBC  3B 7B 00 08 */	addi r27, r27, 8
/* 804E3BC0  4B F2 98 15 */	bl _Matrix_to_Mtx_new
/* 804E3BC4  90 7A 00 04 */	stw r3, 4(r26)
/* 804E3BC8  3C 60 80 4E */	lis r3, Player_actor_Item_draw_windmill_After@ha /* 0x804E3AAC@ha */
/* 804E3BCC  38 E3 3A AC */	addi r7, r3, Player_actor_Item_draw_windmill_After@l /* 0x804E3AAC@l */
/* 804E3BD0  7F 85 E3 78 */	mr r5, r28
/* 804E3BD4  93 7E 02 D0 */	stw r27, 0x2d0(r30)
/* 804E3BD8  7F A3 EB 78 */	mr r3, r29
/* 804E3BDC  7F E8 FB 78 */	mr r8, r31
/* 804E3BE0  38 9F 0A 18 */	addi r4, r31, 0xa18
/* 804E3BE4  38 C0 00 00 */	li r6, 0
/* 804E3BE8  4B E8 DB 51 */	bl cKF_Si3_draw_R_SV
/* 804E3BEC  4B F2 86 29 */	bl Matrix_pull
/* 804E3BF0  38 00 00 00 */	li r0, 0
/* 804E3BF4  90 1F 0F 4C */	stw r0, 0xf4c(r31)
/* 804E3BF8  80 1F 11 70 */	lwz r0, 0x1170(r31)
/* 804E3BFC  2C 00 00 00 */	cmpwi r0, 0
/* 804E3C00  40 82 00 24 */	bne lbl_804E3C24
/* 804E3C04  80 9F 11 54 */	lwz r4, 0x1154(r31)
/* 804E3C08  38 00 00 01 */	li r0, 1
/* 804E3C0C  80 7F 11 58 */	lwz r3, 0x1158(r31)
/* 804E3C10  90 9F 11 48 */	stw r4, 0x1148(r31)
/* 804E3C14  90 7F 11 4C */	stw r3, 0x114c(r31)
/* 804E3C18  80 7F 11 5C */	lwz r3, 0x115c(r31)
/* 804E3C1C  90 7F 11 50 */	stw r3, 0x1150(r31)
/* 804E3C20  90 1F 11 70 */	stw r0, 0x1170(r31)
lbl_804E3C24:
/* 804E3C24  39 61 00 30 */	addi r11, r1, 0x30
/* 804E3C28  4B BB 72 ED */	bl func_8009AF14
/* 804E3C2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E3C30  7C 08 03 A6 */	mtlr r0
/* 804E3C34  38 21 00 30 */	addi r1, r1, 0x30
/* 804E3C38  4E 80 00 20 */	blr 
