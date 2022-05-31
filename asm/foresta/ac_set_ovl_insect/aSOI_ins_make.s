lbl_8049C490:
/* 8049C490  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049C494  7C 08 02 A6 */	mflr r0
/* 8049C498  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049C49C  39 61 00 30 */	addi r11, r1, 0x30
/* 8049C4A0  4B BF EA 2D */	bl func_8009AECC
/* 8049C4A4  7C 7C 1B 78 */	mr r28, r3
/* 8049C4A8  7C 9D 23 78 */	mr r29, r4
/* 8049C4AC  88 03 00 03 */	lbz r0, 3(r3)
/* 8049C4B0  7C BE 2B 78 */	mr r30, r5
/* 8049C4B4  3B E0 00 00 */	li r31, 0
/* 8049C4B8  28 00 00 01 */	cmplwi r0, 1
/* 8049C4BC  40 82 00 B8 */	bne lbl_8049C574
/* 8049C4C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049C4C4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049C4C8  3C 63 00 02 */	addis r3, r3, 2
/* 8049C4CC  80 63 60 88 */	lwz r3, 0x6088(r3)
/* 8049C4D0  80 03 00 00 */	lwz r0, 0(r3)
/* 8049C4D4  28 00 00 00 */	cmplwi r0, 0
/* 8049C4D8  41 82 00 9C */	beq lbl_8049C574
/* 8049C4DC  80 03 00 04 */	lwz r0, 4(r3)
/* 8049C4E0  28 00 00 00 */	cmplwi r0, 0
/* 8049C4E4  41 82 00 90 */	beq lbl_8049C574
/* 8049C4E8  88 9C 00 00 */	lbz r4, 0(r28)
/* 8049C4EC  3C 60 80 69 */	lis r3, data_8068CCE8@ha /* 0x8068CCE8@ha */
/* 8049C4F0  38 03 CC E8 */	addi r0, r3, data_8068CCE8@l /* 0x8068CCE8@l */
/* 8049C4F4  54 83 08 3C */	slwi r3, r4, 1
/* 8049C4F8  7F 60 1A 14 */	add r27, r0, r3
/* 8049C4FC  4B BC 07 F9 */	bl fqrand
/* 8049C500  88 9B 00 01 */	lbz r4, 1(r27)
/* 8049C504  3C 00 43 30 */	lis r0, 0x4330
/* 8049C508  90 01 00 08 */	stw r0, 8(r1)
/* 8049C50C  3C 60 80 64 */	lis r3, lit_575@ha /* 0x80644D24@ha */
/* 8049C510  C8 43 4D 24 */	lfd f2, lit_575@l(r3)  /* 0x80644D24@l */
/* 8049C514  90 81 00 0C */	stw r4, 0xc(r1)
/* 8049C518  88 1B 00 00 */	lbz r0, 0(r27)
/* 8049C51C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8049C520  EC 00 10 28 */	fsubs f0, f0, f2
/* 8049C524  EC 00 00 72 */	fmuls f0, f0, f1
/* 8049C528  FC 00 00 1E */	fctiwz f0, f0
/* 8049C52C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8049C530  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8049C534  7F 60 1A 14 */	add r27, r0, r3
/* 8049C538  48 00 00 34 */	b lbl_8049C56C
lbl_8049C53C:
/* 8049C53C  7F 83 E3 78 */	mr r3, r28
/* 8049C540  7F A4 EB 78 */	mr r4, r29
/* 8049C544  7F C5 F3 78 */	mr r5, r30
/* 8049C548  4B FF FE 21 */	bl aSOI_ins_make_sub
/* 8049C54C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8049C550  41 82 00 24 */	beq lbl_8049C574
/* 8049C554  37 7B FF FF */	addic. r27, r27, -1
/* 8049C558  40 81 00 14 */	ble lbl_8049C56C
/* 8049C55C  88 9C 00 00 */	lbz r4, 0(r28)
/* 8049C560  7F 83 E3 78 */	mr r3, r28
/* 8049C564  7F A5 EB 78 */	mr r5, r29
/* 8049C568  4B FF F6 49 */	bl aSOI_ins_set_insect_data
lbl_8049C56C:
/* 8049C56C  2C 1B 00 00 */	cmpwi r27, 0
/* 8049C570  40 82 FF CC */	bne lbl_8049C53C
lbl_8049C574:
/* 8049C574  7F E3 FB 78 */	mr r3, r31
/* 8049C578  39 61 00 30 */	addi r11, r1, 0x30
/* 8049C57C  4B BF E9 9D */	bl func_8009AF18
/* 8049C580  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049C584  7C 08 03 A6 */	mtlr r0
/* 8049C588  38 21 00 30 */	addi r1, r1, 0x30
/* 8049C58C  4E 80 00 20 */	blr 
