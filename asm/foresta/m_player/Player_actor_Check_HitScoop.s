lbl_804DAAB0:
/* 804DAAB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DAAB4  7C 08 02 A6 */	mflr r0
/* 804DAAB8  3C C0 80 64 */	lis r6, lit_604@ha /* 0x80646568@ha */
/* 804DAABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAAC0  C0 26 65 68 */	lfs f1, lit_604@l(r6)  /* 0x80646568@l */
/* 804DAAC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DAAC8  3B E0 00 00 */	li r31, 0
/* 804DAACC  93 C1 00 08 */	stw r30, 8(r1)
/* 804DAAD0  7C 9E 23 78 */	mr r30, r4
/* 804DAAD4  80 A3 0C F8 */	lwz r5, 0xcf8(r3)
/* 804DAAD8  38 05 FF C6 */	addi r0, r5, -58
/* 804DAADC  28 00 00 06 */	cmplwi r0, 6
/* 804DAAE0  41 81 00 68 */	bgt lbl_804DAB48
/* 804DAAE4  3C 80 80 6A */	lis r4, lit_3084@ha /* 0x8069E614@ha */
/* 804DAAE8  54 00 10 3A */	slwi r0, r0, 2
/* 804DAAEC  38 84 E6 14 */	addi r4, r4, lit_3084@l /* 0x8069E614@l */
/* 804DAAF0  7C 04 00 2E */	lwzx r0, r4, r0
/* 804DAAF4  7C 09 03 A6 */	mtctr r0
/* 804DAAF8  4E 80 04 20 */	bctr 
lbl_804DAAFC:
/* 804DAAFC  3C 80 80 64 */	lis r4, lit_2591@ha /* 0x80646C44@ha */
/* 804DAB00  3B E3 0D 18 */	addi r31, r3, 0xd18
/* 804DAB04  C0 24 6C 44 */	lfs f1, lit_2591@l(r4)  /* 0x80646C44@l */
/* 804DAB08  48 00 00 40 */	b lbl_804DAB48
lbl_804DAB0C:
/* 804DAB0C  3C 80 80 64 */	lis r4, lit_2591@ha /* 0x80646C44@ha */
/* 804DAB10  3B E3 0D 18 */	addi r31, r3, 0xd18
/* 804DAB14  C0 24 6C 44 */	lfs f1, lit_2591@l(r4)  /* 0x80646C44@l */
/* 804DAB18  48 00 00 30 */	b lbl_804DAB48
lbl_804DAB1C:
/* 804DAB1C  3C 80 80 64 */	lis r4, lit_2591@ha /* 0x80646C44@ha */
/* 804DAB20  3B E3 0D 18 */	addi r31, r3, 0xd18
/* 804DAB24  C0 24 6C 44 */	lfs f1, lit_2591@l(r4)  /* 0x80646C44@l */
/* 804DAB28  48 00 00 20 */	b lbl_804DAB48
lbl_804DAB2C:
/* 804DAB2C  3C 80 80 64 */	lis r4, lit_1165@ha /* 0x80646A24@ha */
/* 804DAB30  3B E3 0D 18 */	addi r31, r3, 0xd18
/* 804DAB34  C0 24 6A 24 */	lfs f1, lit_1165@l(r4)  /* 0x80646A24@l */
/* 804DAB38  48 00 00 10 */	b lbl_804DAB48
lbl_804DAB3C:
/* 804DAB3C  3C 80 80 64 */	lis r4, lit_3083@ha /* 0x80646E58@ha */
/* 804DAB40  3B E3 0D 18 */	addi r31, r3, 0xd18
/* 804DAB44  C0 24 6E 58 */	lfs f1, lit_3083@l(r4)  /* 0x80646E58@l */
lbl_804DAB48:
/* 804DAB48  28 1F 00 00 */	cmplwi r31, 0
/* 804DAB4C  41 82 00 3C */	beq lbl_804DAB88
/* 804DAB50  38 63 01 74 */	addi r3, r3, 0x174
/* 804DAB54  4B FF CA AD */	bl Player_actor_Check_AnimationFrame
/* 804DAB58  2C 03 00 00 */	cmpwi r3, 0
/* 804DAB5C  41 82 00 2C */	beq lbl_804DAB88
/* 804DAB60  28 1E 00 00 */	cmplwi r30, 0
/* 804DAB64  41 82 00 1C */	beq lbl_804DAB80
/* 804DAB68  80 7F 00 00 */	lwz r3, 0(r31)
/* 804DAB6C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804DAB70  90 7E 00 00 */	stw r3, 0(r30)
/* 804DAB74  90 1E 00 04 */	stw r0, 4(r30)
/* 804DAB78  80 1F 00 08 */	lwz r0, 8(r31)
/* 804DAB7C  90 1E 00 08 */	stw r0, 8(r30)
lbl_804DAB80:
/* 804DAB80  38 60 00 01 */	li r3, 1
/* 804DAB84  48 00 00 08 */	b lbl_804DAB8C
lbl_804DAB88:
/* 804DAB88  38 60 00 00 */	li r3, 0
lbl_804DAB8C:
/* 804DAB8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DAB90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DAB94  83 C1 00 08 */	lwz r30, 8(r1)
/* 804DAB98  7C 08 03 A6 */	mtlr r0
/* 804DAB9C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DABA0  4E 80 00 20 */	blr 
