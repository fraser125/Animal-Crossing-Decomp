lbl_804A9C00:
/* 804A9C00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A9C04  7C 08 02 A6 */	mflr r0
/* 804A9C08  3C C0 80 69 */	lis r6, aim@ha /* 0x8068EF04@ha */
/* 804A9C0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A9C10  54 80 10 3A */	slwi r0, r4, 2
/* 804A9C14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A9C18  7C 7F 1B 78 */	mr r31, r3
/* 804A9C1C  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 804A9C20  3C 60 80 64 */	lis r3, data_80645E24@ha /* 0x80645E24@ha */
/* 804A9C24  38 A3 5E 24 */	addi r5, r3, data_80645E24@l /* 0x80645E24@l */
/* 804A9C28  38 66 EF 04 */	addi r3, r6, aim@l /* 0x8068EF04@l */
/* 804A9C2C  D0 01 00 08 */	stfs f0, 8(r1)
/* 804A9C30  7C 23 04 2E */	lfsx f1, r3, r0
/* 804A9C34  38 61 00 08 */	addi r3, r1, 8
/* 804A9C38  C0 45 00 00 */	lfs f2, 0(r5)
/* 804A9C3C  4B F1 10 2D */	bl chase_f
/* 804A9C40  C0 01 00 08 */	lfs f0, 8(r1)
/* 804A9C44  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 804A9C48  C0 01 00 08 */	lfs f0, 8(r1)
/* 804A9C4C  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 804A9C50  C0 01 00 08 */	lfs f0, 8(r1)
/* 804A9C54  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804A9C58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A9C5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A9C60  7C 08 03 A6 */	mtlr r0
/* 804A9C64  38 21 00 20 */	addi r1, r1, 0x20
/* 804A9C68  4E 80 00 20 */	blr 
