lbl_804C56DC:
/* 804C56DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C56E0  7C 08 02 A6 */	mflr r0
/* 804C56E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C56E8  39 61 00 30 */	addi r11, r1, 0x30
/* 804C56EC  4B BD 57 D9 */	bl func_8009AEC4
/* 804C56F0  7C BD 2B 78 */	mr r29, r5
/* 804C56F4  7C 79 1B 78 */	mr r25, r3
/* 804C56F8  83 E5 00 1C */	lwz r31, 0x1c(r5)
/* 804C56FC  7C 9C 23 78 */	mr r28, r4
/* 804C5700  7C DA 33 78 */	mr r26, r6
/* 804C5704  7C FE 3B 78 */	mr r30, r7
/* 804C5708  28 1F 00 00 */	cmplwi r31, 0
/* 804C570C  41 82 00 D4 */	beq lbl_804C57E0
/* 804C5710  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 804C5714  80 19 02 D4 */	lwz r0, 0x2d4(r25)
/* 804C5718  54 63 20 36 */	slwi r3, r3, 4
/* 804C571C  7C 63 00 51 */	subf. r3, r3, r0
/* 804C5720  90 79 02 D4 */	stw r3, 0x2d4(r25)
/* 804C5724  7C 7B 1B 78 */	mr r27, r3
/* 804C5728  41 82 00 2C */	beq lbl_804C5754
/* 804C572C  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 804C5730  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 804C5734  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C5738  80 BD 00 0C */	lwz r5, 0xc(r29)
/* 804C573C  80 DD 00 18 */	lwz r6, 0x18(r29)
/* 804C5740  FC 00 00 1E */	fctiwz f0, f0
/* 804C5744  D8 01 00 08 */	stfd f0, 8(r1)
/* 804C5748  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 804C574C  4B FF 94 BD */	bl func_804BEC08
/* 804C5750  48 00 00 08 */	b lbl_804C5758
lbl_804C5754:
/* 804C5754  83 7D 00 10 */	lwz r27, 0x10(r29)
lbl_804C5758:
/* 804C5758  81 3C 00 00 */	lwz r9, 0(r28)
/* 804C575C  3C 00 DE 00 */	lis r0, 0xde00
/* 804C5760  7F 23 CB 78 */	mr r3, r25
/* 804C5764  7F 84 E3 78 */	mr r4, r28
/* 804C5768  38 C9 00 08 */	addi r6, r9, 8
/* 804C576C  7F E5 FB 78 */	mr r5, r31
/* 804C5770  90 DC 00 00 */	stw r6, 0(r28)
/* 804C5774  7F 67 DB 78 */	mr r7, r27
/* 804C5778  7F 48 D3 78 */	mr r8, r26
/* 804C577C  90 09 00 00 */	stw r0, 0(r9)
/* 804C5780  88 1F 00 04 */	lbz r0, 4(r31)
/* 804C5784  80 DD 00 00 */	lwz r6, 0(r29)
/* 804C5788  54 00 10 3A */	slwi r0, r0, 2
/* 804C578C  7C 06 00 2E */	lwzx r0, r6, r0
/* 804C5790  90 09 00 04 */	stw r0, 4(r9)
/* 804C5794  81 5C 00 00 */	lwz r10, 0(r28)
/* 804C5798  38 0A 00 08 */	addi r0, r10, 8
/* 804C579C  90 1C 00 00 */	stw r0, 0(r28)
/* 804C57A0  88 1E 00 03 */	lbz r0, 3(r30)
/* 804C57A4  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 804C57A8  90 0A 00 00 */	stw r0, 0(r10)
/* 804C57AC  88 1E 00 01 */	lbz r0, 1(r30)
/* 804C57B0  88 DE 00 00 */	lbz r6, 0(r30)
/* 804C57B4  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 804C57B8  89 3E 00 02 */	lbz r9, 2(r30)
/* 804C57BC  50 C0 C0 0E */	rlwimi r0, r6, 0x18, 0, 7
/* 804C57C0  51 20 44 2E */	rlwimi r0, r9, 8, 0x10, 0x17
/* 804C57C4  60 00 00 FF */	ori r0, r0, 0xff
/* 804C57C8  90 0A 00 04 */	stw r0, 4(r10)
/* 804C57CC  81 9F 00 00 */	lwz r12, 0(r31)
/* 804C57D0  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 804C57D4  81 3D 00 00 */	lwz r9, 0(r29)
/* 804C57D8  7D 89 03 A6 */	mtctr r12
/* 804C57DC  4E 80 04 21 */	bctrl 
lbl_804C57E0:
/* 804C57E0  39 61 00 30 */	addi r11, r1, 0x30
/* 804C57E4  4B BD 57 2D */	bl func_8009AF10
/* 804C57E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C57EC  7C 08 03 A6 */	mtlr r0
/* 804C57F0  38 21 00 30 */	addi r1, r1, 0x30
/* 804C57F4  4E 80 00 20 */	blr 
