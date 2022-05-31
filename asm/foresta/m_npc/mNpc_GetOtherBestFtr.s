lbl_803D5704:
/* 803D5704  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803D5708  7C 08 02 A6 */	mflr r0
/* 803D570C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803D5710  39 61 00 40 */	addi r11, r1, 0x40
/* 803D5714  4B CC 57 A5 */	bl func_8009AEB8
/* 803D5718  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803D571C  7C 76 1B 78 */	mr r22, r3
/* 803D5720  38 66 85 38 */	addi r3, r6, common_data@l /* 0x81138538@l */
/* 803D5724  7C 9C 23 78 */	mr r28, r4
/* 803D5728  3F C3 00 02 */	addis r30, r3, 2
/* 803D572C  7C BD 2B 78 */	mr r29, r5
/* 803D5730  A0 7E 34 40 */	lhz r3, 0x3440(r30)
/* 803D5734  3B E0 00 00 */	li r31, 0
/* 803D5738  3B DE 34 50 */	addi r30, r30, 0x3450
/* 803D573C  4B FF ED F9 */	bl mNpc_GetIslandRoomP
/* 803D5740  7C 77 1B 79 */	or. r23, r3, r3
/* 803D5744  3B 60 00 00 */	li r27, 0
/* 803D5748  3B 20 00 00 */	li r25, 0
/* 803D574C  7E F8 BB 78 */	mr r24, r23
/* 803D5750  41 82 01 84 */	beq lbl_803D58D4
/* 803D5754  28 1C 00 00 */	cmplwi r28, 0
/* 803D5758  41 82 01 7C */	beq lbl_803D58D4
/* 803D575C  38 00 00 00 */	li r0, 0
/* 803D5760  7E C3 B3 78 */	mr r3, r22
/* 803D5764  B0 1C 00 00 */	sth r0, 0(r28)
/* 803D5768  7F C4 F3 78 */	mr r4, r30
/* 803D576C  38 A0 00 07 */	li r5, 7
/* 803D5770  4B FF 66 09 */	bl mNpc_GetAnimalMemoryIdx
/* 803D5774  7C 7A 1B 78 */	mr r26, r3
/* 803D5778  3A C0 00 00 */	li r22, 0
lbl_803D577C:
/* 803D577C  A0 77 00 00 */	lhz r3, 0(r23)
/* 803D5780  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803D5784  2C 00 00 01 */	cmpwi r0, 1
/* 803D5788  41 82 00 0C */	beq lbl_803D5794
/* 803D578C  2C 00 00 03 */	cmpwi r0, 3
/* 803D5790  40 82 00 38 */	bne lbl_803D57C8
lbl_803D5794:
/* 803D5794  7F A4 EB 78 */	mr r4, r29
/* 803D5798  48 09 E4 31 */	bl aMR_CorrespondFurniture
/* 803D579C  2C 03 00 00 */	cmpwi r3, 0
/* 803D57A0  40 82 00 20 */	bne lbl_803D57C0
/* 803D57A4  7F 23 CB 78 */	mr r3, r25
/* 803D57A8  4B FF EE 95 */	bl mNpc_CheckIslandNpcRoomFtrIdx
/* 803D57AC  2C 03 FF FF */	cmpwi r3, -1
/* 803D57B0  41 82 00 10 */	beq lbl_803D57C0
/* 803D57B4  7C 03 D0 00 */	cmpw r3, r26
/* 803D57B8  41 82 00 08 */	beq lbl_803D57C0
/* 803D57BC  3B 7B 00 01 */	addi r27, r27, 1
lbl_803D57C0:
/* 803D57C0  3B 39 00 01 */	addi r25, r25, 1
/* 803D57C4  48 00 00 18 */	b lbl_803D57DC
lbl_803D57C8:
/* 803D57C8  28 03 FE B3 */	cmplwi r3, 0xfeb3
/* 803D57CC  41 80 00 10 */	blt lbl_803D57DC
/* 803D57D0  28 03 FE C2 */	cmplwi r3, 0xfec2
/* 803D57D4  41 81 00 08 */	bgt lbl_803D57DC
/* 803D57D8  3B 39 00 01 */	addi r25, r25, 1
lbl_803D57DC:
/* 803D57DC  3A D6 00 01 */	addi r22, r22, 1
/* 803D57E0  3A F7 00 02 */	addi r23, r23, 2
/* 803D57E4  2C 16 01 00 */	cmpwi r22, 0x100
/* 803D57E8  41 80 FF 94 */	blt lbl_803D577C
/* 803D57EC  28 18 00 00 */	cmplwi r24, 0
/* 803D57F0  7F 19 C3 78 */	mr r25, r24
/* 803D57F4  3B 00 00 00 */	li r24, 0
/* 803D57F8  41 82 00 DC */	beq lbl_803D58D4
/* 803D57FC  2C 1B 00 00 */	cmpwi r27, 0
/* 803D5800  40 81 00 D4 */	ble lbl_803D58D4
/* 803D5804  4B C8 74 F1 */	bl fqrand
/* 803D5808  6F 63 80 00 */	xoris r3, r27, 0x8000
/* 803D580C  3C 00 43 30 */	lis r0, 0x4330
/* 803D5810  90 61 00 0C */	stw r3, 0xc(r1)
/* 803D5814  3C 80 80 64 */	lis r4, data_806428CC@ha /* 0x806428CC@ha */
/* 803D5818  C8 44 28 CC */	lfd f2, data_806428CC@l(r4)  /* 0x806428CC@l */
/* 803D581C  3A E0 00 00 */	li r23, 0
/* 803D5820  90 01 00 08 */	stw r0, 8(r1)
/* 803D5824  C8 01 00 08 */	lfd f0, 8(r1)
/* 803D5828  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D582C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D5830  FC 00 00 1E */	fctiwz f0, f0
/* 803D5834  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803D5838  82 C1 00 14 */	lwz r22, 0x14(r1)
lbl_803D583C:
/* 803D583C  A0 79 00 00 */	lhz r3, 0(r25)
/* 803D5840  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803D5844  2C 00 00 01 */	cmpwi r0, 1
/* 803D5848  41 82 00 0C */	beq lbl_803D5854
/* 803D584C  2C 00 00 03 */	cmpwi r0, 3
/* 803D5850  40 82 00 60 */	bne lbl_803D58B0
lbl_803D5854:
/* 803D5854  7F A4 EB 78 */	mr r4, r29
/* 803D5858  48 09 E3 71 */	bl aMR_CorrespondFurniture
/* 803D585C  2C 03 00 00 */	cmpwi r3, 0
/* 803D5860  40 82 00 48 */	bne lbl_803D58A8
/* 803D5864  7F 03 C3 78 */	mr r3, r24
/* 803D5868  4B FF ED D5 */	bl mNpc_CheckIslandNpcRoomFtrIdx
/* 803D586C  7C 7B 1B 78 */	mr r27, r3
/* 803D5870  2C 1B FF FF */	cmpwi r27, -1
/* 803D5874  41 82 00 34 */	beq lbl_803D58A8
/* 803D5878  7C 1B D0 00 */	cmpw r27, r26
/* 803D587C  41 82 00 2C */	beq lbl_803D58A8
/* 803D5880  2C 16 00 00 */	cmpwi r22, 0
/* 803D5884  40 82 00 20 */	bne lbl_803D58A4
/* 803D5888  A0 79 00 00 */	lhz r3, 0(r25)
/* 803D588C  38 80 00 00 */	li r4, 0
/* 803D5890  48 09 E3 B5 */	bl aMR_FurnitureFg_to_FurnitureFgWithDirect
/* 803D5894  1C 1B 01 38 */	mulli r0, r27, 0x138
/* 803D5898  B0 7C 00 00 */	sth r3, 0(r28)
/* 803D589C  7F FE 02 14 */	add r31, r30, r0
/* 803D58A0  48 00 00 34 */	b lbl_803D58D4
lbl_803D58A4:
/* 803D58A4  3A D6 FF FF */	addi r22, r22, -1
lbl_803D58A8:
/* 803D58A8  3B 18 00 01 */	addi r24, r24, 1
/* 803D58AC  48 00 00 18 */	b lbl_803D58C4
lbl_803D58B0:
/* 803D58B0  28 03 FE B3 */	cmplwi r3, 0xfeb3
/* 803D58B4  41 80 00 10 */	blt lbl_803D58C4
/* 803D58B8  28 03 FE C2 */	cmplwi r3, 0xfec2
/* 803D58BC  41 81 00 08 */	bgt lbl_803D58C4
/* 803D58C0  3B 18 00 01 */	addi r24, r24, 1
lbl_803D58C4:
/* 803D58C4  3A F7 00 01 */	addi r23, r23, 1
/* 803D58C8  3B 39 00 02 */	addi r25, r25, 2
/* 803D58CC  2C 17 01 00 */	cmpwi r23, 0x100
/* 803D58D0  41 80 FF 6C */	blt lbl_803D583C
lbl_803D58D4:
/* 803D58D4  7F E3 FB 78 */	mr r3, r31
/* 803D58D8  39 61 00 40 */	addi r11, r1, 0x40
/* 803D58DC  4B CC 56 29 */	bl func_8009AF04
/* 803D58E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803D58E4  7C 08 03 A6 */	mtlr r0
/* 803D58E8  38 21 00 40 */	addi r1, r1, 0x40
/* 803D58EC  4E 80 00 20 */	blr 
