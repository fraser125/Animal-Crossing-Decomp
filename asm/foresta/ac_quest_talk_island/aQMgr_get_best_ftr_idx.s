lbl_8048DD78:
/* 8048DD78  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8048DD7C  7C 08 02 A6 */	mflr r0
/* 8048DD80  90 01 00 44 */	stw r0, 0x44(r1)
/* 8048DD84  39 61 00 40 */	addi r11, r1, 0x40
/* 8048DD88  4B C0 D1 39 */	bl func_8009AEC0
/* 8048DD8C  83 A4 00 88 */	lwz r29, 0x88(r4)
/* 8048DD90  7C 78 1B 78 */	mr r24, r3
/* 8048DD94  3B C4 00 68 */	addi r30, r4, 0x68
/* 8048DD98  4B F4 77 49 */	bl mNpc_GetIslandPresentFtr
/* 8048DD9C  3B E0 00 00 */	li r31, 0
/* 8048DDA0  7C 7C 1B 78 */	mr r28, r3
/* 8048DDA4  B3 F8 00 00 */	sth r31, 0(r24)
/* 8048DDA8  3B 60 00 00 */	li r27, 0
/* 8048DDAC  3B 40 FF FF */	li r26, -1
/* 8048DDB0  3B 20 00 00 */	li r25, 0
lbl_8048DDB4:
/* 8048DDB4  7C 7E FA 2E */	lhzx r3, r30, r31
/* 8048DDB8  4B F4 6C 19 */	bl mNpc_CheckFtrIsIslandBestFtr
/* 8048DDBC  2C 03 00 01 */	cmpwi r3, 1
/* 8048DDC0  40 82 00 44 */	bne lbl_8048DE04
/* 8048DDC4  7C 7E FA 2E */	lhzx r3, r30, r31
/* 8048DDC8  4B F4 69 21 */	bl mNpc_CheckIslandNpcRoomFtrItemNo_keep
/* 8048DDCC  2C 03 00 01 */	cmpwi r3, 1
/* 8048DDD0  40 82 00 34 */	bne lbl_8048DE04
/* 8048DDD4  7C 9E FA 2E */	lhzx r4, r30, r31
/* 8048DDD8  7F 83 E3 78 */	mr r3, r28
/* 8048DDDC  4B FE 5D ED */	bl aMR_CorrespondFurniture
/* 8048DDE0  2C 03 00 00 */	cmpwi r3, 0
/* 8048DDE4  40 82 00 20 */	bne lbl_8048DE04
/* 8048DDE8  7F A3 EB 78 */	mr r3, r29
/* 8048DDEC  7F 25 CB 78 */	mr r5, r25
/* 8048DDF0  38 80 00 00 */	li r4, 0
/* 8048DDF4  4B FF FF 61 */	bl aQMgr_check_item_cond
/* 8048DDF8  2C 03 00 01 */	cmpwi r3, 1
/* 8048DDFC  40 82 00 08 */	bne lbl_8048DE04
/* 8048DE00  3B 7B 00 01 */	addi r27, r27, 1
lbl_8048DE04:
/* 8048DE04  3B 39 00 01 */	addi r25, r25, 1
/* 8048DE08  3B FF 00 02 */	addi r31, r31, 2
/* 8048DE0C  2C 19 00 0F */	cmpwi r25, 0xf
/* 8048DE10  41 80 FF A4 */	blt lbl_8048DDB4
/* 8048DE14  2C 1B 00 00 */	cmpwi r27, 0
/* 8048DE18  40 81 00 B4 */	ble lbl_8048DECC
/* 8048DE1C  4B BC EE D9 */	bl fqrand
/* 8048DE20  6F 63 80 00 */	xoris r3, r27, 0x8000
/* 8048DE24  3C 00 43 30 */	lis r0, 0x4330
/* 8048DE28  90 61 00 0C */	stw r3, 0xc(r1)
/* 8048DE2C  3C 80 80 64 */	lis r4, lit_504@ha /* 0x80644C2C@ha */
/* 8048DE30  C8 44 4C 2C */	lfd f2, lit_504@l(r4)  /* 0x80644C2C@l */
/* 8048DE34  3B E0 00 00 */	li r31, 0
/* 8048DE38  90 01 00 08 */	stw r0, 8(r1)
/* 8048DE3C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8048DE40  EC 00 10 28 */	fsubs f0, f0, f2
/* 8048DE44  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048DE48  FC 00 00 1E */	fctiwz f0, f0
/* 8048DE4C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8048DE50  83 61 00 14 */	lwz r27, 0x14(r1)
lbl_8048DE54:
/* 8048DE54  A0 7E 00 00 */	lhz r3, 0(r30)
/* 8048DE58  4B F4 6B 79 */	bl mNpc_CheckFtrIsIslandBestFtr
/* 8048DE5C  2C 03 00 01 */	cmpwi r3, 1
/* 8048DE60  40 82 00 5C */	bne lbl_8048DEBC
/* 8048DE64  A0 7E 00 00 */	lhz r3, 0(r30)
/* 8048DE68  4B F4 68 81 */	bl mNpc_CheckIslandNpcRoomFtrItemNo_keep
/* 8048DE6C  2C 03 00 01 */	cmpwi r3, 1
/* 8048DE70  40 82 00 4C */	bne lbl_8048DEBC
/* 8048DE74  A0 9E 00 00 */	lhz r4, 0(r30)
/* 8048DE78  7F 83 E3 78 */	mr r3, r28
/* 8048DE7C  4B FE 5D 4D */	bl aMR_CorrespondFurniture
/* 8048DE80  2C 03 00 00 */	cmpwi r3, 0
/* 8048DE84  40 82 00 38 */	bne lbl_8048DEBC
/* 8048DE88  7F A3 EB 78 */	mr r3, r29
/* 8048DE8C  7F E5 FB 78 */	mr r5, r31
/* 8048DE90  38 80 00 00 */	li r4, 0
/* 8048DE94  4B FF FE C1 */	bl aQMgr_check_item_cond
/* 8048DE98  2C 03 00 01 */	cmpwi r3, 1
/* 8048DE9C  40 82 00 20 */	bne lbl_8048DEBC
/* 8048DEA0  2C 1B 00 00 */	cmpwi r27, 0
/* 8048DEA4  40 82 00 14 */	bne lbl_8048DEB8
/* 8048DEA8  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8048DEAC  7F FA FB 78 */	mr r26, r31
/* 8048DEB0  B0 18 00 00 */	sth r0, 0(r24)
/* 8048DEB4  48 00 00 18 */	b lbl_8048DECC
lbl_8048DEB8:
/* 8048DEB8  3B 7B FF FF */	addi r27, r27, -1
lbl_8048DEBC:
/* 8048DEBC  3B FF 00 01 */	addi r31, r31, 1
/* 8048DEC0  3B DE 00 02 */	addi r30, r30, 2
/* 8048DEC4  2C 1F 00 0F */	cmpwi r31, 0xf
/* 8048DEC8  41 80 FF 8C */	blt lbl_8048DE54
lbl_8048DECC:
/* 8048DECC  7F 43 D3 78 */	mr r3, r26
/* 8048DED0  39 61 00 40 */	addi r11, r1, 0x40
/* 8048DED4  4B C0 D0 39 */	bl func_8009AF0C
/* 8048DED8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8048DEDC  7C 08 03 A6 */	mtlr r0
/* 8048DEE0  38 21 00 40 */	addi r1, r1, 0x40
/* 8048DEE4  4E 80 00 20 */	blr 
