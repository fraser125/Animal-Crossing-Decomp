lbl_805B9138:
/* 805B9138  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805B913C  7C 08 02 A6 */	mflr r0
/* 805B9140  90 01 00 64 */	stw r0, 0x64(r1)
/* 805B9144  39 61 00 60 */	addi r11, r1, 0x60
/* 805B9148  4B AE 1D 8D */	bl func_8009AED4
/* 805B914C  7C 9F 23 78 */	mr r31, r4
/* 805B9150  7C 7E 1B 78 */	mr r30, r3
/* 805B9154  7F E3 FB 78 */	mr r3, r31
/* 805B9158  4B E2 04 E9 */	bl get_player_actor_withoutCheck
/* 805B915C  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 805B9160  7C 7D 1B 78 */	mr r29, r3
/* 805B9164  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805B9168  38 61 00 14 */	addi r3, r1, 0x14
/* 805B916C  38 81 00 10 */	addi r4, r1, 0x10
/* 805B9170  90 A1 00 30 */	stw r5, 0x30(r1)
/* 805B9174  38 A1 00 30 */	addi r5, r1, 0x30
/* 805B9178  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B917C  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805B9180  90 01 00 38 */	stw r0, 0x38(r1)
/* 805B9184  4B DE C5 DD */	bl mFI_Wpos2BlockNum
/* 805B9188  80 DD 00 28 */	lwz r6, 0x28(r29)
/* 805B918C  38 61 00 0C */	addi r3, r1, 0xc
/* 805B9190  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 805B9194  38 81 00 08 */	addi r4, r1, 8
/* 805B9198  38 A1 00 24 */	addi r5, r1, 0x24
/* 805B919C  90 C1 00 24 */	stw r6, 0x24(r1)
/* 805B91A0  90 01 00 28 */	stw r0, 0x28(r1)
/* 805B91A4  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 805B91A8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805B91AC  4B DE C5 B5 */	bl mFI_Wpos2BlockNum
/* 805B91B0  7F A4 EB 78 */	mr r4, r29
/* 805B91B4  38 60 00 01 */	li r3, 1
/* 805B91B8  4B DE 10 AD */	bl mDemo_Check
/* 805B91BC  2C 03 00 00 */	cmpwi r3, 0
/* 805B91C0  40 82 00 58 */	bne lbl_805B9218
/* 805B91C4  7F A4 EB 78 */	mr r4, r29
/* 805B91C8  38 60 00 05 */	li r3, 5
/* 805B91CC  4B DE 10 99 */	bl mDemo_Check
/* 805B91D0  2C 03 00 00 */	cmpwi r3, 0
/* 805B91D4  40 82 00 44 */	bne lbl_805B9218
/* 805B91D8  7F A4 EB 78 */	mr r4, r29
/* 805B91DC  38 60 00 10 */	li r3, 0x10
/* 805B91E0  4B DE 10 85 */	bl mDemo_Check
/* 805B91E4  2C 03 00 00 */	cmpwi r3, 0
/* 805B91E8  40 82 00 30 */	bne lbl_805B9218
/* 805B91EC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805B91F0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805B91F4  7C 03 00 00 */	cmpw r3, r0
/* 805B91F8  40 82 00 14 */	bne lbl_805B920C
/* 805B91FC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805B9200  80 01 00 08 */	lwz r0, 8(r1)
/* 805B9204  7C 03 00 00 */	cmpw r3, r0
/* 805B9208  41 82 00 10 */	beq lbl_805B9218
lbl_805B920C:
/* 805B920C  7F C3 F3 78 */	mr r3, r30
/* 805B9210  4B DB B2 31 */	bl Actor_delete
/* 805B9214  48 00 00 C4 */	b lbl_805B92D8
lbl_805B9218:
/* 805B9218  38 60 00 4C */	li r3, 0x4c
/* 805B921C  38 80 00 00 */	li r4, 0
/* 805B9220  4B DE 4E BD */	bl mEv_get_common_area
/* 805B9224  7C 69 1B 79 */	or. r9, r3, r3
/* 805B9228  41 82 00 B0 */	beq lbl_805B92D8
/* 805B922C  80 09 00 00 */	lwz r0, 0(r9)
/* 805B9230  2C 00 00 64 */	cmpwi r0, 0x64
/* 805B9234  41 80 00 A4 */	blt lbl_805B92D8
/* 805B9238  80 7E 02 B4 */	lwz r3, 0x2b4(r30)
/* 805B923C  2C 03 00 00 */	cmpwi r3, 0
/* 805B9240  41 81 00 90 */	bgt lbl_805B92D0
/* 805B9244  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 805B9248  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B924C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805B9250  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B9254  3C 63 00 02 */	addis r3, r3, 2
/* 805B9258  7F E7 FB 78 */	mr r7, r31
/* 805B925C  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B9260  38 81 00 18 */	addi r4, r1, 0x18
/* 805B9264  81 03 60 9C */	lwz r8, 0x609c(r3)
/* 805B9268  38 60 00 5A */	li r3, 0x5a
/* 805B926C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805B9270  38 A0 00 01 */	li r5, 1
/* 805B9274  38 C0 00 00 */	li r6, 0
/* 805B9278  39 40 00 00 */	li r10, 0
/* 805B927C  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805B9280  90 01 00 20 */	stw r0, 0x20(r1)
/* 805B9284  81 29 00 04 */	lwz r9, 4(r9)
/* 805B9288  81 88 00 00 */	lwz r12, 0(r8)
/* 805B928C  30 09 FF FF */	addic r0, r9, -1
/* 805B9290  A1 1E 00 06 */	lhz r8, 6(r30)
/* 805B9294  7C 00 49 10 */	subfe r0, r0, r9
/* 805B9298  7C 09 07 34 */	extsh r9, r0
/* 805B929C  7D 89 03 A6 */	mtctr r12
/* 805B92A0  4E 80 04 21 */	bctrl 
/* 805B92A4  4B AA 3A 51 */	bl fqrand
/* 805B92A8  3C 60 80 65 */	lis r3, data_8064AA7C@ha /* 0x8064AA7C@ha */
/* 805B92AC  C0 03 AA 7C */	lfs f0, data_8064AA7C@l(r3)  /* 0x8064AA7C@l */
/* 805B92B0  EC 00 00 72 */	fmuls f0, f0, f1
/* 805B92B4  FC 00 00 1E */	fctiwz f0, f0
/* 805B92B8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 805B92BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B92C0  54 03 20 36 */	slwi r3, r0, 4
/* 805B92C4  38 03 00 30 */	addi r0, r3, 0x30
/* 805B92C8  90 1E 02 B4 */	stw r0, 0x2b4(r30)
/* 805B92CC  48 00 00 0C */	b lbl_805B92D8
lbl_805B92D0:
/* 805B92D0  38 03 FF FF */	addi r0, r3, -1
/* 805B92D4  90 1E 02 B4 */	stw r0, 0x2b4(r30)
lbl_805B92D8:
/* 805B92D8  39 61 00 60 */	addi r11, r1, 0x60
/* 805B92DC  4B AE 1C 45 */	bl func_8009AF20
/* 805B92E0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805B92E4  7C 08 03 A6 */	mtlr r0
/* 805B92E8  38 21 00 60 */	addi r1, r1, 0x60
/* 805B92EC  4E 80 00 20 */	blr 
