lbl_80531A20:
/* 80531A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80531A24  7C 08 02 A6 */	mflr r0
/* 80531A28  3C 80 80 6A */	lis r4, act_proc_2346@ha /* 0x806A24E0@ha */
/* 80531A2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80531A30  38 84 24 E0 */	addi r4, r4, act_proc_2346@l /* 0x806A24E0@l */
/* 80531A34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80531A38  7C 7F 1B 78 */	mr r31, r3
/* 80531A3C  88 03 07 F7 */	lbz r0, 0x7f7(r3)
/* 80531A40  54 00 10 3A */	slwi r0, r0, 2
/* 80531A44  7D 84 00 2E */	lwzx r12, r4, r0
/* 80531A48  7D 89 03 A6 */	mtctr r12
/* 80531A4C  4E 80 04 21 */	bctrl 
/* 80531A50  2C 03 00 00 */	cmpwi r3, 0
/* 80531A54  40 82 00 0C */	bne lbl_80531A60
/* 80531A58  38 00 00 FF */	li r0, 0xff
/* 80531A5C  98 1F 07 F6 */	stb r0, 0x7f6(r31)
lbl_80531A60:
/* 80531A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80531A64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80531A68  7C 08 03 A6 */	mtlr r0
/* 80531A6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80531A70  4E 80 00 20 */	blr 
