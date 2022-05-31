lbl_803DEBE0:
/* 803DEBE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DEBE4  7C 08 02 A6 */	mflr r0
/* 803DEBE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DEBEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803DEBF0  3B E0 00 04 */	li r31, 4
/* 803DEBF4  4B C7 E1 01 */	bl fqrand
/* 803DEBF8  3C 80 80 64 */	lis r4, lit_467@ha /* 0x806430E0@ha */
/* 803DEBFC  3C 60 80 66 */	lis r3, prob_table_490@ha /* 0x8065BDDC@ha */
/* 803DEC00  C0 04 30 E0 */	lfs f0, lit_467@l(r4)  /* 0x806430E0@l */
/* 803DEC04  38 83 BD DC */	addi r4, r3, prob_table_490@l /* 0x8065BDDC@l */
/* 803DEC08  38 00 00 04 */	li r0, 4
/* 803DEC0C  38 C0 00 00 */	li r6, 0
/* 803DEC10  EC 00 00 72 */	fmuls f0, f0, f1
/* 803DEC14  38 60 00 00 */	li r3, 0
/* 803DEC18  FC 00 00 1E */	fctiwz f0, f0
/* 803DEC1C  D8 01 00 08 */	stfd f0, 8(r1)
/* 803DEC20  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803DEC24  7C 09 03 A6 */	mtctr r0
lbl_803DEC28:
/* 803DEC28  7C 04 18 2E */	lwzx r0, r4, r3
/* 803DEC2C  7C 05 00 00 */	cmpw r5, r0
/* 803DEC30  41 81 00 0C */	bgt lbl_803DEC3C
/* 803DEC34  7C DF 33 78 */	mr r31, r6
/* 803DEC38  48 00 00 10 */	b lbl_803DEC48
lbl_803DEC3C:
/* 803DEC3C  38 C6 00 01 */	addi r6, r6, 1
/* 803DEC40  38 63 00 04 */	addi r3, r3, 4
/* 803DEC44  42 00 FF E4 */	bdnz lbl_803DEC28
lbl_803DEC48:
/* 803DEC48  3C 60 80 66 */	lis r3, force_proc@ha /* 0x8065BDCC@ha */
/* 803DEC4C  57 E0 10 3A */	slwi r0, r31, 2
/* 803DEC50  38 63 BD CC */	addi r3, r3, force_proc@l /* 0x8065BDCC@l */
/* 803DEC54  7D 83 00 2E */	lwzx r12, r3, r0
/* 803DEC58  7D 89 03 A6 */	mtctr r12
/* 803DEC5C  4E 80 04 21 */	bctrl 
/* 803DEC60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DEC64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803DEC68  7C 08 03 A6 */	mtlr r0
/* 803DEC6C  38 21 00 20 */	addi r1, r1, 0x20
/* 803DEC70  4E 80 00 20 */	blr 
