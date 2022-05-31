lbl_803E8E68:
/* 803E8E68  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803E8E6C  7C 08 02 A6 */	mflr r0
/* 803E8E70  90 01 00 54 */	stw r0, 0x54(r1)
/* 803E8E74  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 803E8E78  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 803E8E7C  39 61 00 40 */	addi r11, r1, 0x40
/* 803E8E80  4B CB 20 4D */	bl func_8009AECC
/* 803E8E84  7C 7D 1B 78 */	mr r29, r3
/* 803E8E88  7C 9E 23 78 */	mr r30, r4
/* 803E8E8C  7C BF 2B 78 */	mr r31, r5
/* 803E8E90  7C DC 33 78 */	mr r28, r6
/* 803E8E94  7C FB 3B 78 */	mr r27, r7
/* 803E8E98  48 00 1F E9 */	bl mSP_CheckHallowinDay
/* 803E8E9C  2C 03 00 00 */	cmpwi r3, 0
/* 803E8EA0  41 82 00 1C */	beq lbl_803E8EBC
/* 803E8EA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E8EA8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E8EAC  3C 63 00 02 */	addis r3, r3, 2
/* 803E8EB0  9B E3 04 64 */	stb r31, 0x464(r3)
/* 803E8EB4  7F 9F E3 78 */	mr r31, r28
/* 803E8EB8  3B 80 00 00 */	li r28, 0
lbl_803E8EBC:
/* 803E8EBC  2C 1B 00 02 */	cmpwi r27, 2
/* 803E8EC0  41 80 00 2C */	blt lbl_803E8EEC
/* 803E8EC4  2C 1C 00 00 */	cmpwi r28, 0
/* 803E8EC8  40 81 00 24 */	ble lbl_803E8EEC
/* 803E8ECC  80 1E 00 00 */	lwz r0, 0(r30)
/* 803E8ED0  38 60 29 01 */	li r3, 0x2901
/* 803E8ED4  3B 9C FF FF */	addi r28, r28, -1
/* 803E8ED8  54 00 08 3C */	slwi r0, r0, 1
/* 803E8EDC  7C 7D 03 2E */	sthx r3, r29, r0
/* 803E8EE0  80 7E 00 00 */	lwz r3, 0(r30)
/* 803E8EE4  38 03 00 01 */	addi r0, r3, 1
/* 803E8EE8  90 1E 00 00 */	stw r0, 0(r30)
lbl_803E8EEC:
/* 803E8EEC  38 80 29 00 */	li r4, 0x2900
/* 803E8EF0  7F 89 03 A6 */	mtctr r28
/* 803E8EF4  2C 1C 00 00 */	cmpwi r28, 0
/* 803E8EF8  40 81 00 20 */	ble lbl_803E8F18
lbl_803E8EFC:
/* 803E8EFC  80 1E 00 00 */	lwz r0, 0(r30)
/* 803E8F00  54 00 08 3C */	slwi r0, r0, 1
/* 803E8F04  7C 9D 03 2E */	sthx r4, r29, r0
/* 803E8F08  80 7E 00 00 */	lwz r3, 0(r30)
/* 803E8F0C  38 03 00 01 */	addi r0, r3, 1
/* 803E8F10  90 1E 00 00 */	stw r0, 0(r30)
/* 803E8F14  42 00 FF E8 */	bdnz lbl_803E8EFC
lbl_803E8F18:
/* 803E8F18  38 00 00 09 */	li r0, 9
/* 803E8F1C  38 61 00 08 */	addi r3, r1, 8
/* 803E8F20  38 80 00 00 */	li r4, 0
/* 803E8F24  7C 09 03 A6 */	mtctr r0
lbl_803E8F28:
/* 803E8F28  98 83 00 00 */	stb r4, 0(r3)
/* 803E8F2C  38 63 00 01 */	addi r3, r3, 1
/* 803E8F30  42 00 FF F8 */	bdnz lbl_803E8F28
/* 803E8F34  3C 60 80 64 */	lis r3, lit_921@ha /* 0x806431B0@ha */
/* 803E8F38  3B 61 00 08 */	addi r27, r1, 8
/* 803E8F3C  C3 E3 31 B0 */	lfs f31, lit_921@l(r3)  /* 0x806431B0@l */
/* 803E8F40  3B 80 00 01 */	li r28, 1
/* 803E8F44  48 00 00 48 */	b lbl_803E8F8C
lbl_803E8F48:
/* 803E8F48  4B C7 3D AD */	bl fqrand
/* 803E8F4C  EC 1F 00 72 */	fmuls f0, f31, f1
/* 803E8F50  FC 00 00 1E */	fctiwz f0, f0
/* 803E8F54  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803E8F58  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 803E8F5C  7C 1B 20 AE */	lbzx r0, r27, r4
/* 803E8F60  28 00 00 00 */	cmplwi r0, 0
/* 803E8F64  40 82 00 28 */	bne lbl_803E8F8C
/* 803E8F68  80 1E 00 00 */	lwz r0, 0(r30)
/* 803E8F6C  38 64 29 02 */	addi r3, r4, 0x2902
/* 803E8F70  7F 9B 21 AE */	stbx r28, r27, r4
/* 803E8F74  3B FF FF FF */	addi r31, r31, -1
/* 803E8F78  54 00 08 3C */	slwi r0, r0, 1
/* 803E8F7C  7C 7D 03 2E */	sthx r3, r29, r0
/* 803E8F80  80 7E 00 00 */	lwz r3, 0(r30)
/* 803E8F84  38 03 00 01 */	addi r0, r3, 1
/* 803E8F88  90 1E 00 00 */	stw r0, 0(r30)
lbl_803E8F8C:
/* 803E8F8C  2C 1F 00 00 */	cmpwi r31, 0
/* 803E8F90  41 81 FF B8 */	bgt lbl_803E8F48
/* 803E8F94  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 803E8F98  39 61 00 40 */	addi r11, r1, 0x40
/* 803E8F9C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 803E8FA0  4B CB 1F 79 */	bl func_8009AF18
/* 803E8FA4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803E8FA8  7C 08 03 A6 */	mtlr r0
/* 803E8FAC  38 21 00 50 */	addi r1, r1, 0x50
/* 803E8FB0  4E 80 00 20 */	blr 
