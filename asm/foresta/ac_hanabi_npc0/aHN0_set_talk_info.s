lbl_80528E54:
/* 80528E54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80528E58  7C 08 02 A6 */	mflr r0
/* 80528E5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80528E60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80528E64  4B EA 90 9D */	bl mNpc_GetNpcLooks
/* 80528E68  7C 7F 1B 78 */	mr r31, r3
/* 80528E6C  4B B3 3E 89 */	bl fqrand
/* 80528E70  3C 80 80 65 */	lis r4, lit_651@ha /* 0x80649210@ha */
/* 80528E74  3C 60 80 6A */	lis r3, msg_base@ha /* 0x806A1040@ha */
/* 80528E78  C0 04 92 10 */	lfs f0, lit_651@l(r4)  /* 0x80649210@l */
/* 80528E7C  57 E0 10 3A */	slwi r0, r31, 2
/* 80528E80  38 63 10 40 */	addi r3, r3, msg_base@l /* 0x806A1040@l */
/* 80528E84  EC 00 00 72 */	fmuls f0, f0, f1
/* 80528E88  7C 03 00 2E */	lwzx r0, r3, r0
/* 80528E8C  FC 00 00 1E */	fctiwz f0, f0
/* 80528E90  D8 01 00 08 */	stfd f0, 8(r1)
/* 80528E94  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80528E98  7C 60 1A 14 */	add r3, r0, r3
/* 80528E9C  4B E6 F6 79 */	bl mDemo_Set_msg_num
/* 80528EA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80528EA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80528EA8  7C 08 03 A6 */	mtlr r0
/* 80528EAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80528EB0  4E 80 00 20 */	blr 
