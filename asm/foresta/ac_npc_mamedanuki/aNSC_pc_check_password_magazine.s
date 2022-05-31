lbl_8055AB40:
/* 8055AB40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055AB44  7C 08 02 A6 */	mflr r0
/* 8055AB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055AB4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055AB50  7C 7F 1B 78 */	mr r31, r3
/* 8055AB54  38 60 00 00 */	li r3, 0
/* 8055AB58  88 1F 00 05 */	lbz r0, 5(r31)
/* 8055AB5C  28 00 00 04 */	cmplwi r0, 4
/* 8055AB60  41 81 00 40 */	bgt lbl_8055ABA0
/* 8055AB64  4B B0 21 91 */	bl fqrand
/* 8055AB68  3C 60 80 65 */	lis r3, lit_755@ha /* 0x806496D4@ha */
/* 8055AB6C  88 1F 00 05 */	lbz r0, 5(r31)
/* 8055AB70  38 83 96 D4 */	addi r4, r3, lit_755@l /* 0x806496D4@l */
/* 8055AB74  3C 60 80 6B */	lis r3, hit_rate_magazine@ha /* 0x806A9DBC@ha */
/* 8055AB78  C0 04 00 00 */	lfs f0, 0(r4)
/* 8055AB7C  54 00 10 3A */	slwi r0, r0, 2
/* 8055AB80  38 63 9D BC */	addi r3, r3, hit_rate_magazine@l /* 0x806A9DBC@l */
/* 8055AB84  EC 20 00 72 */	fmuls f1, f0, f1
/* 8055AB88  7C 03 04 2E */	lfsx f0, r3, r0
/* 8055AB8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8055AB90  40 80 00 0C */	bge lbl_8055AB9C
/* 8055AB94  38 60 00 03 */	li r3, 3
/* 8055AB98  48 00 00 08 */	b lbl_8055ABA0
lbl_8055AB9C:
/* 8055AB9C  38 60 00 07 */	li r3, 7
lbl_8055ABA0:
/* 8055ABA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055ABA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055ABA8  7C 08 03 A6 */	mtlr r0
/* 8055ABAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8055ABB0  4E 80 00 20 */	blr 
