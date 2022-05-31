lbl_8046E13C:
/* 8046E13C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046E140  7C 08 02 A6 */	mflr r0
/* 8046E144  3C 80 80 64 */	lis r4, okera_base_pos@ha /* 0x80644914@ha */
/* 8046E148  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046E14C  84 04 49 14 */	lwzu r0, okera_base_pos@l(r4)  /* 0x80644914@l */
/* 8046E150  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8046E154  7C 7F 1B 78 */	mr r31, r3
/* 8046E158  80 64 00 04 */	lwz r3, 4(r4)
/* 8046E15C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8046E160  80 04 00 08 */	lwz r0, 8(r4)
/* 8046E164  90 7F 00 20 */	stw r3, 0x20(r31)
/* 8046E168  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8046E16C  4B BE EB 89 */	bl fqrand
/* 8046E170  3C 80 80 64 */	lis r4, lit_1585@ha /* 0x80644760@ha */
/* 8046E174  3C 60 80 47 */	lis r3, okera_dig_wait_process@ha /* 0x8046E1B0@ha */
/* 8046E178  C0 04 47 60 */	lfs f0, lit_1585@l(r4)  /* 0x80644760@l */
/* 8046E17C  38 03 E1 B0 */	addi r0, r3, okera_dig_wait_process@l /* 0x8046E1B0@l */
/* 8046E180  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046E184  FC 00 00 1E */	fctiwz f0, f0
/* 8046E188  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046E18C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8046E190  38 63 01 2C */	addi r3, r3, 0x12c
/* 8046E194  B0 7F 00 6E */	sth r3, 0x6e(r31)
/* 8046E198  90 1F 00 04 */	stw r0, 4(r31)
/* 8046E19C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046E1A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046E1A4  7C 08 03 A6 */	mtlr r0
/* 8046E1A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8046E1AC  4E 80 00 20 */	blr 
