lbl_804A6F48:
/* 804A6F48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A6F4C  7C 08 02 A6 */	mflr r0
/* 804A6F50  3C 80 80 66 */	lis r4, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804A6F54  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A6F58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A6F5C  7C 7F 1B 78 */	mr r31, r3
/* 804A6F60  38 64 F0 5C */	addi r3, r4, ZeroSVec@l /* 0x8065F05C@l */
/* 804A6F64  80 03 00 00 */	lwz r0, 0(r3)
/* 804A6F68  90 1F 01 EC */	stw r0, 0x1ec(r31)
/* 804A6F6C  A0 03 00 04 */	lhz r0, 4(r3)
/* 804A6F70  B0 1F 01 F0 */	sth r0, 0x1f0(r31)
/* 804A6F74  4B BB 5D 81 */	bl fqrand
/* 804A6F78  3C 60 80 64 */	lis r3, lit_678@ha /* 0x80645CD0@ha */
/* 804A6F7C  80 1F 01 E0 */	lwz r0, 0x1e0(r31)
/* 804A6F80  38 83 5C D0 */	addi r4, r3, lit_678@l /* 0x80645CD0@l */
/* 804A6F84  3C 60 80 69 */	lis r3, base_msg_no@ha /* 0x8068E8B0@ha */
/* 804A6F88  C0 04 00 00 */	lfs f0, 0(r4)
/* 804A6F8C  54 00 10 3A */	slwi r0, r0, 2
/* 804A6F90  38 63 E8 B0 */	addi r3, r3, base_msg_no@l /* 0x8068E8B0@l */
/* 804A6F94  EC 00 00 72 */	fmuls f0, f0, f1
/* 804A6F98  7C 03 00 2E */	lwzx r0, r3, r0
/* 804A6F9C  FC 00 00 1E */	fctiwz f0, f0
/* 804A6FA0  D8 01 00 08 */	stfd f0, 8(r1)
/* 804A6FA4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804A6FA8  7C 60 1A 14 */	add r3, r0, r3
/* 804A6FAC  4B EF 15 69 */	bl mDemo_Set_msg_num
/* 804A6FB0  38 60 00 01 */	li r3, 1
/* 804A6FB4  4B EF 18 95 */	bl mDemo_Set_talk_turn
/* 804A6FB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A6FBC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A6FC0  7C 08 03 A6 */	mtlr r0
/* 804A6FC4  38 21 00 20 */	addi r1, r1, 0x20
/* 804A6FC8  4E 80 00 20 */	blr 
