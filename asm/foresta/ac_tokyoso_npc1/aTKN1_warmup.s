lbl_8058C85C:
/* 8058C85C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058C860  7C 08 02 A6 */	mflr r0
/* 8058C864  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058C868  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8058C86C  7C 9F 23 78 */	mr r31, r4
/* 8058C870  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8058C874  7C 7E 1B 78 */	mr r30, r3
/* 8058C878  4B FF FE 45 */	bl aTKN1_local_redy_check
/* 8058C87C  2C 03 00 00 */	cmpwi r3, 0
/* 8058C880  40 82 00 84 */	bne lbl_8058C904
/* 8058C884  A8 7E 09 A0 */	lha r3, 0x9a0(r30)
/* 8058C888  2C 03 00 00 */	cmpwi r3, 0
/* 8058C88C  40 81 00 10 */	ble lbl_8058C89C
/* 8058C890  38 03 FF FF */	addi r0, r3, -1
/* 8058C894  B0 1E 09 A0 */	sth r0, 0x9a0(r30)
/* 8058C898  48 00 00 6C */	b lbl_8058C904
lbl_8058C89C:
/* 8058C89C  38 00 00 07 */	li r0, 7
/* 8058C8A0  98 1E 09 AA */	stb r0, 0x9aa(r30)
/* 8058C8A4  4B AD 04 51 */	bl fqrand
/* 8058C8A8  3C 60 80 65 */	lis r3, lit_573@ha /* 0x80649BB4@ha */
/* 8058C8AC  3C 80 80 65 */	lis r4, lit_572@ha /* 0x80649BB0@ha */
/* 8058C8B0  38 A3 9B B4 */	addi r5, r3, lit_573@l /* 0x80649BB4@l */
/* 8058C8B4  C0 04 9B B0 */	lfs f0, lit_572@l(r4)  /* 0x80649BB0@l */
/* 8058C8B8  C0 45 00 00 */	lfs f2, 0(r5)
/* 8058C8BC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058C8C0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8058C8C4  EC 22 08 2A */	fadds f1, f2, f1
/* 8058C8C8  3C 83 00 02 */	addis r4, r3, 2
/* 8058C8CC  7F C3 F3 78 */	mr r3, r30
/* 8058C8D0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8058C8D4  FC 00 00 1E */	fctiwz f0, f0
/* 8058C8D8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8058C8DC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8058C8E0  B0 1E 09 A0 */	sth r0, 0x9a0(r30)
/* 8058C8E4  80 84 60 D8 */	lwz r4, 0x60d8(r4)
/* 8058C8E8  81 84 00 20 */	lwz r12, 0x20(r4)
/* 8058C8EC  7D 89 03 A6 */	mtctr r12
/* 8058C8F0  4E 80 04 21 */	bctrl 
/* 8058C8F4  7F C3 F3 78 */	mr r3, r30
/* 8058C8F8  7F E4 FB 78 */	mr r4, r31
/* 8058C8FC  38 A0 00 03 */	li r5, 3
/* 8058C900  48 00 0C 1D */	bl aTKN1_setup_think_proc
lbl_8058C904:
/* 8058C904  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058C908  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8058C90C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8058C910  7C 08 03 A6 */	mtlr r0
/* 8058C914  38 21 00 20 */	addi r1, r1, 0x20
/* 8058C918  4E 80 00 20 */	blr 
