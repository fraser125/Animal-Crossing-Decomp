lbl_803FCC64:
/* 803FCC64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FCC68  7C 08 02 A6 */	mflr r0
/* 803FCC6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FCC70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FCC74  7C 7F 1B 78 */	mr r31, r3
/* 803FCC78  4B C6 00 7D */	bl fqrand
/* 803FCC7C  3C 60 80 64 */	lis r3, lit_2629@ha /* 0x80643458@ha */
/* 803FCC80  C0 03 34 58 */	lfs f0, lit_2629@l(r3)  /* 0x80643458@l */
/* 803FCC84  EC 20 00 72 */	fmuls f1, f0, f1
/* 803FCC88  4B C9 E1 1D */	bl func_8009ADA4
/* 803FCC8C  90 7F 10 F4 */	stw r3, 0x10f4(r31)
/* 803FCC90  80 7F 10 F4 */	lwz r3, 0x10f4(r31)
/* 803FCC94  38 03 00 01 */	addi r0, r3, 1
/* 803FCC98  90 1F 10 F4 */	stw r0, 0x10f4(r31)
/* 803FCC9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FCCA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FCCA4  7C 08 03 A6 */	mtlr r0
/* 803FCCA8  38 21 00 10 */	addi r1, r1, 0x10
/* 803FCCAC  4E 80 00 20 */	blr 
