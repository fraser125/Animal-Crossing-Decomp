lbl_80635060:
/* 80635060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80635064  7C 08 02 A6 */	mflr r0
/* 80635068  38 80 00 20 */	li r4, 0x20
/* 8063506C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80635070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80635074  7C 7F 1B 78 */	mr r31, r3
/* 80635078  38 60 00 20 */	li r3, 0x20
/* 8063507C  4B D8 73 AD */	bl func_803BC428
/* 80635080  90 7F 08 50 */	stw r3, 0x850(r31)
/* 80635084  3C 60 80 6E */	lis r3, int_nog_yamishop_off_pal@ha /* 0x806D88A0@ha */
/* 80635088  3C A0 80 6E */	lis r5, int_nog_yamishop_on_pal@ha /* 0x806D88C0@ha */
/* 8063508C  7F E6 FB 78 */	mr r6, r31
/* 80635090  38 83 88 A0 */	addi r4, r3, int_nog_yamishop_off_pal@l /* 0x806D88A0@l */
/* 80635094  80 7F 08 50 */	lwz r3, 0x850(r31)
/* 80635098  38 A5 88 C0 */	addi r5, r5, int_nog_yamishop_on_pal@l /* 0x806D88C0@l */
/* 8063509C  4B FF 9A 21 */	bl fFTR_MorphHousepaletteCt
/* 806350A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806350A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806350A8  7C 08 03 A6 */	mtlr r0
/* 806350AC  38 21 00 10 */	addi r1, r1, 0x10
/* 806350B0  4E 80 00 20 */	blr 
