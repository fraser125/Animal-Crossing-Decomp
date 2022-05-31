lbl_803D2058:
/* 803D2058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D205C  7C 08 02 A6 */	mflr r0
/* 803D2060  28 03 00 00 */	cmplwi r3, 0
/* 803D2064  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D2068  38 00 00 02 */	li r0, 2
/* 803D206C  41 82 00 5C */	beq lbl_803D20C8
/* 803D2070  88 03 00 02 */	lbz r0, 2(r3)
/* 803D2074  28 00 00 04 */	cmplwi r0, 4
/* 803D2078  40 82 00 44 */	bne lbl_803D20BC
/* 803D207C  80 83 01 7C */	lwz r4, 0x17c(r3)
/* 803D2080  28 04 00 00 */	cmplwi r4, 0
/* 803D2084  41 82 00 28 */	beq lbl_803D20AC
/* 803D2088  88 04 00 0D */	lbz r0, 0xd(r4)
/* 803D208C  2C 00 00 06 */	cmpwi r0, 6
/* 803D2090  41 80 00 08 */	blt lbl_803D2098
/* 803D2094  38 00 00 02 */	li r0, 2
lbl_803D2098:
/* 803D2098  3C 60 80 66 */	lis r3, spec_table@ha /* 0x8065B310@ha */
/* 803D209C  54 00 10 3A */	slwi r0, r0, 2
/* 803D20A0  38 63 B3 10 */	addi r3, r3, spec_table@l /* 0x8065B310@l */
/* 803D20A4  7C 03 00 2E */	lwzx r0, r3, r0
/* 803D20A8  48 00 00 20 */	b lbl_803D20C8
lbl_803D20AC:
/* 803D20AC  A0 63 00 06 */	lhz r3, 6(r3)
/* 803D20B0  4B FF FF 71 */	bl mNpc_GetNpcSoundSpecNotAnimal
/* 803D20B4  7C 60 1B 78 */	mr r0, r3
/* 803D20B8  48 00 00 10 */	b lbl_803D20C8
lbl_803D20BC:
/* 803D20BC  A0 63 00 06 */	lhz r3, 6(r3)
/* 803D20C0  4B FF FF 61 */	bl mNpc_GetNpcSoundSpecNotAnimal
/* 803D20C4  7C 60 1B 78 */	mr r0, r3
lbl_803D20C8:
/* 803D20C8  7C 03 03 78 */	mr r3, r0
/* 803D20CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D20D0  7C 08 03 A6 */	mtlr r0
/* 803D20D4  38 21 00 10 */	addi r1, r1, 0x10
/* 803D20D8  4E 80 00 20 */	blr 
