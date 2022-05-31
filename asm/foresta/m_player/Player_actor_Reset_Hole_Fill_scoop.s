lbl_804F7E40:
/* 804F7E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F7E44  7C 08 02 A6 */	mflr r0
/* 804F7E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F7E4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F7E50  7C 7F 1B 78 */	mr r31, r3
/* 804F7E54  3C 60 80 64 */	lis r3, lit_1077@ha /* 0x80646A1C@ha */
/* 804F7E58  80 1F 0D B4 */	lwz r0, 0xdb4(r31)
/* 804F7E5C  38 83 6A 1C */	addi r4, r3, lit_1077@l /* 0x80646A1C@l */
/* 804F7E60  C0 24 00 00 */	lfs f1, 0(r4)
/* 804F7E64  38 7F 01 74 */	addi r3, r31, 0x174
/* 804F7E68  2C 00 00 59 */	cmpwi r0, 0x59
/* 804F7E6C  40 82 00 10 */	bne lbl_804F7E7C
/* 804F7E70  3C 80 80 65 */	lis r4, lit_8275@ha /* 0x8064843C@ha */
/* 804F7E74  C0 04 84 3C */	lfs f0, lit_8275@l(r4)  /* 0x8064843C@l */
/* 804F7E78  48 00 00 0C */	b lbl_804F7E84
lbl_804F7E7C:
/* 804F7E7C  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F7E80  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
lbl_804F7E84:
/* 804F7E84  EC 21 00 2A */	fadds f1, f1, f0
/* 804F7E88  4B FD F7 79 */	bl Player_actor_Check_AnimationFrame
/* 804F7E8C  2C 03 00 00 */	cmpwi r3, 0
/* 804F7E90  41 82 00 34 */	beq lbl_804F7EC4
/* 804F7E94  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804F7E98  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804F7E9C  3C 63 00 02 */	addis r3, r3, 2
/* 804F7EA0  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804F7EA4  28 03 00 00 */	cmplwi r3, 0
/* 804F7EA8  41 82 00 1C */	beq lbl_804F7EC4
/* 804F7EAC  81 83 00 14 */	lwz r12, 0x14(r3)
/* 804F7EB0  38 9F 0D 18 */	addi r4, r31, 0xd18
/* 804F7EB4  38 60 00 00 */	li r3, 0
/* 804F7EB8  38 A0 00 2E */	li r5, 0x2e
/* 804F7EBC  7D 89 03 A6 */	mtctr r12
/* 804F7EC0  4E 80 04 21 */	bctrl 
lbl_804F7EC4:
/* 804F7EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F7EC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F7ECC  7C 08 03 A6 */	mtlr r0
/* 804F7ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 804F7ED4  4E 80 00 20 */	blr 
