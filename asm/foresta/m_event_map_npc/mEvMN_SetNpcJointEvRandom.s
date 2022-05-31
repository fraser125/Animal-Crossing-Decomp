lbl_8039FA60:
/* 8039FA60  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8039FA64  7C 08 02 A6 */	mflr r0
/* 8039FA68  90 01 00 44 */	stw r0, 0x44(r1)
/* 8039FA6C  39 61 00 40 */	addi r11, r1, 0x40
/* 8039FA70  4B CF B4 45 */	bl func_8009AEB4
/* 8039FA74  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8039FA78  7C 79 1B 78 */	mr r25, r3
/* 8039FA7C  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8039FA80  7C 9A 23 78 */	mr r26, r4
/* 8039FA84  3F E3 00 01 */	addis r31, r3, 1
/* 8039FA88  3B C0 00 00 */	li r30, 0
/* 8039FA8C  3B A0 00 00 */	li r29, 0
/* 8039FA90  3B 80 00 00 */	li r28, 0
/* 8039FA94  3B 60 00 00 */	li r27, 0
/* 8039FA98  3A A0 00 00 */	li r21, 0
/* 8039FA9C  3B 00 00 00 */	li r24, 0
/* 8039FAA0  3A E0 00 01 */	li r23, 1
/* 8039FAA4  3B FF 74 38 */	addi r31, r31, 0x7438
lbl_8039FAA8:
/* 8039FAA8  7C 7F C2 14 */	add r3, r31, r24
/* 8039FAAC  48 02 B9 31 */	bl mNpc_CheckFreeAnimalPersonalID
/* 8039FAB0  2C 03 00 00 */	cmpwi r3, 0
/* 8039FAB4  40 82 00 14 */	bne lbl_8039FAC8
/* 8039FAB8  7E E0 A8 30 */	slw r0, r23, r21
/* 8039FABC  3B 9C 00 01 */	addi r28, r28, 1
/* 8039FAC0  7F C0 03 78 */	or r0, r30, r0
/* 8039FAC4  54 1E 04 3E */	clrlwi r30, r0, 0x10
lbl_8039FAC8:
/* 8039FAC8  3A B5 00 01 */	addi r21, r21, 1
/* 8039FACC  3B 18 09 88 */	addi r24, r24, 0x988
/* 8039FAD0  2C 15 00 0F */	cmpwi r21, 0xf
/* 8039FAD4  41 80 FF D4 */	blt lbl_8039FAA8
/* 8039FAD8  38 60 00 01 */	li r3, 1
/* 8039FADC  7F 49 03 A6 */	mtctr r26
/* 8039FAE0  2C 1A 00 00 */	cmpwi r26, 0
/* 8039FAE4  40 81 00 4C */	ble lbl_8039FB30
lbl_8039FAE8:
/* 8039FAE8  88 99 00 00 */	lbz r4, 0(r25)
/* 8039FAEC  28 04 00 FF */	cmplwi r4, 0xff
/* 8039FAF0  41 82 00 34 */	beq lbl_8039FB24
/* 8039FAF4  28 04 00 0F */	cmplwi r4, 0xf
/* 8039FAF8  40 80 00 2C */	bge lbl_8039FB24
/* 8039FAFC  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8039FB00  7C 00 26 30 */	sraw r0, r0, r4
/* 8039FB04  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8039FB08  2C 00 00 01 */	cmpwi r0, 1
/* 8039FB0C  40 82 00 08 */	bne lbl_8039FB14
/* 8039FB10  3B 9C FF FF */	addi r28, r28, -1
lbl_8039FB14:
/* 8039FB14  7C 60 20 30 */	slw r0, r3, r4
/* 8039FB18  7F C0 00 78 */	andc r0, r30, r0
/* 8039FB1C  54 1E 04 3E */	clrlwi r30, r0, 0x10
/* 8039FB20  48 00 00 08 */	b lbl_8039FB28
lbl_8039FB24:
/* 8039FB24  3B 7B 00 01 */	addi r27, r27, 1
lbl_8039FB28:
/* 8039FB28  3B 39 00 01 */	addi r25, r25, 1
/* 8039FB2C  42 00 FF BC */	bdnz lbl_8039FAE8
lbl_8039FB30:
/* 8039FB30  7F 9A E0 51 */	subf. r28, r26, r28
/* 8039FB34  7F 3A C8 50 */	subf r25, r26, r25
/* 8039FB38  40 81 00 78 */	ble lbl_8039FBB0
/* 8039FB3C  48 01 3F CD */	bl mLd_PlayerManKindCheck
/* 8039FB40  2C 03 00 00 */	cmpwi r3, 0
/* 8039FB44  40 82 00 6C */	bne lbl_8039FBB0
/* 8039FB48  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039FB4C  3A A0 00 00 */	li r21, 0
/* 8039FB50  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039FB54  3B 00 00 00 */	li r24, 0
/* 8039FB58  3E C3 00 02 */	addis r22, r3, 2
/* 8039FB5C  3A E0 00 01 */	li r23, 1
lbl_8039FB60:
/* 8039FB60  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8039FB64  7C 00 AE 30 */	sraw r0, r0, r21
/* 8039FB68  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8039FB6C  2C 00 00 01 */	cmpwi r0, 1
/* 8039FB70  40 82 00 30 */	bne lbl_8039FBA0
/* 8039FB74  38 78 00 10 */	addi r3, r24, 0x10
/* 8039FB78  80 96 61 3C */	lwz r4, 0x613c(r22)
/* 8039FB7C  7C 7F 1A 14 */	add r3, r31, r3
/* 8039FB80  4B FF FB 79 */	bl mEvMN_CheckCanJointEvent
/* 8039FB84  2C 03 00 00 */	cmpwi r3, 0
/* 8039FB88  40 82 00 18 */	bne lbl_8039FBA0
/* 8039FB8C  7E E0 A8 30 */	slw r0, r23, r21
/* 8039FB90  37 9C FF FF */	addic. r28, r28, -1
/* 8039FB94  7F C0 00 78 */	andc r0, r30, r0
/* 8039FB98  54 1E 04 3E */	clrlwi r30, r0, 0x10
/* 8039FB9C  40 81 00 14 */	ble lbl_8039FBB0
lbl_8039FBA0:
/* 8039FBA0  3A B5 00 01 */	addi r21, r21, 1
/* 8039FBA4  3B 18 09 88 */	addi r24, r24, 0x988
/* 8039FBA8  2C 15 00 0F */	cmpwi r21, 0xf
/* 8039FBAC  41 80 FF B4 */	blt lbl_8039FB60
lbl_8039FBB0:
/* 8039FBB0  38 00 00 0F */	li r0, 0xf
/* 8039FBB4  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 8039FBB8  38 80 00 00 */	li r4, 0
/* 8039FBBC  7C 09 03 A6 */	mtctr r0
lbl_8039FBC0:
/* 8039FBC0  7C 60 26 30 */	sraw r0, r3, r4
/* 8039FBC4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8039FBC8  2C 00 00 01 */	cmpwi r0, 1
/* 8039FBCC  40 82 00 08 */	bne lbl_8039FBD4
/* 8039FBD0  3B BD 00 01 */	addi r29, r29, 1
lbl_8039FBD4:
/* 8039FBD4  38 84 00 01 */	addi r4, r4, 1
/* 8039FBD8  42 00 FF E8 */	bdnz lbl_8039FBC0
/* 8039FBDC  7C 1D D8 00 */	cmpw r29, r27
/* 8039FBE0  40 80 00 08 */	bge lbl_8039FBE8
/* 8039FBE4  7F BB EB 78 */	mr r27, r29
lbl_8039FBE8:
/* 8039FBE8  2C 1B 00 00 */	cmpwi r27, 0
/* 8039FBEC  40 81 00 80 */	ble lbl_8039FC6C
/* 8039FBF0  3A C0 00 00 */	li r22, 0
/* 8039FBF4  48 00 00 70 */	b lbl_8039FC64
lbl_8039FBF8:
/* 8039FBF8  57 C0 04 3F */	clrlwi. r0, r30, 0x10
/* 8039FBFC  41 82 00 70 */	beq lbl_8039FC6C
/* 8039FC00  2C 1D 00 00 */	cmpwi r29, 0
/* 8039FC04  40 81 00 68 */	ble lbl_8039FC6C
/* 8039FC08  88 19 00 00 */	lbz r0, 0(r25)
/* 8039FC0C  28 00 00 FF */	cmplwi r0, 0xff
/* 8039FC10  40 82 00 4C */	bne lbl_8039FC5C
/* 8039FC14  4B CB D0 E1 */	bl fqrand
/* 8039FC18  38 00 00 0F */	li r0, 0xf
/* 8039FC1C  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 8039FC20  38 80 00 00 */	li r4, 0
/* 8039FC24  7C 09 03 A6 */	mtctr r0
lbl_8039FC28:
/* 8039FC28  7C 60 26 30 */	sraw r0, r3, r4
/* 8039FC2C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8039FC30  2C 00 00 01 */	cmpwi r0, 1
/* 8039FC34  40 82 00 20 */	bne lbl_8039FC54
/* 8039FC38  38 00 00 01 */	li r0, 1
/* 8039FC3C  98 99 00 00 */	stb r4, 0(r25)
/* 8039FC40  7C 00 20 30 */	slw r0, r0, r4
/* 8039FC44  3B BD FF FF */	addi r29, r29, -1
/* 8039FC48  7F C0 00 78 */	andc r0, r30, r0
/* 8039FC4C  54 1E 04 3E */	clrlwi r30, r0, 0x10
/* 8039FC50  48 00 00 0C */	b lbl_8039FC5C
lbl_8039FC54:
/* 8039FC54  38 84 00 01 */	addi r4, r4, 1
/* 8039FC58  42 00 FF D0 */	bdnz lbl_8039FC28
lbl_8039FC5C:
/* 8039FC5C  3B 39 00 01 */	addi r25, r25, 1
/* 8039FC60  3A D6 00 01 */	addi r22, r22, 1
lbl_8039FC64:
/* 8039FC64  7C 16 D0 00 */	cmpw r22, r26
/* 8039FC68  41 80 FF 90 */	blt lbl_8039FBF8
lbl_8039FC6C:
/* 8039FC6C  39 61 00 40 */	addi r11, r1, 0x40
/* 8039FC70  4B CF B2 91 */	bl func_8009AF00
/* 8039FC74  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8039FC78  7C 08 03 A6 */	mtlr r0
/* 8039FC7C  38 21 00 40 */	addi r1, r1, 0x40
/* 8039FC80  4E 80 00 20 */	blr 
