lbl_803EAE80:
/* 803EAE80  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EAE84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EAE88  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803EAE8C  38 60 00 00 */	li r3, 0
/* 803EAE90  3C 84 00 02 */	addis r4, r4, 2
/* 803EAE94  80 04 61 24 */	lwz r0, 0x6124(r4)
/* 803EAE98  80 84 61 20 */	lwz r4, 0x6120(r4)
/* 803EAE9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 803EAEA0  88 01 00 0D */	lbz r0, 0xd(r1)
/* 803EAEA4  90 81 00 08 */	stw r4, 8(r1)
/* 803EAEA8  28 00 00 0A */	cmplwi r0, 0xa
/* 803EAEAC  88 01 00 0B */	lbz r0, 0xb(r1)
/* 803EAEB0  40 82 00 18 */	bne lbl_803EAEC8
/* 803EAEB4  28 00 00 10 */	cmplwi r0, 0x10
/* 803EAEB8  41 80 00 10 */	blt lbl_803EAEC8
/* 803EAEBC  28 00 00 1E */	cmplwi r0, 0x1e
/* 803EAEC0  41 81 00 08 */	bgt lbl_803EAEC8
/* 803EAEC4  38 60 00 01 */	li r3, 1
lbl_803EAEC8:
/* 803EAEC8  38 21 00 10 */	addi r1, r1, 0x10
/* 803EAECC  4E 80 00 20 */	blr 
