lbl_8048DEE8:
/* 8048DEE8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8048DEEC  7C 08 02 A6 */	mflr r0
/* 8048DEF0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8048DEF4  39 61 00 40 */	addi r11, r1, 0x40
/* 8048DEF8  4B C0 CF C9 */	bl func_8009AEC0
/* 8048DEFC  83 84 00 88 */	lwz r28, 0x88(r4)
/* 8048DF00  7C 78 1B 78 */	mr r24, r3
/* 8048DF04  3B C4 00 68 */	addi r30, r4, 0x68
/* 8048DF08  3B 60 00 00 */	li r27, 0
/* 8048DF0C  3B 40 FF FF */	li r26, -1
/* 8048DF10  4B F4 75 D1 */	bl mNpc_GetIslandPresentFtr
/* 8048DF14  3B 20 00 00 */	li r25, 0
/* 8048DF18  7C 7D 1B 78 */	mr r29, r3
/* 8048DF1C  3B E0 00 00 */	li r31, 0
lbl_8048DF20:
/* 8048DF20  7C 7E FA 2E */	lhzx r3, r30, r31
/* 8048DF24  7F A4 EB 78 */	mr r4, r29
/* 8048DF28  4B FE 5C A1 */	bl aMR_CorrespondFurniture
/* 8048DF2C  2C 03 00 00 */	cmpwi r3, 0
/* 8048DF30  40 82 00 40 */	bne lbl_8048DF70
/* 8048DF34  7C 7E FA 2E */	lhzx r3, r30, r31
/* 8048DF38  4B F4 6B 31 */	bl mNpc_CheckFtrIsIslandNormalFtr
/* 8048DF3C  2C 03 00 01 */	cmpwi r3, 1
/* 8048DF40  40 82 00 30 */	bne lbl_8048DF70
/* 8048DF44  7C 7E FA 2E */	lhzx r3, r30, r31
/* 8048DF48  4B F4 67 A1 */	bl mNpc_CheckIslandNpcRoomFtrItemNo_keep
/* 8048DF4C  2C 03 00 01 */	cmpwi r3, 1
/* 8048DF50  40 82 00 20 */	bne lbl_8048DF70
/* 8048DF54  7F 83 E3 78 */	mr r3, r28
/* 8048DF58  7F 25 CB 78 */	mr r5, r25
/* 8048DF5C  38 80 00 00 */	li r4, 0
/* 8048DF60  4B FF FD F5 */	bl aQMgr_check_item_cond
/* 8048DF64  2C 03 00 01 */	cmpwi r3, 1
/* 8048DF68  40 82 00 08 */	bne lbl_8048DF70
/* 8048DF6C  3B 7B 00 01 */	addi r27, r27, 1
lbl_8048DF70:
/* 8048DF70  3B 39 00 01 */	addi r25, r25, 1
/* 8048DF74  3B FF 00 02 */	addi r31, r31, 2
/* 8048DF78  2C 19 00 0F */	cmpwi r25, 0xf
/* 8048DF7C  41 80 FF A4 */	blt lbl_8048DF20
/* 8048DF80  2C 1B 00 00 */	cmpwi r27, 0
/* 8048DF84  40 81 00 B4 */	ble lbl_8048E038
/* 8048DF88  4B BC ED 6D */	bl fqrand
/* 8048DF8C  6F 63 80 00 */	xoris r3, r27, 0x8000
/* 8048DF90  3C 00 43 30 */	lis r0, 0x4330
/* 8048DF94  90 61 00 0C */	stw r3, 0xc(r1)
/* 8048DF98  3C 80 80 64 */	lis r4, lit_504@ha /* 0x80644C2C@ha */
/* 8048DF9C  C8 44 4C 2C */	lfd f2, lit_504@l(r4)  /* 0x80644C2C@l */
/* 8048DFA0  3B E0 00 00 */	li r31, 0
/* 8048DFA4  90 01 00 08 */	stw r0, 8(r1)
/* 8048DFA8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8048DFAC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8048DFB0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048DFB4  FC 00 00 1E */	fctiwz f0, f0
/* 8048DFB8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8048DFBC  83 61 00 14 */	lwz r27, 0x14(r1)
lbl_8048DFC0:
/* 8048DFC0  A0 7E 00 00 */	lhz r3, 0(r30)
/* 8048DFC4  7F A4 EB 78 */	mr r4, r29
/* 8048DFC8  4B FE 5C 01 */	bl aMR_CorrespondFurniture
/* 8048DFCC  2C 03 00 00 */	cmpwi r3, 0
/* 8048DFD0  40 82 00 58 */	bne lbl_8048E028
/* 8048DFD4  A0 7E 00 00 */	lhz r3, 0(r30)
/* 8048DFD8  4B F4 6A 91 */	bl mNpc_CheckFtrIsIslandNormalFtr
/* 8048DFDC  2C 03 00 01 */	cmpwi r3, 1
/* 8048DFE0  40 82 00 48 */	bne lbl_8048E028
/* 8048DFE4  A0 7E 00 00 */	lhz r3, 0(r30)
/* 8048DFE8  4B F4 67 01 */	bl mNpc_CheckIslandNpcRoomFtrItemNo_keep
/* 8048DFEC  2C 03 00 01 */	cmpwi r3, 1
/* 8048DFF0  40 82 00 38 */	bne lbl_8048E028
/* 8048DFF4  7F 83 E3 78 */	mr r3, r28
/* 8048DFF8  7F E5 FB 78 */	mr r5, r31
/* 8048DFFC  38 80 00 00 */	li r4, 0
/* 8048E000  4B FF FD 55 */	bl aQMgr_check_item_cond
/* 8048E004  2C 03 00 01 */	cmpwi r3, 1
/* 8048E008  40 82 00 20 */	bne lbl_8048E028
/* 8048E00C  2C 1B 00 00 */	cmpwi r27, 0
/* 8048E010  40 82 00 14 */	bne lbl_8048E024
/* 8048E014  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8048E018  7F FA FB 78 */	mr r26, r31
/* 8048E01C  B0 18 00 00 */	sth r0, 0(r24)
/* 8048E020  48 00 00 18 */	b lbl_8048E038
lbl_8048E024:
/* 8048E024  3B 7B FF FF */	addi r27, r27, -1
lbl_8048E028:
/* 8048E028  3B FF 00 01 */	addi r31, r31, 1
/* 8048E02C  3B DE 00 02 */	addi r30, r30, 2
/* 8048E030  2C 1F 00 0F */	cmpwi r31, 0xf
/* 8048E034  41 80 FF 8C */	blt lbl_8048DFC0
lbl_8048E038:
/* 8048E038  7F 43 D3 78 */	mr r3, r26
/* 8048E03C  39 61 00 40 */	addi r11, r1, 0x40
/* 8048E040  4B C0 CE CD */	bl func_8009AF0C
/* 8048E044  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8048E048  7C 08 03 A6 */	mtlr r0
/* 8048E04C  38 21 00 40 */	addi r1, r1, 0x40
/* 8048E050  4E 80 00 20 */	blr 
