lbl_80628DF8:
/* 80628DF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80628DFC  7C 08 02 A6 */	mflr r0
/* 80628E00  38 80 00 0A */	li r4, 0xa
/* 80628E04  38 A0 00 0F */	li r5, 0xf
/* 80628E08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80628E0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80628E10  7C 7F 1B 78 */	mr r31, r3
/* 80628E14  4B A3 23 FD */	bl gfxprint_locate8x8
/* 80628E18  7F E3 FB 78 */	mr r3, r31
/* 80628E1C  38 80 00 FF */	li r4, 0xff
/* 80628E20  38 A0 00 FF */	li r5, 0xff
/* 80628E24  38 C0 00 FF */	li r6, 0xff
/* 80628E28  38 E0 00 FF */	li r7, 0xff
/* 80628E2C  4B A3 23 75 */	bl gfxprint_color
/* 80628E30  4B A3 3E C5 */	bl fqrand
/* 80628E34  3C 80 80 65 */	lis r4, data_8064D0C4@ha /* 0x8064D0C4@ha */
/* 80628E38  3C 60 80 6D */	lis r3, msgs@ha /* 0x806D4338@ha */
/* 80628E3C  38 A4 D0 C4 */	addi r5, r4, data_8064D0C4@l /* 0x8064D0C4@l */
/* 80628E40  C0 05 00 00 */	lfs f0, 0(r5)
/* 80628E44  38 A3 43 38 */	addi r5, r3, msgs@l /* 0x806D4338@l */
/* 80628E48  3C 80 80 6D */	lis r4, lit_904@ha /* 0x806D4368@ha */
/* 80628E4C  7F E3 FB 78 */	mr r3, r31
/* 80628E50  EC 00 00 72 */	fmuls f0, f0, f1
/* 80628E54  38 84 43 68 */	addi r4, r4, lit_904@l /* 0x806D4368@l */
/* 80628E58  FC 00 00 1E */	fctiwz f0, f0
/* 80628E5C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80628E60  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80628E64  54 00 10 3A */	slwi r0, r0, 2
/* 80628E68  7C A5 00 2E */	lwzx r5, r5, r0
/* 80628E6C  4C C6 31 82 */	crclr 6
/* 80628E70  4B A3 2A AD */	bl gfxprint_printf
/* 80628E74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80628E78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80628E7C  7C 08 03 A6 */	mtlr r0
/* 80628E80  38 21 00 20 */	addi r1, r1, 0x20
/* 80628E84  4E 80 00 20 */	blr 
