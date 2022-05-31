lbl_804BB554:
/* 804BB554  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804BB558  7C 08 02 A6 */	mflr r0
/* 804BB55C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804BB560  39 61 00 40 */	addi r11, r1, 0x40
/* 804BB564  4B BD F9 61 */	bl func_8009AEC4
/* 804BB568  7C 9D 23 78 */	mr r29, r4
/* 804BB56C  7C 7C 1B 78 */	mr r28, r3
/* 804BB570  83 64 00 1C */	lwz r27, 0x1c(r4)
/* 804BB574  7C B9 2B 78 */	mr r25, r5
/* 804BB578  7C DE 33 78 */	mr r30, r6
/* 804BB57C  28 1B 00 00 */	cmplwi r27, 0
/* 804BB580  41 82 00 D0 */	beq lbl_804BB650
/* 804BB584  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 804BB588  80 1C 02 D4 */	lwz r0, 0x2d4(r28)
/* 804BB58C  54 63 20 36 */	slwi r3, r3, 4
/* 804BB590  83 FC 03 00 */	lwz r31, 0x300(r28)
/* 804BB594  7C 63 00 51 */	subf. r3, r3, r0
/* 804BB598  90 7C 02 D4 */	stw r3, 0x2d4(r28)
/* 804BB59C  7C 7A 1B 78 */	mr r26, r3
/* 804BB5A0  41 82 00 2C */	beq lbl_804BB5CC
/* 804BB5A4  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 804BB5A8  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 804BB5AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 804BB5B0  80 BD 00 0C */	lwz r5, 0xc(r29)
/* 804BB5B4  80 DD 00 18 */	lwz r6, 0x18(r29)
/* 804BB5B8  FC 00 00 1E */	fctiwz f0, f0
/* 804BB5BC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804BB5C0  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 804BB5C4  4B FF BB 4D */	bl func_804B7110
/* 804BB5C8  48 00 00 08 */	b lbl_804BB5D0
lbl_804BB5CC:
/* 804BB5CC  83 5D 00 10 */	lwz r26, 0x10(r29)
lbl_804BB5D0:
/* 804BB5D0  3C 00 DE 00 */	lis r0, 0xde00
/* 804BB5D4  7F 83 E3 78 */	mr r3, r28
/* 804BB5D8  90 1F 00 00 */	stw r0, 0(r31)
/* 804BB5DC  7F 65 DB 78 */	mr r5, r27
/* 804BB5E0  7F 47 D3 78 */	mr r7, r26
/* 804BB5E4  7F 28 CB 78 */	mr r8, r25
/* 804BB5E8  88 1B 00 04 */	lbz r0, 4(r27)
/* 804BB5EC  38 81 00 08 */	addi r4, r1, 8
/* 804BB5F0  80 DD 00 00 */	lwz r6, 0(r29)
/* 804BB5F4  54 00 10 3A */	slwi r0, r0, 2
/* 804BB5F8  7C 06 00 2E */	lwzx r0, r6, r0
/* 804BB5FC  90 1F 00 04 */	stw r0, 4(r31)
/* 804BB600  3B FF 00 08 */	addi r31, r31, 8
/* 804BB604  7F EA FB 78 */	mr r10, r31
/* 804BB608  88 1E 00 03 */	lbz r0, 3(r30)
/* 804BB60C  3B FF 00 08 */	addi r31, r31, 8
/* 804BB610  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 804BB614  90 0A 00 00 */	stw r0, 0(r10)
/* 804BB618  88 1E 00 01 */	lbz r0, 1(r30)
/* 804BB61C  88 DE 00 00 */	lbz r6, 0(r30)
/* 804BB620  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 804BB624  89 3E 00 02 */	lbz r9, 2(r30)
/* 804BB628  50 C0 C0 0E */	rlwimi r0, r6, 0x18, 0, 7
/* 804BB62C  51 20 44 2E */	rlwimi r0, r9, 8, 0x10, 0x17
/* 804BB630  60 00 00 FF */	ori r0, r0, 0xff
/* 804BB634  90 0A 00 04 */	stw r0, 4(r10)
/* 804BB638  93 E1 00 08 */	stw r31, 8(r1)
/* 804BB63C  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 804BB640  81 3D 00 00 */	lwz r9, 0(r29)
/* 804BB644  4B FF FC E5 */	bl bit_cmn_s_single_draw_loop_type1
/* 804BB648  80 01 00 08 */	lwz r0, 8(r1)
/* 804BB64C  90 1C 03 00 */	stw r0, 0x300(r28)
lbl_804BB650:
/* 804BB650  39 61 00 40 */	addi r11, r1, 0x40
/* 804BB654  4B BD F8 BD */	bl func_8009AF10
/* 804BB658  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804BB65C  7C 08 03 A6 */	mtlr r0
/* 804BB660  38 21 00 40 */	addi r1, r1, 0x40
/* 804BB664  4E 80 00 20 */	blr 
