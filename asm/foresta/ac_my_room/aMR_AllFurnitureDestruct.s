lbl_804732D0:
/* 804732D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804732D4  7C 08 02 A6 */	mflr r0
/* 804732D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804732DC  39 61 00 20 */	addi r11, r1, 0x20
/* 804732E0  4B C2 7B E9 */	bl func_8009AEC8
/* 804732E4  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 804732E8  7C 7A 1B 78 */	mr r26, r3
/* 804732EC  38 64 DF E8 */	addi r3, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 804732F0  83 A3 00 00 */	lwz r29, 0(r3)
/* 804732F4  83 83 00 04 */	lwz r28, 4(r3)
/* 804732F8  48 1B AE 01 */	bl sAdo_RhythmAllStop
/* 804732FC  28 1D 00 00 */	cmplwi r29, 0
/* 80473300  41 82 00 C8 */	beq lbl_804733C8
/* 80473304  28 1C 00 00 */	cmplwi r28, 0
/* 80473308  41 82 00 C0 */	beq lbl_804733C8
/* 8047330C  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80473310  3B 60 00 00 */	li r27, 0
/* 80473314  3B C3 DF E8 */	addi r30, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80473318  48 00 00 A4 */	b lbl_804733BC
lbl_8047331C:
/* 8047331C  88 1C 00 00 */	lbz r0, 0(r28)
/* 80473320  28 00 00 00 */	cmplwi r0, 0
/* 80473324  41 82 00 8C */	beq lbl_804733B0
/* 80473328  A0 7D 00 00 */	lhz r3, 0(r29)
/* 8047332C  4B FF CE 75 */	bl func_804701A0
/* 80473330  7C 7F 1B 78 */	mr r31, r3
/* 80473334  80 7D 00 D0 */	lwz r3, 0xd0(r29)
/* 80473338  4B F1 9B BD */	bl mCoBG_CrossOffMoveBg
/* 8047333C  7F A3 EB 78 */	mr r3, r29
/* 80473340  4B FF FE C9 */	bl aMR_KeepItem2Fg
/* 80473344  7F A3 EB 78 */	mr r3, r29
/* 80473348  7F 44 D3 78 */	mr r4, r26
/* 8047334C  4B FF E7 D5 */	bl aMR_MiniDiskCommonDt
/* 80473350  7F A3 EB 78 */	mr r3, r29
/* 80473354  7F 44 D3 78 */	mr r4, r26
/* 80473358  4B FF E8 99 */	bl aMR_RadioCommonDt
/* 8047335C  7F 43 D3 78 */	mr r3, r26
/* 80473360  7F A4 EB 78 */	mr r4, r29
/* 80473364  4B FF D9 75 */	bl aMR_MinusWeight
/* 80473368  28 1F 00 00 */	cmplwi r31, 0
/* 8047336C  41 82 00 3C */	beq lbl_804733A8
/* 80473370  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80473374  28 03 00 00 */	cmplwi r3, 0
/* 80473378  41 82 00 30 */	beq lbl_804733A8
/* 8047337C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80473380  28 00 00 00 */	cmplwi r0, 0
/* 80473384  41 82 00 24 */	beq lbl_804733A8
/* 80473388  A0 7D 00 00 */	lhz r3, 0(r29)
/* 8047338C  4B FF DA 45 */	bl aMR_FtrNo2BankAddress
/* 80473390  80 BF 00 30 */	lwz r5, 0x30(r31)
/* 80473394  7C 64 1B 78 */	mr r4, r3
/* 80473398  7F A3 EB 78 */	mr r3, r29
/* 8047339C  81 85 00 0C */	lwz r12, 0xc(r5)
/* 804733A0  7D 89 03 A6 */	mtctr r12
/* 804733A4  4E 80 04 21 */	bctrl 
lbl_804733A8:
/* 804733A8  38 00 00 00 */	li r0, 0
/* 804733AC  98 1C 00 00 */	stb r0, 0(r28)
lbl_804733B0:
/* 804733B0  3B 9C 00 01 */	addi r28, r28, 1
/* 804733B4  3B BD 08 58 */	addi r29, r29, 0x858
/* 804733B8  3B 7B 00 01 */	addi r27, r27, 1
lbl_804733BC:
/* 804733BC  80 1E 00 08 */	lwz r0, 8(r30)
/* 804733C0  7C 1B 00 00 */	cmpw r27, r0
/* 804733C4  41 80 FF 58 */	blt lbl_8047331C
lbl_804733C8:
/* 804733C8  39 61 00 20 */	addi r11, r1, 0x20
/* 804733CC  4B C2 7B 49 */	bl func_8009AF14
/* 804733D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804733D4  7C 08 03 A6 */	mtlr r0
/* 804733D8  38 21 00 20 */	addi r1, r1, 0x20
/* 804733DC  4E 80 00 20 */	blr 
